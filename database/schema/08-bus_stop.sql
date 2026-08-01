-- =====================================================
-- School Bus Transportation Management System
-- Phase 5 - Database Schema
-- File: 08-bus_stop.sql
-- Description: Bus Stop Table
-- =====================================================

CREATE TABLE bus_stop (
    bus_stop_id BIGSERIAL PRIMARY KEY,

    stop_name VARCHAR(100) NOT NULL,
    landmark VARCHAR(255),

    latitude DOUBLE PRECISION NOT NULL,
    longitude DOUBLE PRECISION NOT NULL,

    created_at TIMESTAMPTZ NOT NULL
        DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMPTZ NOT NULL
        DEFAULT CURRENT_TIMESTAMP
);