SELECT Numero_ticket as 'Numero ticket', sum(quantite)
from ventes 
group by  Numero_ticket
order by sum(quantite) DESC;