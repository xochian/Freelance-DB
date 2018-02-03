

-- -- -- Client 1, Jason McSmithy
INSERT INTO clients
(
    client_id, first_name, last_name, email, phone, registration_date
)
VALUES
(
    client_id_seq.nextval, 'Jason', 'McSmithy', 'GoodOlMcSmithy@gmail.com', '555-420-6969', '04-APR-2016'
);

-- -- -- Agent 1, Roy Farbers
INSERT INTO agent
(
    agent_id, first_name, last_name, email, phone, registration_date
)
VALUES
(
    agent_id_seq.nextval, 'Roy', 'Farbers', 'RQF@yahoo.com', '555-144-1337', '04-APR-2016'
);

-- -- -- Project 1, requested by Jason Mcsmithy
INSERT INTO projects
(
    project_id, client_id, agent_id, project_name, status
)
VALUES
(
    project_id_seq.nextval, client_id_seq.currval, agent_id_seq.currval, 'Gene Expression Database', 
    'In Progress'
);

-------Below is probably broken, inserted in wrong order, RIP.
INSERT INTO projects
(
    project_id, client_id, agent_id, project_name, status
)
VALUES
(
    project_id_seq.nextval, client_id_seq.currval, agent_id_seq.currval, 'Gene Drift Database', 
    'Complete'
);

INSERT INTO invoice
(
    invoice_id, client_id, agent_id, project_id, inquiry_date, charge
)
VALUES
(
    invoice_id_seq.nextval, client_id_seq.currval, agent_id_seq.currval, project_id_seq.currval, '19-APR-2016',
     14800
);

INSERT INTO transaction
(
    transaction_id, invoice_id, transaction_date
)
VALUES
(
    transaction_id_seq.nextval, invoice_id_seq.currval, '25-APR-2016'
);



-- -- -- Agent2, Billy Manguy
INSERT INTO agent
(
    agent_id, first_name, last_name, email, phone, registration_date
)
VALUES
(
    agent_id_seq.nextval, 'Billy', 'Manguy', 'BMANGUY@yahoo.com', '555-933-1777', '04-JUL-2016'
);

-- -- -- Project2, requested by Jason Mcsmithy
INSERT INTO projects
(
    project_id, client_id, agent_id, project_name, status
)
VALUES
(
    project_id_seq.nextval, client_id_seq.currval, agent_id_seq.currval, 'Gene Disease Database', 
    'In Progress'
);

-- -- -- Agent3, Yam Sogud
INSERT INTO agent
(
    agent_id, first_name, last_name, email, phone, registration_date
)
VALUES
(
    agent_id_seq.nextval, 'Yam', 'Sogud', 'YAMSO@yahoo.com', '555-945-5693', '09-JUL-2014'
);

-- -- -- Project3, requested still by Jason Mcsmithy
INSERT INTO projects
(
    project_id, client_id, agent_id, project_name, status
)
VALUES
(
    project_id_seq.nextval, client_id_seq.currval, agent_id_seq.currval, 'Gene Sequence Database', 
    'Complete'
);

-- -- -- Invoice1, Yam completed Gene Sequence DB
INSERT INTO invoice
(
    invoice_id, client_id, agent_id, project_id, inquiry_date, charge
)
VALUES
(
    invoice_id_seq.nextval, client_id_seq.currval, agent_id_seq.currval, project_id_seq.currval, '18-APR-2016',
     5800
);

-- -- -- Yam was paid 4 days later, he's sogud. 
INSERT INTO transaction
(
    transaction_id, invoice_id, transaction_date
)
VALUES
(
    transaction_id_seq.nextval, invoice_id_seq.currval, '22-APR-2016'
);



--Inquiry/Transaction not needed for client/agent 1 and 2, as the projects are still in progress.

