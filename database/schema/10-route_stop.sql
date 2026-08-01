-- =====================================================
-- School Bus Transportation Management System
-- Phase 5 - Database Schema
-- File: 10-route_stop.sql
-- Description: Route Stop Table
-- =====================================================

CREATE TABLE route_stop (
    route_stop_id BIGSERIAL PRIMARY KEY,

    route_id BIGINT NOT NULL,
    bus_stop_id BIGINT NOT NULL,

    stop_order INTEGER NOT NULL,

    UNIQUE (route_id, stop_order),

    created_at TIMESTAMPTZ NOT NULL
        DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMPTZ NOT NULL
        DEFAULT CURRENT_TIMESTAMP
);