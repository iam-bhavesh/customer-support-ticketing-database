-- Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Email VARCHAR(100),
    RegistrationDate DATE
);

-- Agents table
CREATE TABLE Agents (
    AgentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Department VARCHAR(50)
);

-- Tickets table
CREATE TABLE Tickets (
    TicketID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    CreatedDate DATETIME,
    Subject VARCHAR(200),
    Status VARCHAR(30),
    Priority VARCHAR(10),
    AssignedAgentID INT,
    ResolvedDate DATETIME,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (AssignedAgentID) REFERENCES Agents(AgentID)
);

-- Ticket Comments table
CREATE TABLE TicketComments (
    CommentID INT PRIMARY KEY AUTO_INCREMENT,
    TicketID INT,
    AgentID INT,
    CommentText TEXT,
    Timestamp DATETIME,
    FOREIGN KEY (TicketID) REFERENCES Tickets(TicketID),
    FOREIGN KEY (AgentID) REFERENCES Agents(AgentID)
);

-- Feedback table
CREATE TABLE Feedback (
    FeedbackID INT PRIMARY KEY AUTO_INCREMENT,
    TicketID INT,
    CustomerID INT,
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    Comments TEXT,
    FeedbackDate DATE,
    FOREIGN KEY (TicketID) REFERENCES Tickets(TicketID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
