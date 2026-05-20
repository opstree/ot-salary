--liquibase formatted sql
-- tetsing


--changeset nvoxland:6
CREATE TABLE test (
    name VARCHAR(255) NOT NULL
);


--changeset nvoxland:7
CREATE TABLE test1 (
    name VARCHAR(255) NOT NULL
);


--changeset nvoxland:8
CREATE TABLE test2 (
    name VARCHAR(255) NOT NULL
);

--changeset nvoxland:20
DROP TABLE IF EXISTS course;

--changeset nvoxland:21
CREATE TABLE test3 (
    name VARCHAR(255) NOT NULL
);

--changeset nvoxland:22
CREATE TABLE test155555 (
    name VARCHAR(255) NOT NULL
);

CREATE TABLE seee123 (
    name VARCHAR(255) NOT NULL
);

CREATE TABLE rrr32 (
    name VARCHAR(255) NOT NULL
);

--changeset buildpiper:23

CREATE TABLE testtable (
    name VARCHAR(255) NOT NULL
);

