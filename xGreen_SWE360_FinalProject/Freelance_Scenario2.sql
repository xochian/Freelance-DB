--Inner join used to see which agents are currently working on which project.

SELECT a.agent_id, a.first_name || ' ' || a.last_name AS agent_name, pr.project_id, pr.project_name
FROM agent a INNER JOIN projects pr
ON a.agent_id = pr.project_id
ORDER BY a.agent_id;