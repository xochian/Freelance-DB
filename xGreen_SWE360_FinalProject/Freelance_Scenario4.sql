--Subquery to select project_id, agent_id and project_name of projects that have been completed
--in invoice. 

SELECT project_id, agent_id, project_name FROM projects
WHERE (project_id, agent_id) IN
(
    SELECT project_id, agent_id FROM invoice
)
ORDER BY project_id;