-- =====================================================
-- School Bus Transportation Management System
-- Phase 5 - Database Schema
-- File: 02-user.sql
-- Description: User Table
-- =====================================================

CREATE TABLE app_user (
    user_id BIGSERIAL PRIMARY KEY,

    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,

    role user_role NOT NULL,

    account_status account_status NOT NULL
        DEFAULT 'active',

    first_login BOOLEAN NOT NULL
        DEFAULT TRUE,

    created_at TIMESTAMPTZ NOT NULL
        DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMPTZ NOT NULL
        DEFAULT CURRENT_TIMESTAMP
);