SELECT
  u.first_name as 'Hospede',
  name as 'Hotel',
  r.price as 'Diária',
  h.star as 'Estrelas',
  ru.check_in as 'Data de Entrada do hospede',
  ru.check_out as 'Data de Saída do hospede'
from users as u
inner JOIN room_users as ru
  on u.id = ru.user_id
INNER JOIN rooms as r
  on ru.room_id = r.id
INNER JOIN hotels as h
  on r.hotel_id = h.id
WHERE h.star >= 3
  and r.price <= 500.00
  and ru.check_out is NOT NULL
