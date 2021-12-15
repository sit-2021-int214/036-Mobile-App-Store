# Hypothesis Testing

## Question
ค่าเฉลี่ยของราคา Application จากตัวอย่าง 150 application จะมีค่าไม่เท่ากับ 57.65 บาท ซึ่งเป็นค่าเฉลี่ยของราคา Application ทั้งหมด (กำหนดค่า alpha = 0.05)

### Step 0 : Import Libray & CSV
```
library("dplyr")
library("readr")

data <- read.csv("https://raw.githubusercontent.com/sit-2021-int214/036-Mobile-App-Store/main/)
```

### Step 1 : State the Hypothesis
```
Ho: mue0 = 57.6556
Ha: mue0 != 57.6556
```
### Step 2 : Level of Significance
```
alpha = 0.05 
```

### Step 3 : Test Statistic
```
t <- (sample_price_mean-mue0)/(sample_price_sd*(sqrt(n)))
```
Result
```
t = 0.00507
```

### Step 4 : Finding P-Value for T Approach
```
pvalue <- pt(t, n-1, lower.tail = TRUE)
```
Result
```
pvalue = 0.502
```

### Step 5 : Compare P-value with alpha 
```
if(pvalue <= alpha) { 
  print('Reject Ho')
} else {
  print('Accept Ho')
}
```
Result
```
Accept Ho
```

### Step 6 : Interval Estimation
```
se_of_mean <- sample_price_mean/sqrt(n)
margin <- 1.96*se_of_mean
upper <- sample_price_mean + margin
lower <- sample_price_mean - margin
```
Result
```
upper = 79.3758
lower = 57.4751
# 79.3758 < sample_price_mean < 57.4751
```

### Step 7 : Conclusion
ค่าเฉลี่ยของราคา Application จากตัวอย่าง 150 application จะมีค่าไม่เท่ากับ 57.65 บาท ซึ่งเป็นค่าเฉลี่ยของราคา Application ทั้งหมด
