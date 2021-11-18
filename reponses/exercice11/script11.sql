SELECT Numero_ticket as 'Numero ticket', sum(quantite) as somme
from ventes 
group by Numero_ticket
having somme > 500



