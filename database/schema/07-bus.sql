-- =====================================================
-- School Bus Transportation Management System
-- Phase 5 - Database Schema
-- File: 07-bus.sql
-- Description: Bus Table
-- =====================================================

CREATE TABLE bus (
    bus_id BIGSERIAL PRIMARY KEY,

    route_id BIGINT NOT NULL UNIQUE,
    driver_id BIGINT NOT NULL,

    bus_number VARCHAR(20) NOT NULL UNIQUE,
    registration_number VARCHAR(20) NOT NULL UNIQUE,

    capacity INTEGER NOT NULL,

    status bus_status NOT NULL
        DEFAULT 'available',

    created_at TIMESTAMPTZ NOT NULL
        DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMPTZ NOT NULL
        DEFAULT CURRENT_TIMESTAMP
);