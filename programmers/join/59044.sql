SELECT a.name, a.datetime
FROM animal_ins a left join animal_outs b on a.animal_id = b.animal_id
WHERE b.animal_id is NULL
ORDER BY a.datetime limit 3