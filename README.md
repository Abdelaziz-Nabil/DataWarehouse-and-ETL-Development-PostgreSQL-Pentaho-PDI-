# DataWarehouse-and-ETL-Development-PostgreSQL-Pentaho-PDI

# Data Warehouse Project

## Project Overview

This project demonstrates the implementation of a Data Warehouse for analyzing sales and product data. The objective is to provide a robust foundation for business intelligence and reporting through a well-structured ETL process. The tools and technologies used include PostgreSQL for database management and Pentaho (PDI) for ETL processes.

## Project Steps

### 1. Source Setting Up

The initial step involves preparing the data sources. This includes:

- Creating SQL tables in the public schema to hold source data such as products, sales, date, and category.
- Populating these tables with raw data from CSV files.

### 2. Staging Setting Up

A staging area is established in the PostgreSQL database to temporarily hold delta data extracted from the source. This area ensures data integrity and provides a clean slate for transformations. The staging tables are created in the `staging` schema and include tables for products, sales, and date. These tables hold data temporarily before it is transformed and loaded into the core Data Warehouse.

### 3. Core Data Warehouse Setting Up

The core Data Warehouse is designed and implemented using a star schema. It includes:

- Fact tables to store measurable data such as sales figures.
- Dimension tables to store descriptive attributes like products and time periods.
- Core tables for products, sales, and payment data, created in the `core` schema. These tables hold the transformed data ready for analysis.

## ETL Process

### Initial Load vs. Delta Load

- **Initial Load**: This step loads the complete dataset into the staging and core Data Warehouse tables for the first time.
- **Delta Load**: After the initial load, only the changes (new or updated data) are extracted from the source tables and processed through the staging area to update the core Data Warehouse tables.

### 1. Extract: From Source to Staging

- For the initial load, all data from the source tables in the public schema is extracted into the staging tables.
- For subsequent delta loads, only new or modified records are extracted to ensure efficiency and minimize data duplication.

### 2. Transform & Load: From Staging to Core DWH

- The staging data undergoes necessary transformations, including cleaning, formatting, and enriching.
- Transformed data is then loaded into the core Data Warehouse tables, either replacing existing records or appending new ones, depending on the delta load logic.

## Tools and Technologies

- **PostgreSQL**: Used for database management and hosting both the staging and core Data Warehouse.
- **Pentaho (PDI)**: Used for automating the ETL processes, including data extraction from CSV files, transformation, and loading.

## Key Features

- Modular design with a separate staging area for better data management.
- Support for both initial and delta loads to ensure data accuracy and efficiency.
- ETL pipelines that ensure a seamless flow of data from source to Data Warehouse.
- Star schema implementation for optimized query performance.

## How to Run the Project

1. Clone the repository from GitHub.
2. Set up a PostgreSQL database and import the schema provided in the `schema.sql` file.
3. Configure Pentaho (PDI) to connect to the data sources and the PostgreSQL database.
4. Perform an initial load to populate the staging and core Data Warehouse tables.
5. Run delta load jobs periodically to update the Data Warehouse with the latest changes.
6. Query the Data Warehouse to generate insights.

## Repository Structure

- `source_setup`: Contains SQL scripts to create and populate source tables in the public schema (products, sales, date, category).
- `staging_setup`: Contains SQL scripts to create staging tables in the `staging` schema (products, sales, date).
- `core_dwh`: Contains SQL scripts to create core tables in the `core` schema (products, sales, payment).
- `etl_jobs`: Folder containing Pentaho (PDI) job files for ETL processes, including initial and delta loads.
- `data`: Folder containing sample CSV files used as source data.
- `README.md`: This file provides an overview of the project and instructions for setup.

## Conclusion

This project provided hands-on experience in designing and implementing a Data Warehouse with ETL processes, including both initial and delta loads. It serves as a foundation for advanced analytics and reporting, and I look forward to building upon these skills in future projects.

---

Feel free to explore the repository and reach out with any questions or feedback!

