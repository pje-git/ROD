SELECT da.id_dzialka, da.numer, da.metraz, dc.imie, dc.nazwisko 
FROM pjrod_dzialka AS da, pjrod_dzialkowiec AS dc
WHERE da.id_dzialka=dc.id_dzialka
