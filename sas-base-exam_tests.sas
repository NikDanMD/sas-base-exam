/* 1. Create mock Q1 sales data */
data q1_sales;
    input month $ sales;
    quarter = "Q1";
    datalines;
Jan 1000
Feb 1200
Mar 900
;
run;

/* 2. Create mock Q2 sales data */
data q2_sales;
    input month $ sales;
    quarter = "Q2";
    datalines;
Apr 1500
May 1600
Jun 1400
;
run;

/* 3. Assign permanent library (adjust path as needed) */
libname saleslib "/home/u64285960/";

/* 4. Combine into permanent dataset */
data saleslib.first_half_sales;
    set q1_sales q2_sales;
run;

/* 5. Check contents of the permanent dataset */
proc contents data=saleslib.first_half_sales;
run;

/* 6. Preview data to verify order */
proc print data=saleslib.first_half_sales;
run;
