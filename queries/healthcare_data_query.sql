SELECT *
, row_number() OVER(partition by name, medical_condition, date_of_admission, doctor, discharge_date order by date_of_admission) as row_nbr
FROM healthcare_dataset_table;