SELECT
u.first_name as 'Nome',
r.hotel_id as 'Id do Hotel',
ru.check_in as 'Data de Entrada',
ru.check_out as 'Data de Saída'
FROM users as u
INNER JOIN room_users as ru
  ON u.id = ru.user_id
INNER JOIN rooms as r
  on ru.room_id = r.id
INNER JOIN hotels as h
  on r.hotel_id = h.id
WHERE ru.check_out is null;