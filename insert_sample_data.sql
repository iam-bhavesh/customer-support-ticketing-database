-- Customers
INSERT INTO Customers (Name, Email, RegistrationDate) VALUES
('Priya Singh', 'priya@example.com', '2024-01-10'),
('Albert Lee', 'albertl@example.com', '2024-03-15');

-- Agents
INSERT INTO Agents (Name, Email, Department) VALUES
('Sanjay Das', 'sanjay@example.com', 'Technical'),
('Lisa Gomez', 'lisa@example.com', 'Billing');

-- Tickets
INSERT INTO Tickets (CustomerID, CreatedDate, Subject, Status, Priority, AssignedAgentID)
VALUES
(1, '2025-07-25 09:30:00', 'Unable to login', 'Open', 'High', 1),
(2, '2025-07-28 13:15:00', 'Billing error on invoice', 'Assigned', 'Medium', 2);

-- Ticket Comments
INSERT INTO TicketComments (TicketID, AgentID, CommentText, Timestamp) VALUES
(1, 1, 'Checking login credentials.', '2025-07-25 10:00:00'),
(2, 2, 'Requested copy of invoice.', '2025-07-28 14:00:00');

-- Feedback
INSERT INTO Feedback (TicketID, CustomerID, Rating, Comments, FeedbackDate) VALUES
(1, 1, 5, 'Excellent and quick support!', '2025-07-27');
