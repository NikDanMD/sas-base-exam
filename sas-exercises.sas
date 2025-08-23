data work.patients_names;
    set work.patients;
    name = scan(fullname, 2, ",");
run;