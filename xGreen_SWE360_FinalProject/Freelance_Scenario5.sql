
--Rank() Differs from rank as dense_rank doesn't have a sequence gap in the event of a tie. 
--OVER defines a window, which is a specified set of rows within a query result. 
SELECT agent_id, SUM(charge) AS Earnings,
RANK() OVER (ORDER BY SUM(charge) DESC) AS dense_rank
FROM invoice
GROUP BY (agent_id)
ORDER BY dense_rank;