
# Business Questions

## 1. Project and Budget Analysis

**Question 1:** Which projects have the highest budgets, and what percentage of the total budget does each project represent?

**Key finding:**
Usine Agroalimentaire Bamako has the highest project budget at 275000€, representing 8.81% of the total budget.

**Business insight:**
The five highest-budget projects account for approximately 36.15% of the total project budget.

**Question 2:** How is the total project budget distributed across different locations?

**Key finding**:
Bamako receives the largest share of the total project budget, with €1,195,500 (38.31%).
Kayes ranks second with €516,500 (16.55%).
Koulikoro follows with €500,000 (16.02%).
Bamako alone accounts for more than one-third of the total budget.

**Business insight**: 
Project investments are concentrated in Bamako, which represents 38.31% of the total budget. This concentration may reflect a higher number of projects or larger project budgets in the capital. Further analysis would be needed to identify the underlying reason.

**Question 3:** Which customers have the highest total project budgets, and how many projects are assigned to each customer?

**Key finding**:
Energie Mali has the highest total project budget at €366,000 across 2 projects.
Routes du Mali ranks second with €340,000 across 2 projects.
Mali Mining Services ranks third with €301,500 across 2 projects.
Three customers have total project budgets exceeding €300,000.

**Business insight**:
Energie Mali represents the largest customer investment in the dataset. Routes du Mali and Mali Mining Services also account for substantial project budgets. These findings help identify the customers with the greatest financial involvement and support customer portfolio analysis.

**Question 4:** Which projects have the highest budget per component?

**Key finding**:
Usine Agroalimentaire Bamako ranks first with a budget of €275,000.00 per component.
Bâtiment Administratif Bamako ranks second with €230,000.00.
Pont Béton Kayes ranks third with €215,000.00.
All 20 projects currently contain exactly one component.

**Business insight**:
Usine Agroalimentaire Bamako has the highest budget relative to its recorded number of components. However, since every project contains only one component, the budget per component is identical to the total project budget. Therefore, this analysis primarily highlights the projects with the highest budgets rather than providing a meaningful comparison of component costs.

**Question 5:** How does the average project budget evolve over time?

**Key finding**:
The average project budget decreased from €158,583.33 in 2024 to €133,000.00 in 2025.
This represents a decrease of approximately 16.15%.
However, 2025 includes only 2 projects, compared with 18 projects in 2024.

**Business insight**:
The average project budget is lower in 2025 than in 2024. However, the small number of projects recorded in 2025 limits the reliability of this comparison. Additional data would be needed to determine whether this decrease represents a genuine long-term trend.

## 2. Components and Materials Analysis

**Question 6:** Which materials are used most frequently, and what is the total mass associated with each material?

**Key finding**:
Stahl S355 is the most frequently used material, with 7 components and a total mass of 31,010 kg.
Stahl S235 ranks second, with 4 components and a total mass of 13,890 kg.
Beton C30 accounts for 16,120 kg, despite being used in only 3 components.
Aluminium has the lowest total mass, at 1,770 kg.

**Business insight**:
Stahl S355 is the most frequently used material and also has the highest total mass. However, Beton C30 and Beton C40 account for substantial masses despite their lower component counts. This analysis can support material usage monitoring, inventory planning, and resource allocation.

**Question 7:** Which component has the highest safety factor, and which project does it belong to?

**Key finding**:
Brückenstütze has the highest recorded safety factor, at 2.60.
The component is made of Beton C40. It belongs to the Pont Métallique Koulikoro project.

**Business insight**:
Identifying components with the highest safety factors helps compare safety indicators across the dataset. However, a higher safety factor alone does not establish the overall safety or structural performance of a component.

**Question 8:** Which projects contain the heaviest components?

**Key finding**:
The results show that Usine Agroalimentaire Bamako contains the heaviest component, the Maschinenfundament, weighing 9,650 kg. It is followed by Pont Métallique Koulikoro (8,420 kg) and Pont Rural Ségou (7,120 kg).
The five heaviest components all weigh more than 6,200 kg.

