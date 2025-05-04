# Subspace System Identification for Predicting Electricity Output (on Solar Data of DAU)

## Overview
This project focuses on the application of **subspace system identification** techniques to predict the electricity output (Eac) of a solar energy system based on temperature data. Unlike general machine learning models, subspace identification offers advantages in terms of system modeling, especially for dynamic and time-series data like that in solar energy systems.

## Why Subspace Identification?
Subspace identification is used in this project because it provides a more structured approach to model dynamic systems, particularly when dealing with time-series data. It can capture the underlying system dynamics with fewer data requirements and better interpretability compared to traditional machine learning models. This technique also allows for:

- **Reduced Complexity**: Less dependency on large amounts of data.
- **Improved Interpretability**: It provides insights into the system's behavior, which is crucial for understanding energy systems.
- **Efficient Model Building**: Suitable for systems where the relationship between input and output is governed by underlying physical dynamics.

## Use Case
This project is applicable to **solar energy systems**, where temperature affects the electricity output. By using subspace identification, the model attempts to uncover the underlying dynamics between temperature (input) and electricity output (Eac, output), leading to more efficient predictions and better system optimization.

## Key Insights
- **Modeling System Dynamics**: Subspace identification provides a clear representation of how temperature influences electricity output, offering a more systematic and insightful approach than black-box machine learning models.
- **Data Efficiency**: Compared to traditional machine learning models, subspace identification requires fewer data points for effective system modeling.
- **Predictive Power**: The model helps in forecasting electricity output under varying temperature conditions, which is vital for optimizing solar energy production.

## Libraries and Tools Used
- **Python**: Core programming language for implementing algorithms and models.
- **NumPy, Pandas**: For data manipulation and processing.
- **Matplotlib, Plotly**: For data visualization.
- **scikit-learn**: For traditional machine learning techniques comparison.

## How to Read This File

The project consists of several Jupyter notebooks that cater to different steps of the analysis, data cleaning, modeling, and system identification processes. Here’s a guide on how to navigate through these files:

1. **March (Data for March 2025)**
   - **File**: `March.ipynb`
   - **Description**: This file contains the solar data for the entire month of March 2025. It includes both temperature and electricity output (Eac) data collected daily. This data will serve as the foundation for analysis and model training.

2. **Single Day Analysis**
   - **File**: `solar_pannel_data_analysis_one_day.ipynb`
   - **Description**: This notebook analyzes the solar panel data for a single day. It focuses on how temperature affects the electricity output on a given day, providing insights that may be useful for understanding day-to-day variations.

3. **Data Cleaning & Storage**
   - **File**: `Script.ipynb`
   - **Description**: This script cleans and stores the data for the entire month of March 2025 into a single consolidated file. It handles missing values, outliers, and formats the data to make it ready for further analysis and modeling.

4. **Monthly Analysis**
   - **File**: `Analysis.ipynb`
   - **Description**: This file performs a detailed analysis of the solar data for the whole month of March 2025. It examines the temperature and electricity output trends, visualizations, and identifies any patterns or anomalies in the dataset.

5. **Data Extraction**
   - **File**: `model_data.ipynb`
   - **Description**: This notebook extracts relevant features from the raw solar data, specifically for use in modeling. It prepares the data by selecting important variables and ensuring it is ready for algorithm implementation.

6. **Machine Learning Models**
   - **File**: `Machine Learning.ipynb`
   - **Description**: This file implements various machine learning algorithms (e.g., regression, decision trees, etc.) to predict the electricity output (Eac) based on the temperature data. It compares the performance of these models and evaluates their accuracy.

7. **N4SID System Identification**
   - **File**: `Identification.ipynb`
   - **Description**: This notebook performs **N4SID** (Subspace Identification) on the solar data. It uses the subspace identification technique to identify the system dynamics and outputs a stable model that can predict electricity output under various temperature conditions.

8. **SISO Identification (Unstable Model)**
   - **File**: `ssid.ipynb`
   - **Description**: This file applies **SISO** (Single Input, Single Output) identification on the solar data. However, this approach may give an unstable model, which is useful for comparison to the N4SID system identification method.


## Conclusion
This project demonstrates the potential of using subspace system identification for modeling and predicting solar energy outputs. By emphasizing interpretability and efficiency, subspace identification offers significant advantages over general machine learning models for certain types of dynamic systems like solar energy systems.
