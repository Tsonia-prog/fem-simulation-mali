# FEM Simulation Analysis – Mali

## 1. Project Overview

This project is a SQL-based analysis of fictional Finite Element Method (FEM) simulation data inspired by engineering projects in Mali.

The objective is to explore project budgets, structural components, materials, simulation performance, and engineering results using PostgreSQL.

The dataset represents a fictional engineering company managing multiple infrastructure and industrial projects across different locations in Mali.

The project demonstrates how SQL can be used to organize, query, analyze, and interpret engineering-related data to support business and technical decision-making.

**Important:** All data is fictional and created for educational and portfolio purposes. The simulation results are not validated engineering calculations and must not be used for real-world structural design or safety decisions.

---

## 2. Project Objectives

The main objectives are to:

- Analyze project budgets and their distribution across locations and customers.
- Compare material usage and component masses.
- Identify components with different safety factor values.
- Analyze simulation solver usage and computation times.
- Explore the relationship between mesh size and computation time.
- Compare simulation results across different simulation types.
- Identify projects that may require further technical review.
- Demonstrate practical SQL skills through business-oriented questions.

---

## 3. Database Structure

The database is named `fem_simulation_mali` and contains four relational tables.

### Database Schema

| Table | Description |
|---|---|
| `projekte` | Stores project information, customers, locations, dates, and budgets. |
| `bauteile` | Stores structural component information, materials, masses, safety factors, and statuses. |
| `simulationen` | Stores simulation types, loads, temperatures, mesh sizes, computation times, and solvers. |
| `ergebnisse` | Stores simulation results, including maximum stress, displacement, minimum safety factor, convergence, and evaluation. |

### Relationships

### Relationships

The database uses primary keys and foreign keys to connect the four tables.

- `projekte` and `bauteile` are linked through `projekt_id`.
- `bauteile` and `simulationen` are linked through `bauteil_id`.
- `simulationen` and `ergebnisse` are linked through `simulation_id`.

The database structure supports relational analysis across projects, components, simulations, and results.

In the current dataset, each project has one component, each component has one simulation, and each simulation has one associated result.

---

## 4. Tools & Technologies

- **PostgreSQL:** Relational database management.
- **pgAdmin:** Database administration and SQL query execution.
- **SQL:** Data extraction, aggregation, filtering, and analysis.
- **Visual Studio Code:** SQL development and project documentation.
- **Git & GitHub:** Version control and project publication.

---

## 5. SQL Skills Applied

The project uses several SQL techniques:

- `SELECT` and `FROM` for data retrieval.
- `WHERE` for filtering records.
- `ORDER BY` for sorting results.
- `GROUP BY` for aggregation.
- `HAVING` for filtering aggregated results.
- `JOIN` for combining relational tables.
- `COUNT()`, `SUM()`, and `AVG()` for statistical analysis.
- `ROUND()` for numerical formatting.
- `EXTRACT()` for date-based analysis.
- Subqueries for percentage calculations.
- `LIMIT` for identifying top-ranked records.
- Correlation analysis using PostgreSQL statistical functions.

---

## 6. Business Questions & Analysis

The analysis is organized into three main areas: project and budget analysis, component and material analysis, and simulation performance and results.

### Part 1: Project and Budget Analysis

#### Q1. Which projects have the highest budgets?

The analysis identifies the projects with the largest allocated budgets.

**Key Findings:**
- The Usine Agroalimentaire Bamako project has the highest budget at **€275,000**.
- It represents approximately **8.81%** of the total project budget.
- The five highest-budget projects account for approximately **36.15%** of the total budget.

**Business Insight:** Identifying high-budget projects helps highlight where financial resources are concentrated.

#### Q2. How is the total project budget distributed across locations?

