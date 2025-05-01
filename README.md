# Final Project: Mobile Device Usage and User Behavior

## Project Overview

- This repository contains the analysis of the **Mobile Device Usage and User Behavior** dataset. 
- The dataset includes key metrics such as screen-on time, app usage, and demographic information. 
- The goal of this analysis is to identify patterns in screen time based on factors like age and gender.

## Data

- The dataset is sourced from [Kaggle](https://www.kaggle.com/datasets/valakhorasani/mobile-device-usage-and-user-behavior-dataset).

## Analysis

- The project analyzes how screen-on time varies by age and gender.
- **R** is used for data cleaning, summarization, and table generation.
- Key variables analyzed include:
  - **App Usage Time (Minutes)**
  - **Screen On Time (Minutes)**
  - **Age**
  - **Gender**

## Directory Structure

- **Final Project/**: Contains the dataset (`user_behavior_dataset.csv`).
- **code/**: Contains R scripts:
  - `load_data.R`: Loads and previews the dataset.
  - `clean_data.R`: Cleans the dataset, removing unnecessary columns.
  - `analyze_data.R`: Groups and summarizes screen time by demographic.
- **report/**: Contains the R Markdown file (`DATAT550_FinalProj.Rmd`) and the final HTML report (`DATAT550_FinalProj.html`).
- **Makefile**:
  - `make`: Renders `DATAT550_FinalProj.Rmd` into `DATAT550_FinalProj.html`.
  - `make install`: Restores the R environment using `renv`.
  - `make docker-run`: Runs the report generation inside a Docker container.
- **Dockerfile**: Builds a container to run the report.
- **renv/** and **renv.lock**: For reproducible package management.
- **README.md**: This file.

## Report Description

### Introduction
This report provides an analysis of the screen time patterns across different demographic groups in the Mobile Device Usage and User Behavior dataset.

### Objectives
This analysis explores screen time patterns across age groups and gender to identify which group has the highest usage.

### Graphical Analysis:
- **Plot 1**: Bar chart showing average screen-on time by age and gender.

## Conclusion

This analysis highlights the distinct usage patterns between genders and age groups, revealing that while both genders have variations in screen-on time, the peak usage time for males and females differs by age group.

## Reproducing the Project Environment

This project uses [`renv`](https://rstudio.github.io/renv/) to manage package dependencies.

### To restore the package environment:

```bash
make install