-- -- -- Client 2, good ol jimmy
INSERT INTO clients
(
    client_id, first_name, last_name, email, phone, registration_date
)
VALUES
(
    client_id_seq.nextval, 'Jimmy', 'McGee', 'DatJimmy@gmail.com', '555-696-6969', '03-APR-2016'
);

--Agent 4, Seth Royson
INSERT INTO agent
(
    agent_id, first_name, last_name, email, phone, registration_date
)
VALUES
(
    agent_id_seq.nextval, 'Seth', 'Royson', 'SethRoy@outlook.com', '555-334-0193', '01-MAR-2016'
);

--Project 4, requested by Good ol Jimmy
INSERT INTO projects
(
    project_id, client_id, agent_id, project_name, status
)
VALUES
(
    project_id_seq.nextval, client_id_seq.currval, agent_id_seq.currval, 'Flight Simulation GUI', 
    'In Progress'
);


-- -- --Good ol Jacob Goodman, client 3
INSERT INTO clients
(
    client_id, first_name, last_name, email, phone, registration_date
)
VALUES
(
    client_id_seq.nextval, 'Jacob', 'Goodman', 'GoodmanJake@fea.st', '555-444-6119', '07-JUN-2015'
);

-- -- -- Good ol ricky, agent 5
INSERT INTO agent
(
    agent_id, first_name, last_name, email, phone, registration_date
)
VALUES
(
    agent_id_seq.nextval, 'Ricky', 'Spanish', 'Rspanish@name.com', '555-333-8746', '09-MAR-2016'
);

-- -- -- More projects by the original 3 clients
INSERT INTO projects
(
    project_id, client_id, agent_id, project_name, status
)
VALUES
(
    project_id_seq.nextval, client_id_seq.currval, agent_id_seq.currval, 'Firmware Development', 
    'In Progress'
);

--Agent 3, TopMan
INSERT INTO agent
(
    agent_id, first_name, last_name, email, phone, registration_date
)
VALUES
(
    agent_id_seq.nextval, 'Topman', 'Jones', 'TMAN@gmail.com', '555-189-1007', '02-JAN-2016'
);

--Project 3, requested by Goodman Jake
INSERT INTO projects
(
    project_id, client_id, agent_id, project_name, status
)
VALUES
(
    project_id_seq.nextval, client_id_seq.currval, agent_id_seq.currval, 'Interactive Website about Bacon', 
    'Complete'
);

INSERT INTO projects
(
    project_id, client_id, project_name, status
)
VALUES
(
    project_id_seq.nextval, client_id_seq.currval, 'Bacon Facts Database', 'Not active'
);

INSERT INTO projects
(
    project_id, client_id, project_name, status
)
VALUES
(
    project_id_seq.nextval, client_id_seq.currval, 'Vegan Facts Database', 'Not active'
);

INSERT INTO invoice
(
    invoice_id, client_id, agent_id, project_id, inquiry_date, charge
)
VALUES
(
    invoice_id_seq.nextval, client_id_seq.currval, agent_id_seq.currval, project_id_seq.currval, '5-APR-2016',
     5800
);

INSERT INTO transaction
(
    transaction_id, invoice_id, transaction_date
)
VALUES
(
    transaction_id_seq.nextval, invoice_id_seq.currval, '7-APR-2016'
);

INSERT INTO projects
(
    project_id, client_id, agent_id, project_name, status
)
VALUES
(
    project_id_seq.nextval, client_id_seq.currval, agent_id_seq.currval, 'The Goodman Jake Foundation Website', 
    'Complete'
);

INSERT INTO invoice
(
    invoice_id, client_id, agent_id, project_id, inquiry_date, charge
)
VALUES
(
    invoice_id_seq.nextval, client_id_seq.currval, agent_id_seq.currval, project_id_seq.currval, '6-APR-2016',
     9800
);

INSERT INTO transaction
(
    transaction_id, invoice_id, transaction_date
)
VALUES
(
    transaction_id_seq.nextval, invoice_id_seq.currval, '9-APR-2016'
);










