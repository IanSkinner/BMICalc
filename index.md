---
title       : BMI (Body Mass Indicator) Calculator
subtitle    : Developing Data Products
author      : Ian Skinner
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax]     # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Background

- Body Mass index is a calculation based on the weight and height of an individual to enable assessment of whether they are at a healthy weight.

- The calculation is supported by the World Health Organisation

- This **BMICalc** application will allow self assessment of this metric by enabling the user to enter their height (metres) and weight (kg) and the application will return both a BMI score and a banded category for the score. 

- Entry of data is via two slide controls which the users can alter and then hit a submit button to perform the calculation.

---
## Calculation

The BMI equation is as follows: 

## $BMI=\frac{weight}{height^2}$  

THe following is a worked Example for an individual with a height of 1.8 Metres and a Weight of 100 Kg:



```r
height <- 1.8
weight <- 100
BMI <- weight/height^2
BMI
```

```
## [1] 30.86
```

---
## Category
- Once a BMI score is calculated the value is then assessed against a set of ranged categories to understand how healthy the individuals weight is.

- The banded ranges are as follows:

Category| BMI Range
--------|--------
Very severely underweight|  less than 15
Severely underweight|	from 15.0 to 16.0
Underweight|	from 16.0 to 18.5
Normal (healthy weight)|	from 18.5 to 25
Overweight|	from 25 to 30
Obese Class I (Moderately obese)|	from 30 to 35
Obese Class II (Severely obese)|	from 35 to 40
Obese Class III (Very severely obese)|	over 40



---
## Further Information

BMI is a simple indicator to assess how healthy the weight of an individual is, there is some debate on what the category thresholds should be. It is advised that any concerns should be escalated to a health care professional.

Additional information for BMI can be found at the following location:

http://en.wikipedia.org/wiki/Body_mass_index