| Location | Total Budget (€) | Budget Share (%) |
|---|---:|---:|
| Bamako | 1,195,500.00 | 38.31 |
| Kayes | 516,500.00 | 16.55 |
| Koulikoro | 500,000.00 | 16.02 |
| Ségou | 345,500.00 | 11.07 |
| Sikasso | 317,500.00 | 10.17 |
| Mopti | 245,500.00 | 7.87 |
| **Total** | **3,120,000.00** | **100.00** |

**Key Findings:**
- Bamako represents the largest share of the total project budget, with **38.31%**.
- Kayes and Koulikoro follow with **16.55%** and **16.02%**, respectively.
- Mopti has the smallest budget share, at **7.87%**.

**Business Insight:** The budget distribution shows a concentration of financial resources in Bamako. Further analysis would be required to determine whether this is due to a higher number of projects or larger individual project budgets.

#### Q3. Which customers have the highest total project budgets?

| Customer | Total Budget (€) | Number of Projects |
|---|---:|---:|
| Energie Mali | 366,000.00 | 2 |
| Routes du Mali | 340,000.00 | 2 |
| Mali Mining Services | 301,500.00 | 2 |
| Mali Agro Industries | 275,000.00 | 1 |
| Ministère des Infrastructures | 230,000.00 | 1 |
| Transport Mali | 198,000.00 | 1 |
| Construction Moderne Mali | 189,000.00 | 1 |
| Mali Infrastructure SA | 185,000.00 | 1 |
| TechMali | 174,000.00 | 1 |
| AgroTech Mali | 168,000.00 | 2 |
| Office Agricole Mali | 143,500.00 | 1 |
| Sotuba Industrie | 142,500.00 | 1 |
| Solar Mali | 112,000.00 | 1 |
| LogiMali | 108,500.00 | 1 |
| Hydro Mali | 98,000.00 | 1 |
| Eau et Développement | 89,500.00 | 1 |

**Key Findings:**
- Energie Mali has the highest total project budget, with **€366,000** across two projects.
- Routes du Mali ranks second, with **€340,000**.
- Mali Mining Services ranks third, with **€301,500**.
- The three highest-budget customers represent a combined budget of **€1,007,500**.

**Business Insight:** Customer-level budget analysis helps identify the main customers in terms of total project value. Total budget should not be confused with average budget per project.

#### Q4. Which projects have the highest budget per component?

| Project | Total Budget (€) | Number of Components | Budget per Component (€) |
|---|---:|---:|---:|
| Usine Agroalimentaire Bamako | 275,000.00 | 1 | 275,000.00 |
| Bâtiment Administratif Bamako | 230,000.00 | 1 | 230,000.00 |
| Pont Béton Kayes | 215,000.00 | 1 | 215,000.00 |
| Centrale Solaire Koulikoro | 210,000.00 | 1 | 210,000.00 |
| Pont Métallique Koulikoro | 198,000.00 | 1 | 198,000.00 |

**Key Findings:**
- The Usine Agroalimentaire Bamako project has the highest calculated budget per component, at **€275,000**.
- Each project contains exactly one component in this dataset.

**Business Insight:** Since every project has only one component, the budget per component is identical to the project budget. This metric therefore does not provide a meaningful comparison of individual component costs.

**Limitation:** A more detailed dataset containing multiple components and actual component-level costs would be necessary for a meaningful cost analysis.

#### Q5. How has the average project budget changed over time?

| Year | Average Budget (€) | Number of Projects |
|---|---:|---:|
| 2024 | 158,583.33 | 18 |
| 2025 | 133,000.00 | 2 |

**Key Findings:**
- The average project budget decreased from **€158,583.33** in 2024 to **€133,000.00** in 2025.
- This represents an approximate decrease of **16.15%**.
- However, the dataset contains 18 projects in 2024 and only 2 in 2025.

**Business Insight:** The average budget is lower in 2025, but the small number of projects in that year makes it difficult to establish a reliable trend.

**Limitation:** More years of data and a more balanced number of projects per year would be needed to identify long-term budget trends.

---

### Part 2: Component and Material Analysis

