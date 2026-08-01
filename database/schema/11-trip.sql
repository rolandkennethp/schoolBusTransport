-- =====================================================
-- School Bus Transportation Management System
-- Phase 5 - Database Schema
-- File: 11-trip.sql
-- Description: Trip Table
-- =====================================================

CREATE TABLE trip (
    trip_id BIGSERIAL PRIMARY KEY,

    bus_id BIGINT NOT NULL,
    route_id BIGINT NOT NULL,
    driver_id BIGINT NOT NULL,

    start_time TIMESTAMPTZ,
    end_time TIMESTAMPTZ,

    status trip_status NOT NULL
        DEFAULT 'scheduled',

    created_at TIMESTAMPTZ NOT NULL
        DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMPTZ NOT NULL
        DEFAULT CURRENT_TIMESTAMP
);