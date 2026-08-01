-- =====================================================
-- School Bus Transportation Management System
-- Phase 5 - Database Schema
-- File: 09-route.sql
-- Description: Route Table
-- =====================================================

CREATE TABLE route (
    route_id BIGSERIAL PRIMARY KEY,

    route_name VARCHAR(100) NOT NULL,

    status route_status NOT NULL
        DEFAULT 'active',

    total_stops INTEGER NOT NULL,

    estimated_distance DOUBLE PRECISION NOT NULL,

    estimated_duration INTEGER NOT NULL,

    created_at TIMESTAMPTZ NOT NULL
        DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMPTZ NOT NULL
        DEFAULT CURRENT_TIMESTAMP
);