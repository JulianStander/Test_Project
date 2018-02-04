Simple Example
================
Julian Stander
04/02/2018

Comparing the Underlying Means of Two Groups
============================================

Comparing the Underlying Means of Two Groups
--------------------------------------------

![](Simple_Example_files/figure-markdown_github/unnamed-chunk-1-1.png)

Comparing the Underlying Means of Two Groups, continued
-------------------------------------------------------

We can ask:

-   Is there an height between females and males?

This is a **profound question**. We are not asking whether there is a difference between the mean height of females and the mean height of males in the data collected.

We are asking, *more generally*, whether there is a difference between the mean height of females and the mean height of males in a much bigger *population*.

*t*-test: Underlying Difference in Mean
---------------------------------------

To answer this question, we can use a *t*-test:

``` r
t.test(Height ~ Sex, data = qd, var.equal = TRUE)
```

    # 
    #   Two Sample t-test
    # 
    # data:  Height by Sex
    # t = -4.5075, df = 16, p-value = 0.0003579
    # alternative hypothesis: true difference in means is not equal to 0
    # 95 percent confidence interval:
    #  -20.374200  -7.340085
    # sample estimates:
    # mean in group Female   mean in group Male 
    #             165.1429             179.0000

*p*-value: Underlying Difference in Mean
----------------------------------------

We need to focus on the *p*-value

    # [1] 0.0003579246

In general, if the *p*-value is less that 0.05, .

In this case, the *p*-value is considerably less than 0.05. Therefore, we conclude that

-   .

Obtaining the *p*-value using the  Function
------------------------------------------

We can obtain the above *p*-value 0.0003579246 in a different way

-   using the function for inear odelling:

``` r
m <- lm(Height ~ Sex, data = qd)
summary(m)
```

    #              Estimate Std. Error  t value     Pr(>|t|)
    # (Intercept) 165.14286   2.403229 68.71707 3.326021e-21
    # SexMale      13.85714   3.074221  4.50753 3.579246e-04

Comparing the Underlying Means of Two Groups
--------------------------------------------

We can also ask:

-   Is the mean height of females the mean height of males of students?

Again, we are not asking whether the mean height of females is less than the mean height of males in the data collected.

We are asking, *more generally*, whether the mean height of females is less than the mean height of males in a much bigger *population*.

*t*-test: Is the Mean Height of Females Less Than the Mean Height of Males in the Population?
---------------------------------------------------------------------------------------------

To answer this question, we can use a *t*-test, with

:

``` r
t.test(Height ~ Sex, data = qd, var.equal = TRUE, 
       alternative = "less")
```

    # 
    #   Two Sample t-test
    # 
    # data:  Height by Sex
    # t = -4.5075, df = 16, p-value = 0.000179
    # alternative hypothesis: true difference in means is less than 0
    # 95 percent confidence interval:
    #       -Inf -8.489911
    # sample estimates:
    # mean in group Female   mean in group Male 
    #             165.1429             179.0000

*p*-value: Is the Mean Height of Females Less Than the Mean Height of Males in the Population?
----------------------------------------------------------------------------------------------

We need to focus on the *p*-value

    # [1] 0.0001789623

If the *p*-value is less that 0.05, we conclude that

-   .

-   What do you conclude?

Comparing the Underlying Means of More Than Two Groups
======================================================

``` r
knitr::knit_exit()
```
