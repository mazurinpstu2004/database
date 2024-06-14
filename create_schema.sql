CREATE SCHEMA investment;

BEGIN;


CREATE TABLE IF NOT EXISTS investment.company
(
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    country_id bigint NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS investment.person
(
    id bigint NOT NULL,
    surname character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS investment.country
(
    id bigint NOT NULL,
    name character varying NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS investment.currency
(
    id bigint NOT NULL,
    name character varying NOT NULL,
    cost double precision,
    country_id bigint NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS investment.stock
(
    id bigint NOT NULL,
    cost double precision NOT NULL,
    company_id bigint NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS investment.person_stock
(
    id bigint NOT NULL,
    person_id bigint NOT NULL,
    stock_id bigint NOT NULL,
    count bigint NOT NULL,
    total_price double precision NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS investment.person_currency
(
    id bigint NOT NULL,
    person_id bigint NOT NULL,
    currency_id bigint NOT NULL,
    count bigint NOT NULL,
    total_cost double precision NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS investment.brocker_account
(
    id bigint NOT NULL,
    currency_id bigint NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS investment.person_brocker_account
(
    id bigint NOT NULL,
    person_id bigint NOT NULL,
    brocker_id bigint,
    balance double precision NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS investment.brocker
(
    id bigint NOT NULL,
    brocker_account_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS investment.operation
(
    id bigint NOT NULL,
    type character varying(255) NOT NULL,
    person_brocker_account_id bigint NOT NULL,
    sum double precision NOT NULL,
    date date NOT NULL,
    "time" time(6) without time zone NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS investment.stock_operation
(
    id bigint NOT NULL,
    person_id bigint NOT NULL,
    type character varying(255) NOT NULL,
    stock_id bigint NOT NULL,
    count bigint NOT NULL,
    cost_sum double precision NOT NULL,
    date date NOT NULL,
    "time" time(6) without time zone NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS investment.currency_operation
(
    id bigint NOT NULL,
    person_id bigint NOT NULL,
    type character varying(255) NOT NULL,
    currency_id bigint NOT NULL,
    count bigint NOT NULL,
    cost_sum double precision NOT NULL,
    date date NOT NULL,
    "time" time(6) without time zone NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS investment.company
    ADD FOREIGN KEY (country_id)
    REFERENCES investment.country (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS investment.currency
    ADD FOREIGN KEY (country_id)
    REFERENCES investment.country (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS investment.stock
    ADD FOREIGN KEY (company_id)
    REFERENCES investment.company (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS investment.person_stock
    ADD FOREIGN KEY (person_id)
    REFERENCES investment.person (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS investment.person_stock
    ADD FOREIGN KEY (stock_id)
    REFERENCES investment.stock (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS investment.person_currency
    ADD FOREIGN KEY (person_id)
    REFERENCES investment.person (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS investment.person_currency
    ADD FOREIGN KEY (currency_id)
    REFERENCES investment.currency (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS investment.brocker_account
    ADD FOREIGN KEY (currency_id)
    REFERENCES investment.currency (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS investment.person_brocker_account
    ADD FOREIGN KEY (person_id)
    REFERENCES investment.person (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS investment.person_brocker_account
    ADD FOREIGN KEY (brocker_id)
    REFERENCES investment.brocker (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS investment.brocker
    ADD FOREIGN KEY (brocker_account_id)
    REFERENCES investment.brocker_account (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS investment.operation
    ADD FOREIGN KEY (person_brocker_account_id)
    REFERENCES investment.person_brocker_account (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS investment.stock_operation
    ADD FOREIGN KEY (stock_id)
    REFERENCES investment.stock (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS investment.stock_operation
    ADD FOREIGN KEY (person_id)
    REFERENCES investment.person (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS investment.currency_operation
    ADD FOREIGN KEY (currency_id)
    REFERENCES investment.currency (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS investment.currency_operation
    ADD FOREIGN KEY (person_id)
    REFERENCES investment.person (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

END;