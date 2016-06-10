---
title: "RBasic"
author: "Marco Chiapello"
date: "06 July 2016"
output: beamer_presentation
---

## Outlook

\textbf{Wednesday afternoon}

- Introduction

- Data types
  
- Data manipulation

- Read Data

- Plotting

\textbf{Thursday morning}

- Exercise

- Work on your data

- Write functions

#============================
## Introduction

R is a free software.

R is a statistical software.

R is powerfull. (This presentation has been made in R)

R has a wide community of supporters

R is popular.

#============================
## Introduction







#============================
## R and RStudio installation

**R** => http://www.r-project.org

**RStudio** => http://www.rstudio.com


## Data types
1. Vector

```r
x <- c(1,2,3,4,5,6,7,8,9)
x
```

```
## [1] 1 2 3 4 5 6 7 8 9
```








2. Matrix

```r
y <- matrix(x, nrow = 3)
y
```

```
##      [,1] [,2] [,3]
## [1,]    1    4    7
## [2,]    2    5    8
## [3,]    3    6    9
```









## Data manipulation


```r
1 + 1
```

```
## [1] 2
```

```r
4 - 5
```

```
## [1] -1
```

```r
2 * 2
```

```
## [1] 4
```

```r
4 / 2
```

```
## [1] 2
```

## Data manipulation

Built-in functions

```r
sqrt(25)
```

```
## [1] 5
```

```r
abs(-2)
```

```
## [1] 2
```

```r
log2(2)
```

```
## [1] 1
```

