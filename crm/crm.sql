-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

DROP TABLE IF EXISTS Contacts;
DROP TABLE IF EXISTS Salespeople;
DROP TABLE IF EXISTS Activity;
DROP TABLE IF EXISTS Companies;
DROP TABLE IF EXISTS Industry;
DROP TABLE IF EXISTS Industry_Membership;

-- CREATE TABLES

CREATE TABLE Contacts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone TEXT
  company_id INTEGER
);

CREATE TABLE Salespeople (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT
);

CREATE TABLE Activity (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  type TEXT,
  date_time TEXT,
  notes TEXT,
  salesperson_id TEXT,
  contact_id
);

CREATE TABLE Companies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);

CREATE TABLE Industry (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE Industry_Membership (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    industry_id INTEGER,
    company_id INTEGER
);
