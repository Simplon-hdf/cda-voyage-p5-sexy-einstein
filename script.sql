-- Extension for UUID in postgres
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Table Country
CREATE TABLE Country (
    country_id SMALLSERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Table City
CREATE TABLE City (
    city_id SERIAL PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    zipcode VARCHAR(10) NOT NULL,
    country_id SMALLINT NOT NULL REFERENCES Country(country_id)
);

-- Table Airport
CREATE TABLE Airport (
    airport_id SERIAL PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    address VARCHAR(200) NOT NULL,
    city_id INTEGER NOT NULL REFERENCES City(city_id)
);

-- Table Airline
CREATE TABLE Airline (
    airline_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Table Plane
CREATE TABLE Plane (
    plane_id SERIAL PRIMARY KEY,
    capacity SMALLINT NOT NULL,
    registration VARCHAR(10),
    airline_id INTEGER NOT NULL REFERENCES Airline(airline_id)
);

-- Table Person
CREATE TABLE Person (
    person_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    passport_country CHAR(20),
    passport_number VARCHAR(20)
);

-- Table Customer
CREATE TABLE Customer (
    customer_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    email VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    phone_number VARCHAR(30) NOT NULL,
    person_id UUID NOT NULL REFERENCES Person(person_id)
);

-- Table Flight
CREATE TABLE Flight (
    flight_id SERIAL PRIMARY KEY,
    date_of_departure TIMESTAMP(0) NOT NULL,
    date_of_arrival TIMESTAMP(0) NOT NULL,
    plane_id INTEGER NOT NULL REFERENCES Plane(plane_id),
    airport_departure_id INTEGER NOT NULL REFERENCES Airport(airport_id),
    airport_arrival_id INTEGER NOT NULL REFERENCES Airport(airport_id)
);

-- Table Booking
CREATE TABLE Booking (
    booking_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    public_code CHAR(7) NOT NULL,
    booking_date TIMESTAMP(0) NOT NULL,
    price MONEY NOT NULL,
    customer_id UUID NOT NULL REFERENCES Customer(customer_id),
    passenger_id UUID NOT NULL REFERENCES Person(person_id)
);

-- Table Booking_Flight (relation n-n)
CREATE TABLE Booking_Flight (
    booking_id UUID NOT NULL REFERENCES Booking(booking_id),
    flight_id INTEGER NOT NULL REFERENCES Flight(flight_id),
    PRIMARY KEY (booking_id, flight_id)
);