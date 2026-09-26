USE cdg_hyd_jfs_058;

CREATE TABLE support_tickets (
    ticket_id INT AUTO_INCREMENT PRIMARY KEY,

    ticket_number VARCHAR(20) NOT NULL UNIQUE,

    requester_name VARCHAR(120) NOT NULL,
    requester_email VARCHAR(120) NOT NULL,

    subject VARCHAR(200) NOT NULL,
    description TEXT NOT NULL,

    category VARCHAR(20) NOT NULL,
    priority VARCHAR(20) NOT NULL DEFAULT 'MEDIUM',
    ticket_status VARCHAR(20) NOT NULL DEFAULT 'OPEN',

    assigned_agent VARCHAR(120) NULL,

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    resolved_at TIMESTAMP NULL,

    last_updated_at TIMESTAMP NOT NULL
        DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    CHECK (category IN ('BILLING', 'TECHNICAL', 'ACCOUNT', 'GENERAL')),

    CHECK (priority IN ('LOW', 'MEDIUM', 'HIGH', 'CRITICAL')),

    CHECK (ticket_status IN ('OPEN', 'IN_PROGRESS', 'RESOLVED', 'CLOSED')),

    CHECK (
        resolved_at IS NULL
        OR resolved_at >= created_at
    )
);

INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject,
description, category)
VALUES
('TCK001', 'Rushi', 'rushi@example.com',
'Login Issue', 'Unable to login to the dashboard.',
'TECHNICAL');

INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject,
description, category, priority, ticket_status, assigned_agent)
VALUES
('TCK002', 'Sujay', 'sujay@example.com',
'Payment Issue', 'Payment was deducted twice.',
'BILLING', 'HIGH', 'IN_PROGRESS', 'Uday');

INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject,
description, category, priority, ticket_status)
VALUES
('TCK003', 'Sai', 'sai@example.com',
'Password Reset', 'Unable to reset account password.',
'ACCOUNT', 'MEDIUM', 'OPEN');

INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject,
description, category, priority, ticket_status, assigned_agent)
VALUES
('TCK004', 'Sidhu', 'sidhu@example.com',
'Application Error', 'Application crashes after login.',
'TECHNICAL', 'CRITICAL', 'IN_PROGRESS', 'Rushi');

INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject,
description, category, priority, ticket_status)
VALUES
('TCK005', 'Uday', 'uday@example.com',
'General Question', 'Need information about available services.',
'GENERAL', 'LOW', 'OPEN');

SELECT * FROM support_tickets;