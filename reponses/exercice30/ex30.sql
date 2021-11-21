select ticket.NUMERO_TICKET
from ticket
where exists (select ventes.NUMERO_TICKET from ventes where ventes.QUANTITE is null);