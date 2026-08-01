-- =====================================================
-- School Bus Transportation Management System
-- Phase 5 - Database Schema
-- File: 12-complaint.sql
-- Description: Complaint Table
-- =====================================================

CREATE TABLE complaint (
    complaint_id BIGSERIAL PRIMARY KEY,

    parent_id BIGINT NOT NULL,
    admin_id BIGINT NOT NULL,

    subject VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,

    status complaint_status NOT NULL
        DEFAULT 'filed',

    resolution TEXT,

    created_at TIMESTAMPTZ NOT NULL
        DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMPTZ NOT NULL
        DEFAULT CURRENT_TIMESTAMP
);