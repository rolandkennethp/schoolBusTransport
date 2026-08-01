-- =====================================================
-- School Bus Transportation Management System
-- Phase 5 - Database Schema
-- File: 14-indexes.sql
-- Description: Database Indexes
-- =====================================================


-- Student
CREATE INDEX idx_student_parent
ON student(parent_id);

CREATE INDEX idx_student_bus_stop
ON student(bus_stop_id);

CREATE INDEX idx_bus_route
ON bus(route_id);

CREATE INDEX idx_bus_driver
ON bus(driver_id);

-- Route Stop
CREATE INDEX idx_route_stop_route
ON route_stop(route_id);

CREATE INDEX idx_route_stop_bus_stop
ON route_stop(bus_stop_id);

-- Trip
CREATE INDEX idx_trip_bus
ON trip(bus_id);

CREATE INDEX idx_trip_route
ON trip(route_id);

CREATE INDEX idx_trip_driver
ON trip(driver_id);

CREATE INDEX idx_trip_status
ON trip(status);

-- Complaint
CREATE INDEX idx_complaint_parent
ON complaint(parent_id);

CREATE INDEX idx_complaint_admin
ON complaint(admin_id);

CREATE INDEX idx_complaint_status
ON complaint(status);