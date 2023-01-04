CREATE TABLE admins (
    id serial PRIMARY KEY,
    first_name VARCHAR ( 50 ) NOT NULL,
    last_name VARCHAR ( 50 ) NOT NULL,
    gender VARCHAR ( 10 ) NOT NULL,
    address VARCHAR ( 50 ) NOT NULL,
    email VARCHAR ( 50 ) NOT NULL,
    pass VARCHAR ( 50 ) NOT NULL,
    age INT NOT NULL,
    created_at TIMESTAMP DEFAULT now()
);

CREATE TABLE customer (
    id serial PRIMARY KEY,
    first_name VARCHAR ( 50 ) NOT NULL,
    last_name VARCHAR ( 50 ) NOT NULL,
    gender VARCHAR ( 10 ) NOT NULL,
    address VARCHAR ( 50 ) NOT NULL,
    email VARCHAR ( 50 ) NOT NULL,
    pass VARCHAR ( 50 ) NOT NULL,
    age INT NOT NULL,
    created_at TIMESTAMP DEFAULT now()
);


CREATE TABLE drivers (
    id serial PRIMARY KEY,
    name VARCHAR ( 50 ) NOT NULL,
    commission VARCHAR ( 50 ) NOT NULL,
    created_at TIMESTAMP DEFAULT now()
);

CREATE TABLE rentals (
    id serial PRIMARY KEY,
    rent_date  DATE NOT NULL,
    time_depart TIMESTAMP,
    time_arrive TIMESTAMP, 
    destination VARCHAR(100),
    date_return DATE,
    payment numeric(12, 2),
    created_at TIMESTAMP DEFAULT now()
);

CREATE TABLE cars (
    id serial PRIMARY KEY,
    number VARCHAR ( 50 ) UNIQUE NOT NULL,
    model VARCHAR ( 50 ) NOT NULL,
    status VARCHAR ( 50 ) NOT NULL, -- busy|free|broken
    driver_id INT NOT NULL,
  
  FOREIGN KEY (driver_id)
      REFERENCES drivers (id)

);


CREATE TABLE regions (
    id serial PRIMARY KEY,
    name VARCHAR ( 50 ) NOT NULL
);

CREATE TABLE transaction (
    id serial PRIMARY KEY,
    rental_id  INT NOT NULL,
    car_id  INT NOT NULL,
    customer_id  INT NOT NULL,
    admin_id  INT NOT NULL,
    created_at TIMESTAMP DEFAULT now(),
    region_id  INT NOT NULL,

    FOREIGN KEY (rental_id) REFERENCES rentals (id),
    FOREIGN KEY (car_id) REFERENCES cars (id),
    FOREIGN KEY (customer_id) REFERENCES customer (id),
    FOREIGN KEY (admin_id) REFERENCES admins (id),
    FOREIGN KEY (region_id) REFERENCES regions (id)
);
