# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

<img width="636" alt="Screen Shot 2022-01-16 at 18 58 50" src="https://user-images.githubusercontent.com/90534703/149710257-2b6ec0eb-6932-45d1-be0f-8f3dab180d5a.png">

- According to our results, vehicle length and ground clearance (as well as intercept) are statistically likely to provide non-random amounts of variance to the linear model.

- The slope of our linear model is not zero, meaning that there is sufficient evidence to reject our null hypothesis, because the p-value of our linear regression analysis is 5.35 x 10-11, which is much smaller than our assumed significance level of 0.05%.

- The r-squared value is 0.7149, which means that 71% of the variablilty of our dependent variable is explained using this linear model, meaning that this model predict mpg of MechaCar prototypes effectively.


## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

![image](https://user-images.githubusercontent.com/90534703/149710374-d692aa76-ac4d-4821-a940-c591155cb999.png)

As we can see the variance of our three lots in conjunction is 62.29, meaning that it meet the design specification for manufacturing.

<img width="458" alt="Screen Shot 2022-01-16 at 22 32 39" src="https://user-images.githubusercontent.com/90534703/149710521-27bf32d8-2367-49e1-bc6a-95964f05c15a.png">

When we analyzed lot by lot, we can see that the lot 1 and 2 fulfill the specification, but the Lot3 has a larger variance, 170.28, larger than the 100 pounds per square inch that is specified.


## T-Tests on Suspension Coils


<img width="409" alt="Screen Shot 2022-01-17 at 0 03 09" src="https://user-images.githubusercontent.com/90534703/149711453-028c4744-afd6-4495-a43f-2523d699b458.png">

Our p-value, 0.06, is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the three means are statistically similar.

Also as we can see in our T-tests the mean of this provided sample dataset is 1498.78, very similar to the 1500 presumed population.

<img width="444" alt="Screen Shot 2022-01-17 at 0 03 32" src="https://user-images.githubusercontent.com/90534703/149711465-0ffec089-aaef-47e7-989e-484270bb0d5e.png">

Each sample t-tests differ in the p-value, lot1 and lot 1, are higher than the common significance level of 0.05, but lot3 is lower, meaning that of we only take in consideration the the lot3 we can reject the null hypothesis.

As we can see the three lots has a very similar mean.


## Study Design: MechaCar vs Competition


Using your knowledge of R, design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.

Our statistical study is going to compare the next metrics:

- Price, hp, safety equipment, model, millage. 

Our null hypothesis is that our product is best priced considering their characteristics.

And our alternative hypothesis is that our product is not best priced considering their characteristics.

As well as we do in this exercise, we will used a multiple linear regression, so we can consider more than one factor in the analysis, and the relation that this variables has on the price of the product.

Finally the data that we need to have is Price, hp, safety equipment, model, millage, from our product and from the competence.