#### Q6. Which materials are used most frequently, and what is their total mass?

| Material | Number of Components | Total Mass (kg) |
|---|---:|---:|
| Stahl S355 | 7 | 31,010.00 |
| Stahl S235 | 4 | 13,890.00 |
| Beton C30 | 3 | 16,120.00 |
| Aluminium | 2 | 1,770.00 |
| Beton C40 | 2 | 15,400.00 |
| Beton C35 | 2 | 13,500.00 |

**Key Findings:**
- Stahl S355 is the most frequently used material, with **7 components**.
- It also has the highest total mass, at **31,010 kg**.
- Beton C30 has a total mass of **16,120 kg** across three components.
- Aluminium has the lowest total mass, at **1,770 kg**.
- Beton C30 has a higher average mass per component than Stahl S355: approximately **5,373.33 kg** compared with **4,430 kg**.

**Business Insight:** Material analysis helps identify the most frequently used materials and compare their total and average mass across the dataset.

#### Q7. Which component has the highest safety factor, and which project does it belong to?

| Component | Material | Safety Factor | Project |
|---|---|---:|---|
| Brückenstütze | Beton C40 | 2.60 | Pont Métallique Koulikoro |

**Key Findings:**
- Brückenstütze has the highest recorded safety factor, at **2.60**.
- The component is made of Beton C40.
- It belongs to the Pont Métallique Koulikoro project.

**Business Insight:** Identifying components with the highest safety factors helps compare safety indicators across the dataset. However, a higher safety factor alone does not establish the overall safety or structural performance of a component.

#### Q8. Which projects contain the heaviest components?

The analysis identifies the five heaviest components and their associated projects.

| Project | Component | Material | Mass (kg) |
|---|---|---|---:|
| Usine Agroalimentaire Bamako | Maschinenfundament | Beton C35 | 9,650.00 |
| Pont Métallique Koulikoro | Brückenstütze | Beton C40 | 8,420.00 |
| Pont Rural Ségou | Brückenträger | Stahl S355 | 7,120.00 |
| Pont Béton Kayes | Betonträger | Beton C40 | 6,980.00 |
| Réservoir Eau Sikasso | Behälterwand | Beton C30 | 6,250.00 |

**Key Findings:**
- Maschinenfundament, belonging to Usine Agroalimentaire Bamako, is the heaviest component, with a mass of **9,650 kg**.
- Brückenstütze ranks second, with **8,420 kg**.
- Brückenträger ranks third, with **7,120 kg**.
- Four of the five heaviest components are made of concrete, while one is made of steel.

**Business Insight:** Identifying projects containing the heaviest components can help highlight potential requirements for transportation, handling, and construction planning.

**Limitation:** Component mass alone does not determine structural complexity or safety.

#### Q9. Which components are still under review, and which projects and customers are associated with them?

The analysis identifies components whose status is marked as `In Prüfung` (Under Review) and links them to their respective projects and customers.

| Component | Material | Status | Project | Customer |
|---|---|---|---|---|
| Lagerträger | Stahl S235 | In Prüfung | Entrepôt Logistique Ségou | LogiMali |
| Brückenträger | Stahl S355 | In Prüfung | Pont Rural Ségou | Routes du Mali |
| Solarturm Basis | Stahl S355 | In Prüfung | Tour Solaire Ségou | Solar Mali |

**Key Findings:**
- Three components are currently marked as `In Prüfung`.
- All three components belong to projects located in Ségou.
- The associated customers are LogiMali, Routes du Mali, and Solar Mali.
- Two components are made of Stahl S355, while one is made of Stahl S235.

**Business Insight:** Tracking components under review helps identify projects that may require additional investigation, follow-up, or documentation.

**Limitation:** An `In Prüfung` status indicates an ongoing review process. It does not necessarily indicate a structural defect or safety issue.

#### Q10. Which materials have the highest average safety factors?

The analysis compares the average safety factor across different materials.

