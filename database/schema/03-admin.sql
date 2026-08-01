-- =====================================================
-- School Bus Transportation Management System
-- Phase 5 - Database Schema
-- File: 03-admin.sql
-- Description: Admin Table
-- =====================================================

CREATE TABLE admin (
    admin_id BIGSERIAL PRIMARY KEY,

    user_id BIGINT NOT NULL UNIQUE,

    full_name VARCHAR(100) NOT NULL,

    email VARCHAR(255) NOT NULL UNIQUE,

    phone_number VARCHAR(20) NOT NULL UNIQUE,

    created_at TIMESTAMPTZ NOT NULL
        DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMPTZ NOT NULL
        DEFAULT CURRENT_TIMESTAMP
);