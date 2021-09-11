![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | Introduction to BI and Tableau

## Introduction

In this lab, we will practice loading data into Tableau, inspecting and modifying data types, and creating tabular views with metrics based on the information contained in the data set. We will be working with a [liquor store sales data set](https://docs.google.com/spreadsheets/d/1pQ2VFsuuwLqBstYYTY3fcZY32WLigw3Pzxnikkce6IA/edit?usp=sharing) hosted in Google Sheets.

If you get stuck on any of the tasks in this lab, you can reference the excellent training video resources provided on the [Tableau website](https://www.tableau.com/learn/training). We have also referenced specific articles on topics such as binning variables and creating aliases that should be helpful in completing this lab.

## Getting Started

To complete this lab, follow each of the steps below.

1. - [x] Open the [data set](https://docs.google.com/spreadsheets/d/1pQ2VFsuuwLqBstYYTY3fcZY32WLigw3Pzxnikkce6IA/edit?usp=sharing) in a browser.
2. - [x] Download the dataset in CSV format.
3. - [x] Launch the Tableau Public application.
4. - [x] Import the dataset into Tableau through the `Text File` option.
5. - [x] Once the data set has been imported, change the data type for the `Year` field to string.
6. - [x] Create a new field called Quarter by [binning](https://onlinehelp.tableau.com/current/pro/desktop/en-us/calculations_bins.htm) the month field using a bin size of 4.
7. - [x] Create a new worksheet, drag the newly-created Quarter field into the Rows section, and drag the Number of Records measure to the center of the view. You will notice that the quarters are currently named labeled 0, 4, 8, 12. [Rename](https://onlinehelp.tableau.com/current/pro/desktop/en-us/datafields_fieldproperties_aliases_ex1editing.htm) them more intuitively by right-clicking on the Quarter dimension, selecting Aliases and changing their names to Q1, Q2, Q3, and Q4 respectively.
8. - [x] Create new worksheets with tabular views for each of the following metrics.
    - - [x] Total Retail Sales by Year/Quarter (rows).
    - - [x] Average Retail Sales by Year/Quarter (rows).
    - - [x] Total Retail Sales by Year/Month (rows) and Item Type (columns).
    - - [x] Average Retail Sales by Year/Month (rows) and Item Type (columns).
    - - [x] Total Retail Transfers by Year/Quarter (rows).
    - - [x] Average Retail Transfers by Year/Quarter (rows).
    - - [x] Total Retail Transfers by Year/Month (rows) and Item Type (columns).
    - - [x] Average Retail Transfers by Year/Month (rows) and Item Type (columns).
    - - [x] Total Warehouse Sales by Year/Quarter (rows).
    - - [x] Average Warehouse Sales by Year/Quarter (rows).
    - - [x] Total Warehouse Sales by Year/Month (rows) and Item Type (columns).
    - - [x] Average Warehouse Sales by Year/Month (rows) and Item Type (columns).
9. - [x] Save your work to Tableau Public, ensure that your workbook is viewable. It might take several minutes for this workbook to save to Tableau Public due to the number of records in the data set.

## Resources

- [Data Types - Tableau](https://onlinehelp.tableau.com/current/pro/desktop/en-us/datafields_typesandroles_datatypes.htm)

- [Create Bins from a Continuous Measure](https://onlinehelp.tableau.com/current/pro/desktop/en-us/calculations_bins.htm)

- [Create Aliases to Rename Members in the View](https://onlinehelp.tableau.com/current/pro/desktop/en-us/datafields_fieldproperties_aliases_ex1editing.htm)

- [Tableau Training Videos](https://www.tableau.com/learn/training)