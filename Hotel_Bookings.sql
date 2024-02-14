CREATE TABLE HotelBookings (
BookingID INT PRIMARY KEY AUTO_INCREMENT,
ClientName VARCHAR (255),
RoomNumber INT ,
ArrivalDate DATE ,
DepartureDate DATE  ,
PaymentAmount DECIMAL (10,2)
);


INSERT INTO HotelBookings (ClientName, RoomNumber, ArrivalDate, DepartureDate, PaymentAmount)
VALUES ('John Smith', 101, '2024-02-14', '2024-02-18', 500.00);

INSERT INTO HotelBookings (ClientName, RoomNumber, ArrivalDate, DepartureDate, PaymentAmount)
VALUES ('Alice Johnson', 102, '2024-02-20', '2024-02-25', 600.00);

