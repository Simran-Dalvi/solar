# Subspace System Identification for Predicting Electricity Output (on Solar Data of DAU)

## Overview
This project focuses on the application of **subspace system identification** techniques to predict the electricity output (Eac) of a solar energy system based on temperature data. Unlike general machine learning models, subspace identification offers advantages in terms of system modeling, especially for dynamic and time-series data like that in solar energy systems.

## Why Subspace Identification?
Subspace identification is used in this project because it provides a more structured approach to model dynamic systems, particularly when dealing with time-series data. It can capture the underlying system dynamics with fewer data requirements and better interpretability compared to traditional machine learning models. This technique allows for:

- **Reduced Complexity**: Less dependency on large amounts of data.
- **Improved Interpretability**: Offers insights into the system's behavior, which is crucial for understanding energy systems.
- **Efficient Model Building**: Suitable for systems where the relationship between input and output is governed by underlying physical dynamics.

## Use Case
This project is applicable to **solar energy systems**, where temperature affects electricity output. By using subspace identification, the model attempts to uncover the underlying dynamics between temperature (input) and electricity output (Eac, output), leading to more efficient predictions and better system optimization.

## Key Insights
- **Modeling System Dynamics**: Subspace identification provides a clear representation of how temperature influences electricity output, offering a more systematic and insightful approach than black-box machine learning models.
- **Data Efficiency**: Requires fewer data points for effective system modeling compared to traditional ML techniques.
- **Predictive Power**: Helps in forecasting electricity output under varying temperature conditions, which is vital for optimizing solar energy production.

## Libraries and Tools Used
- **Python**: Core language for scripting and analysis.
- **NumPy, Pandas**: For data manipulation and preprocessing.
- **Matplotlib, Plotly**: For data visualization.
- **scikit-learn**: For implementing baseline machine learning models.
- **matlab.engine**: Used to call MATLAB functions from Python. MATLAB was used for system identification due to the deprecation or limitations of Python alternatives.
- **Jupyter Notebook**: Interactive development environment for analysis and modeling.
- **MATLAB**: Primary tool for implementing the N4SID algorithm (`N4SID.m`).

## Project Structure and File Guide

### 1. March Data
- **File**: `March.ipynb`  
- **Description**: Contains daily solar data for March 2025, including temperature and Eac values. This forms the basis for all downstream analysis.

### 2. Single Day Analysis
- **File**: `solar_panel_data_analysis_one_day.ipynb`  
- **Description**: Analyzes solar panel performance for a single day, showing the day-level effect of temperature on Eac.

### 3. Data Cleaning & Storage
- **File**: `Script.ipynb`  
- **Description**: Consolidates and cleans March 2025 data, handling missing values and outliers, and formats it for modeling.

### 4. Monthly Analysis
- **File**: `Analysis.ipynb`  
- **Description**: Explores trends, patterns, and anomalies in the full March dataset using visualizations and statistical summaries.

### 5. Data Extraction for Modeling
- **File**: `model_data.ipynb`  
- **Description**: Extracts and prepares model-ready features from the cleaned dataset.

### 6. Machine Learning Models
- **File**: `Machine_Learning.ipynb`  
- **Description**: Applies traditional ML models (e.g., regression, decision trees) to predict Eac and compares them with subspace methods.

### 7. N4SID System Identification
- **File**: `N4SID.m`  
- **Description**: This MATLAB script performs **N4SID** (Numerical Subspace State Space System Identification) on the solar data. It uses MATLAB’s system identification tools to create a stable and interpretable model capturing the temperature–output dynamics.

### 8. SISO Identification (Unstable Model)
- **File**: `ssid.ipynb`  
- **Description**: Applies a basic **SISO** (Single Input, Single Output) identification method using Python. The resulting model is unstable and serves as a comparative baseline to highlight the benefits of MATLAB-based N4SID.

## Conclusion
This project demonstrates the potential of subspace system identification for modeling and predicting electricity output in solar energy systems. By emphasizing system dynamics and interpretability, it offers advantages over conventional machine learning approaches for physical systems.

## Additional Materials
For a broader understanding of the project’s objectives, methods, and outcomes:

- `Project_Report.pdf`: Full documentation of the methodology, results, and analysis.  
- `Presentation.pptx`: Slide deck summarizing the project for presentation or review purposes.
