data work.patients_num;
    set work.patients;
    id_num = input(id_char, 8.);
    age_num = input(age_char, 8.);
    age_note = "Age: 25" || put(age_num, best.);
run; 

