DESCRIPTION

ScienceQtech is a startup that works in the Data Science field. ScienceQtech has worked on fraud detection, market basket, self-driving cars,
supply chain, algorithmic early detection of lung cancer, customer sentiment, and the drug discovery field.
With the annual appraisal cycle around the corner, the HR department has asked you (Junior Database Administrator) to generate reports on employee details,
their performance, and on the project that the employees have undertaken, to analyze the employee database and extract specific data based on different requirements.

 

Objective: 

To facilitate a better understanding, managers have provided ratings for each employee which will help the HR department to finalize the employee performance mapping.
As a DBA, you should find the maximum salary of the employees and ensure that all jobs are meeting the organization's profile standard.
You also need to calculate bonuses to find extra cost for expenses.
This will raise the overall performance of the organization by ensuring that all required employees receive training.

 

Dataset description:


emp_record_table: It contains the information of all the employees.

  EMP_ID – ID of the employee

  FIRST_NAME – First name of the employee

  LAST_NAME – Last name of the employee

  GENDER – Gender of the employee

  ROLE – Post of the employee

  DEPT – Field of the employee

  EXP – Years of experience the employee has

  COUNTRY – Country in which the employee is presently living

  CONTINENT – Continent in which the country is

  SALARY – Salary of the employee

  EMP_RATING – Performance rating of the employee

  MANAGER_ID – The manager under which the employee is assigned 

  PROJ_ID – The project on which the employee is working or has worked on
 

Proj_table: It contains information about the projects.

  PROJECT_ID – ID for the project

  PROJ_Name – Name of the project

  DOMAIN – Field of the project

  START_DATE – Day the project began

  CLOSURE_DATE – Day the project was or will be completed

  DEV_QTR – Quarter in which the project was scheduled

  STATUS – Status of the project currently

 
Data_science_team: It contains information about all the employees in the Data Science team.

  EMP_ID – ID of the employee

  FIRST_NAME – First name of the employee

  LAST_NAME – Last name of the employee

  GENDER – Gender of the employee

  ROLE – Post of the employee

  DEPT – Field of the employee

  EXP – Years of experience the employee has

  COUNTRY – Country in which the employee is presently living

  CONTINENT – Continent in which the country is



The task to be performed: 
 

Create a database named employee, then import data_science_team.csv proj_table.csv and emp_record_table.csv into the employee database from the given resources.

Write a query to fetch EMP_ID, FIRST_NAME, LAST_NAME, GENDER, and DEPARTMENT from the employee record table,
and make a list of employees and details of their department.

Write a query to fetch EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPARTMENT, and EMP_RATING if the EMP_RATING is: 
  less than two
  greater than four 
  between two and four

Write a query to concatenate the FIRST_NAME and the LAST_NAME of employees in the Finance department from the employee table and then give the resultant
column alias as NAME.
 
Write a query to list only those employees who have someone reporting to them. Also, show the number of reporters (including the President).

Write a query to list down all the employees from the healthcare and finance departments using union. Take data from the employee record table.
 
Write a query to calculate the minimum and the maximum salary of the employees in each role. Take data from the employee record table.

Write a query to assign ranks to each employee based on their experience. Take data from the employee record table.
