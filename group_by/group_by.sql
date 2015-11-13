SELECT count(*), town FROM customer GROUP BY town ORDER BY town;
SELECT count(*), town FROM customer GROUP BY town HAVING count(*) > 1 ORDER BY town;
SELECT count(*), town FROM customer WHERE town <> 'Bingham' GROUP BY town HAVING count(*) > 1 ORDER BY town;