**Business insight**:
Projects involving particularly heavy components may require additional structural analysis to ensure that foundations and supporting structures can safely withstand the loads. Usine Agroalimentaire Bamako should receive particular attention because it contains the heaviest component in the dataset.
These findings can help engineers prioritize structural assessments, material selection and load-bearing capacity checks.

**Question 9:** How do average safety factors differ between the materials used?

**Key finding**:
The query compares the average safety factor across the different materials and identifies which materials have the highest and lowest average values.

**Business insight**:
Materials with higher average safety factors may offer a greater safety margin in the analysed components. This comparison can help engineers evaluate material choices and identify materials that may require closer attention.

**Question 10:** Which components are still under review, and which projects and customers are associated with them?

**Key finding**:
Three components are currently awaiting technical review: Brückenträger, Solarturm Basis and Lagerträger. Each component belongs to a different project, and all three projects are located in Ségou.

**Business insight**:
The pending reviews affect three separate customers: Routes du Mali, Solar Mali and LogiMali. This suggests that the engineering team should pay particular attention to these projects to prevent delays and ensure that each component meets the required technical standards before final approval.

## 3. Simulation and Performance Analysis

**Question 11:** Which solver is used most frequently, and how do average computation times differ between solvers?

**Key finding**:
Abaqus and ANSYS Mechanical are the most frequently used solvers, with 9 simulations each. ANSYS Thermal is used less often, with only 2 simulations.

**Business insight**:
Abaqus and ANSYS Mechanical account for most of the simulations, indicating that they are the main tools used by the engineering team. Comparing solver performance across similar simulation types could help the team identify opportunities to reduce computation time and improve efficiency.

**Question 12:** Which simulations require the longest computation times, and which components are involved?

**Key finding**: 
The analysis shows that simulation 11, involving the component Brückenstütze made of Beton C40, has the longest computation time at 72.50 minutes. The five longest simulations all require more than 53 minutes. Three of them use ANSYS Mechanical, while the other two use Abaqus.

**Business insight**:
The results indicate that static simulations account for most of the longest computation times. Concrete and steel components are both represented among the five most time-consuming simulations. The engineering team should investigate these cases to identify potential optimization opportunities and reduce computational effort without compromising simulation accuracy.

**Question 13:** Is there a relationship between the number of mesh elements and computation time?

**Key finding**:
The analysis reveals a strong positive correlation of 0.964 between the number of mesh elements and computation time. Simulations with larger meshes generally require longer computation times. For example, simulation 11, with 178,000 mesh elements, takes 72.50 minutes, while simulation 3, with 76,000 elements, takes only 28.40 minutes.

**Business insight**:
The results suggest that increasing mesh size is associated with longer computation times. This means that mesh optimization could help reduce computational costs and improve simulation efficiency. Engineers should therefore aim to balance mesh accuracy and computational performance when configuring their simulations.

**Question 14:** Which simulation types produce the highest average stress values?

**Key finding**:
The results show that Windlast simulations have the highest average stress value at 240.13 MPa, followed by Dynamisch simulations at 194.00 MPa and Statisch simulations at 167.39 MPa. Thermisch simulations record the lowest average stress at 102.55 MPa.

**Business insight**:
Wind load simulations generate significantly higher average stress levels than the other simulation types. This suggests that components exposed to wind loads may require additional structural assessments and careful material selection to ensure their reliability and safety.
Engineers should pay particular attention to wind load conditions when evaluating structural performance and selecting appropriate safety margins.

## 4. Risk and Management Analysis

**Question 15:** Which projects require the highest level of technical review based on their simulation results?

**Key finding**:
The results identify Tour Solaire Ségou as the project requiring the highest level of technical attention. It has the lowest safety factor (1.48) and the highest maximum stress value (248.90 MPa).
Other projects requiring close monitoring include:
- Hangar Agricole Koulikoro: safety factor of 1.52.
- Structure Acier Bamako: safety factor of 1.55 and stress of 239.70 MPa.
- Pont Rural Ségou: safety factor of 1.58.

**Business insight**:
Tour Solaire Ségou should receive the highest priority for technical review due to its combination of high stress and the lowest safety factor. The other three projects should also be closely monitored to identify potential structural risks.
Prioritizing these projects would help the engineering team focus its resources on components that may require further investigation before approval.