| Material | Average Safety Factor | Component Count |
|---|---:|---:|
| Beton C40 | 2.53 | 2 |
| Beton C35 | 2.35 | 2 |
| Beton C30 | 2.27 | 3 |
| Aluminium | 2.08 | 2 |
| Stahl S355 | 1.84 | 7 |
| Stahl S235 | 1.65 | 4 |

**Key Findings:**
- Beton C40 has the highest average safety factor, at **2.53**, based on 2 components.
- Beton C35 ranks second, with an average of **2.35**.
- Beton C30 has an average safety factor of **2.27**, based on 3 components.
- Stahl S235 has the lowest average safety factor, at **1.65**, based on 4 components.
- Stahl S355 has the largest representation in the dataset, with 7 components, and an average safety factor of **1.84**.

**Business Insight:** The results show differences in average safety factors across the materials represented in the dataset. Beton C40 has the highest recorded average, while Stahl S235 has the lowest.

**Limitation:** These averages are based on a small number of components per material. They do not prove that one material is inherently safer than another. Structural safety also depends on component geometry, loading conditions, design requirements, and other engineering parameters.

---

### Part 3: Simulation Performance and Results

#### Q11. Which solvers are used most frequently, and what are their average computation times?

| Solver | Number of Simulations | Average Computation Time (min) |
|---|---:|---:|
| Abaqus | 9 | 46.97 |
| ANSYS Mechanical | 9 | 49.59 |
| ANSYS Thermal | 2 | 29.50 |

**Key Findings:**
- Abaqus and ANSYS Mechanical are the most frequently used solvers, with **9 simulations each**.
- ANSYS Mechanical has the highest average computation time, at **49.59 minutes**.
- ANSYS Thermal has the lowest average computation time, at **29.50 minutes**.

**Business Insight:** Solver usage and computation time can help compare simulation workloads.

**Limitation:** ANSYS Thermal is represented by only two simulations. Its average computation time should therefore be interpreted cautiously. The results do not prove that one solver is inherently faster than another because simulation complexity and settings may differ.

#### Q12. Which simulation has the longest computation time?

| Simulation ID | Component | Material | Solver | Computation Time (min) |
|---|---|---|---|---:|
| 11 | Brückenstütze | Beton C40 | ANSYS Mechanical | 72.50 |

**Key Findings:**
- Simulation 11 has the longest recorded computation time, at **72.50 minutes**.
- It uses ANSYS Mechanical.
- The simulation concerns the Brückenstütze component made of Beton C40.
- Three of the five longest simulations use ANSYS Mechanical, while two use Abaqus.

**Business Insight:** Identifying simulations with the longest computation times can help locate computationally demanding cases and investigate opportunities for optimization.

#### Q13. Is there a correlation between mesh size and computation time?

**Result:**

- Pearson correlation coefficient: **0.964**
- This indicates a strong positive correlation between the number of mesh elements and computation time in the dataset.

**Examples:**
- Simulation 11: 178,000 mesh elements and 72.50 minutes.
- Simulation 3: 76,000 mesh elements and 28.40 minutes.

**Key Findings:**
- Simulations with larger meshes generally have longer computation times.
- The correlation coefficient of 0.964 indicates a strong positive linear relationship.

**Business Insight:** Mesh size is an important factor to consider when analyzing computational workload.

**Limitation:** Correlation does not prove causation. Other factors, such as solver settings, model complexity, hardware, and simulation type, may also influence computation time.

#### Q14. Which simulation types have the highest average stress?

| Simulation Type | Average Maximum Stress (MPa) |
|---|---:|
| Windlast | 240.13 |
| Dynamisch | 194.00 |
| Statisch | 167.39 |
| Thermisch | 102.55 |

**Key Findings:**
- Windlast simulations have the highest average maximum stress, at **240.13 MPa**.
- Dynamisch simulations rank second, at **194.00 MPa**.
- Thermisch simulations have the lowest average maximum stress, at **102.55 MPa**.

