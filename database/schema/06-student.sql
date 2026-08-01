-- =====================================================
-- School Bus Transportation Management System
-- Phase 5 - Database Schema
-- File: 06-student.sql
-- Description: Student Table
-- =====================================================

CREATE TABLE student (
    student_id BIGSERIAL PRIMARY KEY,

    parent_id BIGINT NOT NULL,
    bus_stop_id BIGINT NOT NULL,

    full_name VARCHAR(100) NOT NULL,

    grade INTEGER NOT NULL,
    section VARCHAR(10) NOT NULL,

    gender gender NOT NULL,

    created_at TIMESTAMPTZ NOT NULL
        DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMPTZ NOT NULL
        DEFAULT CURRENT_TIMESTAMP
);