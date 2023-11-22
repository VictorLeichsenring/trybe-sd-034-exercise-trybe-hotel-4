SELECT 
    u.first_name AS Nome,
    u.last_name AS Sobrenome,
    r.price AS Diária,
    h.id AS "Id do Hotel"
FROM 
    users u
INNER JOIN 
    room_users as ru
      ON u.id = ru.user_id
INNER JOIN 
    rooms as r
      ON ru.room_id = r.id
INNER JOIN 
    hotels as h
      ON r.hotel_id = h.id;
