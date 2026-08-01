-- =====================================================
-- School Bus Transportation Management System
-- Phase 5 - Database Schema
-- File: 01-enums.sql
-- Description: PostgreSQL ENUM Types
-- =====================================================

-- User Roles
CREATE TYPE user_role AS ENUM (
    'admin',
    'parent',
    'driver'
);

-- Account Status
CREATE TYPE account_status AS ENUM (
    'active',
    'inactive'
);

-- Bus Status
CREATE TYPE bus_status AS ENUM (
    'available',
    'in_service',
    'maintenance'
);

-- Route Status
CREATE TYPE route_status AS ENUM (
    'active',
    'inactive'
);

-- Trip Status
CREATE TYPE trip_status AS ENUM (
    'scheduled',
    'in_progress',
    'completed',
    'cancelled'
);

-- Complaint Status
CREATE TYPE complaint_status AS ENUM (
    'filed',
    'viewed',
    'resolved',
    'closed'
);

-- Gender
CREATE TYPE gender AS ENUM (
    'male',
    'female',
    'other'
);