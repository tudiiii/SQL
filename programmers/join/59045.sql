SELECT b.animal_id, b.animal_type, b.name
FROM (SELECT *
    FROM animal_ins
    WHERE sex_upon_intake LIKE '%Intact%') a, animal_outs b
WHERE a.animal_id = b.animal_id AND b.sex_upon_outcome not LIKE '%Intact%'
ORDER BY ANIMAL_ID ASC