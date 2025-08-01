-- List all open tickets with customer name and assigned agent
SELECT t.TicketID, t.Subject, t.Status, c.Name AS Customer, a.Name AS Agent
FROM Tickets t
JOIN Customers c ON t.CustomerID = c.CustomerID
LEFT JOIN Agents a ON t.AssignedAgentID = a.AgentID
WHERE t.Status = 'Open';

-- Find average ticket resolution time for each agent
SELECT a.Name, AVG(TIMESTAMPDIFF(HOUR, t.CreatedDate, t.ResolvedDate)) AS AvgResolutionHours
FROM Tickets t
JOIN Agents a ON t.AssignedAgentID = a.AgentID
WHERE t.ResolvedDate IS NOT NULL
GROUP BY a.AgentID;

-- Number of tickets handled by each agent
SELECT a.Name, COUNT(*) AS TicketsHandled
FROM Tickets t
JOIN Agents a ON t.AssignedAgentID = a.AgentID
GROUP BY a.AgentID;

-- Overall customer feedback rating
SELECT AVG(Rating) AS AverageFeedback FROM Feedback;

-- Recent activity for a given ticket (e.g., Ticket #1)
SELECT CommentText, Timestamp FROM TicketComments WHERE TicketID = 1 ORDER BY Timestamp DESC;
