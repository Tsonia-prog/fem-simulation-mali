
-- ============================================
-- BUSINESS ANALYSIS
-- Engineering Simulation Data Analysis
-- Database: PostgreSQL
-- ============================================

-- ============================================
-- 1. PROJECT AND BUDGET ANALYSIS
-- ============================================

-- Question 1: Which projects have the highest budgets, and what percentage of the total budget does each project represent?

SELECT 
    projektname,
    budget_eur,
    ROUND (budget_eur * 100.0 / SUM(budget_eur) OVER(), 2) AS budget_pourcentage
FROM projekte
ORDER BY budget_eur DESC;

WITH top_5 AS ( SELECT
    projektname,
     budget_eur
FROM projekte
ORDER BY budget_eur DESC
LIMIT 5 )

SELECT
    SUM(budget_eur) AS top_5_budget,
    ROUND( SUM(budget_eur) * 100.0 /
        (SELECT SUM(budget_eur) FROM projekte), 2) AS top_5_percentage
FROM top_5;


-- Question 2: How is the total project budget distributed across different locations?

SELECT
    standort AS location,
    SUM(budget_eur) AS total_budget_eur,
    ROUND(
        SUM(budget_eur) * 100.0 /
        (SELECT SUM(budget_eur) FROM projekte),
        2
    ) AS budget_percentage
FROM projekte
GROUP BY standort
ORDER BY total_budget_eur DESC;


-- Question 3: Which customers have the highest total project budgets, and how many projects are assigned to each customer?

SELECT
    kunde AS customer,
    SUM(budget_eur) AS total_budget_eur,
    COUNT(projekt_id) AS number_of_projects
FROM projekte
GROUP BY kunde
ORDER BY total_budget_eur DESC;

**Question 4:** Which projects have the highest budget per component?

SELECT
    p.projektname AS project,
    SUM(p.budget_eur) AS total_budget_eur,
    COUNT(b.bauteil_id) AS number_of_components,
    ROUND(
        SUM(p.budget_eur) / COUNT(b.bauteil_id),
        2
    ) AS budget_per_component_eur
FROM projekte p
JOIN bauteile b
    ON p.projekt_id = b.projekt_id
GROUP BY p.projekt_id, p.projektname
ORDER BY budget_per_component_eur DESC;


-- Question 5: How does the average project budget evolve over time?

SELECT
    EXTRACT(YEAR FROM startdatum) AS project_year,
    ROUND(AVG(budget_eur), 2) AS average_budget_eur,
    COUNT(projekt_id) AS number_of_projects
FROM projekte
GROUP BY EXTRACT(YEAR FROM startdatum)
ORDER BY project_year;

-- **Question 6:** Which materials are used most frequently, and what is the total mass associated with each material?

SELECT
    material,
    COUNT(bauteil_id) AS number_of_components,
    SUM(masse_kg) AS total_mass_kg
FROM bauteile
GROUP BY material
ORDER BY number_of_components DESC;

--Question 7:  Which component has the highest safety factor and which project does it belong to?

SELECT
    b.bauteilname AS component,
    b.material,
    b.sicherheitsfaktor AS safety_factor,
    p.projektname AS project
FROM bauteile b
JOIN projekte p
    ON b.projekt_id = p.projekt_id
ORDER BY b.sicherheitsfaktor DESC
LIMIT 1;

-- Question 8: Which projects contain the heaviest components?


SELECT
    p.projektname AS project,
    b.bauteilname AS component,
    b.material,
    b.masse_kg AS mass_kg
FROM projekte p
JOIN bauteile b
    ON p.projekt_id = b.projekt_id
ORDER BY b.masse_kg DESC
LIMIT 5;

-- Question 9: : Which components are still under review, and which projects and customers are associated with them?


SELECT
    b.bauteilname AS component,
    b.material,
    b.status,
    p.projektname AS project,
    p.kunde AS customer
FROM bauteile b
JOIN projekte p
    ON b.projekt_id = p.projekt_id
WHERE b.status = 'In Prüfung'
ORDER BY p.projektname;

-- Question 10: How do average safety factors differ between the materials used?

SELECT
    material,
    ROUND(AVG(sicherheitsfaktor)::numeric, 2) AS average_safety_factor,
    COUNT(*) AS component_count
FROM bauteile
GROUP BY material
ORDER BY average_safety_factor DESC;

-- Question 11: Which solver is used most frequently, and how do average computation times differ between solvers?

SELECT
    solver,
    COUNT(*) AS  number_of_simulations,
    ROUND(AVG(rechenzeit_min), 2) AS average_computation_time_min
FROM simulationen
GROUP BY solver
ORDER BY average_computation_time_min DESC;

-- Question 12:Which simulations require the longest computation times, and which components are involved?

SELECT
    s.simulation_id,
    s.simulationstyp,
    s.solver,
    s.rechenzeit_min,
    b.bauteilname,
    b.material
FROM simulationen s
JOIN bauteile b
    ON s.bauteil_id = b.bauteil_id
ORDER BY s.rechenzeit_min DESC
LIMIT 5;

-- Question 13: Is there a relationship between the number of mesh elements and computation time?

SELECT
    s.simulation_id ,
    s.simulationstyp,
    s.solver,
    s.netzelemente AS mesh_elements,
    s.rechenzeit_min AS computation_time_min,
    c.korrelation AS correlation_coefficient
FROM simulationen s
CROSS JOIN (
    SELECT ROUND(
        CORR(netzelemente, rechenzeit_min)::numeric,
        3
    ) AS korrelation
    FROM simulationen
) c
ORDER BY s.netzelemente DESC;

-- Question 14: Which simulation types produce the highest average stress values?

SELECT
    s.simulationstyp,
    ROUND(AVG(e.maximale_spannung_mpa), 2) AS durchschnittliche_spannung
FROM simulationen s
JOIN ergebnisse e
    ON s.simulation_id = e.simulation_id
GROUP BY s.simulationstyp
ORDER BY durchschnittliche_spannung DESC;

-- Question 15: Which projects require the highest level of technical review based on their simulation results?

-- =====================================================
-- Question 15:
-- Which projects require the highest level of technical
-- review based on their simulation results?
-- =====================================================

-- Identify projects with the lowest minimum safety
-- factors and highest maximum stress values.

SELECT
    p.projektname AS project,
    b.bauteilname AS component,
    b.material,
    e.minimale_sicherheit AS minimum_safety_factor,
    e.maximale_spannung_mpa AS maximum_stress_mpa,
    e.bewertung AS assessment
FROM projekte p
JOIN bauteile b
    ON p.projekt_id = b.projekt_id
JOIN simulationen s
    ON b.bauteil_id = s.bauteil_id
JOIN ergebnisse e
    ON s.simulation_id = e.simulation_id
ORDER BY
    e.minimale_sicherheit ASC,
    e.maximale_spannung_mpa DESC
LIMIT 5;