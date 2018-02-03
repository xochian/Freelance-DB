--Simple and Agregate functions. 

--DECODE used to clearly display status open projects
SELECT project_name,
DECODE(status, 'In Progress', 'Closed', 'Complete', 'Closed', 'Open') FROM projects;

--Displaying average charge of all projects
SELECT AVG(charge) FROM invoice;