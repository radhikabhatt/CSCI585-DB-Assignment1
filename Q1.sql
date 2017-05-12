CREATE TABLE HotelStays(
 roomNum INTEGER NOT NULL,
 during tsrange NOT NULL,
 guestName CHAR(30) NOT NULL,
 EXCLUDE USING gist(roomNum WITH =, during WITH&&)
);

INSERT INTO HotelStays VALUES(123, '[2010-01-01, 2010-02-01]', 'Test User1')
INSERT INTO HotelStays VALUES(124, '[2010-01-01, 2010-02-01]', 'Test User1')