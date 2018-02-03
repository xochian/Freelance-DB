SET LINESIZE 300
SET PAGESIZE 300

DROP TABLE transaction;
DROP TABLE invoice;
DROP TABLE projects;
DROP TABLE agent;
DROP TABLE clients;

CREATE TABLE clients
(
    client_id INTEGER CONSTRAINT clients_pk PRIMARY KEY,
    first_name VARCHAR2(20) NOT NULL,
    last_name VARCHAR2(20) NOT NULL,
    email VARCHAR2(40) NOT NULL,
    phone VARCHAR2(13) NOT NULL,
    registration_date DATE NOT NULL
);

CREATE TABLE agent
(
    agent_id INTEGER CONSTRAINT agent_pk PRIMARY KEY,
    first_name VARCHAR2(20) NOT NULL,
    last_name VARCHAR2(20) NOT NULL,
    email VARCHAR2(40) NOT NULL,
    phone VARCHAR2(13) NOT NULL,
    registration_date DATE NOT NULL
);

CREATE TABLE projects
(
    project_id INTEGER CONSTRAINT projects_pk PRIMARY KEY,
    client_id INTEGER CONSTRAINT projects_fk_clients REFERENCES clients(client_id),
    agent_id INTEGER CONSTRAINT projects_fk_agent REFERENCES agent(agent_id),
    project_name VARCHAR2(40) NOT NULL,
    status VARCHAR2(12) NOT NULL
);

CREATE TABLE invoice
(
    invoice_id INTEGER CONSTRAINT invoice_pk PRIMARY KEY,
    client_id INTEGER CONSTRAINT invoice_fk_cases REFERENCES clients(client_id),
    agent_id INTEGER CONSTRAINT invoice_fk_agent REFERENCES agent(agent_id),
    project_id INTEGER CONSTRAINT invoice_fk_projects REFERENCES projects(project_id),
    inquiry_date DATE NOT NULL,
    charge INTEGER NOT NULL
);

CREATE TABLE transaction
(
    transaction_id INTEGER CONSTRAINT transaction_pk PRIMARY KEY,
    invoice_id INTEGER CONSTRAINT transaction_fk_invoice REFERENCES invoice(invoice_id),
    transaction_date DATE NOT NULL
);


