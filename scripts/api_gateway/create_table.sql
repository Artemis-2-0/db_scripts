-- Now, create the table inside the gateway schema:
CREATE TABLE gateway.routes (
                                id SERIAL PRIMARY KEY,
                                route_id VARCHAR(255) UNIQUE NOT NULL,
                                uri VARCHAR(255) NOT NULL,
                                predicates TEXT NOT NULL,
                                filters TEXT,
                                enabled BOOLEAN DEFAULT TRUE
);