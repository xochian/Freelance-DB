SET PAGESIZE 999
SET LINESIZE 250

DROP VIEW charge_totals_view;

--View is predefined Query. Using it here with a join on agent, projects, invoice table to display more information. 
--Added a read only constraint so insertions cannot be done that would mess up the sequences.
CREATE OR REPLACE VIEW charge_totals_view AS 
SELECT a.agent_id, a.first_name || ' ' || a.last_name AS agent_name, pr.project_id, pr.project_name, 
pr.status, iv.charge
FROM agent a, projects pr, invoice iv
WHERE a.agent_id = pr.project_id
AND pr.project_id = iv.invoice_id
ORDER BY a.agent_id
WITH READ ONLY CONSTRAINT charge_totals_view_read_only;

SELECT * FROM charge_totals_view;