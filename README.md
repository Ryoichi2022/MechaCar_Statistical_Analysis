Challenge 15
# MechaCar_Statistical_Analysis

## Linear regression to predict MPG (Deliverable 1)
Based on the coefficients that resulted from the analysis, vehicle length and ground clearance provide a non-random amount of variance to the mpg (mile per gallon) values. The coefficients are 6.267 and 3.546, respectively.

(Picture 1) Linear model coefficients

<img src="https://github.com/Ryoichi2022/MechaCar_Statistical_Analysis/blob/main/Result_Lregression.png" width="400"/>

When a slope is zero, the line becomes horizontal, where y-coordinates never change regardless of x-coordinates. The slope of the linear model will not be zero, as the y-coordinates change depending on the x-coordinates in the dataset.

The linear model would not predict mpg of MechaCar prototypes effectively because the intercept of the model is also significant. This indicates that there could be other variables that would better explain the variability of the mpg.

(Picture 2) Significance level of coefficients

<img src="https://github.com/Ryoichi2022/MechaCar_Statistical_Analysis/blob/main/Regression_sig_level.png" width="400"/>


## Summary Statistics on Suspension Coils (Deliverable 2)

### Design specification of the total lot
As shown in Table 1, the difference between the mean and median is 1.22, which is 0.0814% of the mean value. As the mean and median are close to each other, the data is considered to be normally distributed, where 68.27%, 95.45%, and 99.73% of the values respectively lie within one, two, and three standard deviations of the mean.

(Table 1) Total lot test result

<img src="https://github.com/Ryoichi2022/MechaCar_Statistical_Analysis/blob/main/PSI_Total.png" width="400"/>

By applying the rule, 99.73%, or effectively 100%, of the values fall within the range of 1475.10 (1498.78 - 3 * 7.892627) up to 1522.46 (1498.78 + 3 * 7.892627). Therefore, the current manufacturing data meets the design specification of suspension coils not exceeding 100 pounds per square inch (PSI).

### Design specification of individual lots
In the same way, the mean and median are close to each other in every lot (Table 2). Effectively all values will lie the range of 1497.03 up to 1502.97 in Lot 1, 1492.00 up to 1508.40 in Lot 2, and 1456.99 up to 1535.29 in Lot 3. This means that the suspension coil specification would be met in each lot individually.

(Table 2) Test result by lot

<img src="https://github.com/Ryoichi2022/MechaCar_Statistical_Analysis/blob/main/PSI_Lot.png" width="500"/>


## T-Tests on Suspension Coils (Deliverable 3)
The analysis was performed to test the null hypothesis that there is no statistical difference between the observed sample mean and the population mean. Where assumption is that significance level is 0.05, the two means will be statistically similar when the p-value is above 0.05.

According to the test results shown below, the p=values are 1, 9.35e-12, 0.0005082, and 0.1549 for total lot, Lot 1, Lot 2, and Lot 3, respectively. Therefore, the sample of total lot and Lot 3 calculate a similar mean to the population mean.

(Picture 3) Total lot t-test result

<img src="https://github.com/Ryoichi2022/MechaCar_Statistical_Analysis/blob/main/t-test_Total.png" width="400"/>


(Picture 4) Lot 1 t-test result

<img src="https://github.com/Ryoichi2022/MechaCar_Statistical_Analysis/blob/main/t-test_Lot1.png" width="400"/>


(Picture 5) Lot 2 t-test result

<img src="https://github.com/Ryoichi2022/MechaCar_Statistical_Analysis/blob/main/t-test_Lot2.png" width="400"/>


(Picture 6) Lot 3 t-test result

<img src="https://github.com/Ryoichi2022/MechaCar_Statistical_Analysis/blob/main/t-test_Lot3.png" width="400"/>


## Study Design: MechaCar vs Competition (Deliverable 4)

### Statistical study description
While the automobile market is suffering a severe competition, mileage or fuel efficiency, as well as cost, is of interest to customers. As the fuel price continues to rise, automobiles with high fuel efficiency would be attractive to customers.

### Metric to be tested
With regard to fuel efficiency, mile per gallon (mpg) is going to be tested. Engine size, vehicle size, and vehicle weight will affect mpg.

### Null hypothesis and alternative hypothesis
When mpg is tested, the null hypothesis would be that there is no statistical difference between the mpg mean of MechaCar prototypes and the mpg mean of other vehicles. The alternative hypothesis would be that there is a statistical difference between the mpg mean of MechaCar prototypes and the mpg mean of other vehicles.

### Statistical test for the hypothesis
A t-test will be performed to test the hypothesis because the test compares the mean of one dataset to another under a few assumptions. The test is expected to assert similarity or difference in the datasets.

### Data necessary for t-test
Using R, the t-test can be performed when the following data are available:
* The numeric vector of the MechaCar’s data.
* The calculated mean of the population data.
