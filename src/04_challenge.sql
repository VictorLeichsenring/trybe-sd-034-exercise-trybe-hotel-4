SELECT
  u.first_name as 'Nome',
  u.last_name as 'Sobrenome',
  u.email as 'E-mail de Contato',
  u.created_at as 'Data de Registro',
  ru.check_in as 'Data de Entrada',
  ru.check_out as 'Data de Saída'
from users as u
inner JOIN room_users as ru
  on u.id = ru.user_id
WHERE ru.check_in BETWEEN '2023-08-01' AND '2023-10-31';