**Business Insight:** Comparing average maximum stress across simulation types helps identify which types of loading are associated with higher stress values in this dataset.

**Limitation:** These averages do not establish whether a component is safe or unsafe. Stress values must be interpreted in relation to material properties, design criteria, boundary conditions, and other engineering factors.

#### Q15. Which projects may require further technical review?

The analysis identifies projects with relatively low minimum safety factors and high maximum stress values.

**Projects identified for review:**

| Project | Minimum Safety Factor | Maximum Stress (MPa) |
|---|---:|---:|
| Tour Solaire Ségou | 1.48 | 248.90 |
| Hangar Agricole Koulikoro | 1.52 | 231.80 |
| Structure Acier Bamako | 1.55 | 239.70 |
| Pont Rural Ségou | 1.58 | 226.70 |

**Key Findings:**
- Tour Solaire Ségou has the lowest minimum safety factor, at **1.48**.
- It also has the highest maximum stress among the four projects, at **248.90 MPa**.
- The other projects also show relatively low minimum safety factors and high recorded stress values.

**Business Insight:** These projects can be prioritized for further investigation within the fictional dataset.

**Limitation:** These results are indicators for analytical review, not definitive engineering assessments. The dataset contains one simulation per project, and the results are not validated for real-world structural decisions.

---

## 7. Key Findings Summary

The analysis produced several observations:

- **Budget concentration:** Bamako accounts for 38.31% of the total project budget.
- **Main customer:** Energie Mali has the highest total project budget, at €366,000.
- **Highest-budget project:** Usine Agroalimentaire Bamako, at €275,000.
- **Most frequent material:** Stahl S355, with 7 components.
- **Highest recorded component mass:** Maschinenfundament, at 9,650 kg.
- **Highest recorded safety factor:** Brückenstütze, at 2.60.
- **Most frequently used solvers:** Abaqus and ANSYS Mechanical, with 9 simulations each.
- **Longest computation time:** Simulation 11, at 72.50 minutes.
- **Mesh size and computation time:** Strong positive correlation of 0.964.
- **Highest average stress by simulation type:** Windlast, at 240.13 MPa.
- **Projects identified for further review:** Tour Solaire Ségou, Hangar Agricole Koulikoro, Structure Acier Bamako, and Pont Rural Ségou.

---

## 8. Project Limitations

This project has several limitations that should be considered when interpreting the results:

1. **Fictional dataset:** All records are simulated and do not represent verified real-world engineering projects.
2. **Limited dataset size:** The database contains only 20 projects, 20 components, 20 simulations, and 20 results.
3. **Limited time range:** Project budget analysis covers only 2024 and 2025, with an uneven number of projects per year.
4. **Component structure:** Each project contains exactly one component, which limits the usefulness of budget-per-component analysis.
5. **Simulation coverage:** Each component has one simulation and each simulation has one associated result in this dataset.
6. **Solver comparison:** Differences in computation time may depend on factors other than the solver itself.
7. **Engineering validation:** Safety factors and stress values are not independently validated and cannot support real-world structural safety conclusions.

These limitations provide opportunities for future improvements, including larger datasets, multiple components per project, multiple simulations per component, and more detailed engineering parameters.

---

## 9. Future Improvements

Possible extensions of this project include:

- Adding more projects and customers.
- Including multiple components per project.
- Recording multiple simulations for each component.
- Adding component-level costs.
- Comparing solver performance under similar simulation conditions.
- Creating SQL views for recurring business analyses.
- Building a dashboard using Power BI or Tableau.
- Adding more detailed statistical analysis.

---

## 10. Author
Sonia Tsago

**SQL Portfolio Project**

Created as an educational project to demonstrate relational database design, PostgreSQL querying, and data analysis applied to fictional engineering simulation data.

**Technologies:** PostgreSQL, pgAdmin, SQL, Visual Studio Code, Git, GitHub.