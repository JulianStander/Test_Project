#'---
#'title: "Simple Example"
#'author: "Julian Stander"
#'date: "04/02/2018"
#'output: github_document
#'---

#+ r setup, include = FALSE
knitr::opts_chunk$set(comment = "#", message = FALSE, warning = FALSE) 


#+ r set-options, echo = FALSE, cache = FALSE
options(width = 60)



#' # Comparing the Underlying Means of Two Groups

#' ## Comparing the Underlying Means of Two Groups

#+ r, echo = FALSE
setwd("/Users/julianstander/Dropbox/MATH500/Practicals/Practical_9_t_test_ANOVA")
library(readr)
qd <- read_csv("MATH500_Questionnaire_Data.csv")
library(ggplot2)
ggplot(qd, aes(x = Sex, y = Height, fill = Sex)) + 
    geom_boxplot(varwidth = TRUE) +
    labs(x = "Gender", y = "Height (cms)") +
  theme(axis.title = element_text(size = 20, color = "black"), # Customize the titles of both axes 
        axis.text = element_text(size = 18, color = "black"), # Customize the text of both axes
        legend.title = element_text(size = 20, color = "black"),
        legend.text = element_text(size = 18, color = "black")) # Customize the facet text



#' ## Comparing the Underlying Means of Two Groups, continued

#' We can ask: 

#' - Is there an \textcolor{red}{underlying difference in mean} height between females and males?

#' This is a __profound question__.  We are not asking whether there is a difference
#' between the mean height of females and the mean height of males in the
#' data collected. 

#' We are asking, _more generally_, whether there is
#' a difference between the mean height of females and the mean height of males in
#' a much bigger _population_.


#' ## $t$-test: Underlying Difference in Mean

#'To answer this question, we can use a $t$-test:


#+ r fred
t.test(Height ~ Sex, data = qd, var.equal = TRUE)


