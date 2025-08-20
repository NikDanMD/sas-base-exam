data work.class;
    set sashelp.class;
    
    if sex = 'F' and age < 13 then status = "young girl";
    else sex = 'F' and age >= 13 then status = "teen girl";
    else status = "boy";
run;

proc print data = work.class noobs;
run;
