-- =====================================================
-- School Bus Transportation Management System
-- Phase 5 - Database Schema
-- File: 13-constraints.sql
-- Description: Foreign Keys & Constraints
-- =====================================================

-- Admin
ALTER TABLE admin
ADD CONSTRAINT fk_admin_user
FOREIGN KEY (user_id)
REFERENCES app_user(user_id)
ON DELETE RESTRICT;

-- Parent
ALTER TABLE parent
ADD CONSTRAINT fk_parent_user
FOREIGN KEY (user_id)
REFERENCES app_user(user_id)
ON DELETE RESTRICT;

-- Driver
ALTER TABLE driver
ADD CONSTRAINT fk_driver_user
FOREIGN KEY (user_id)
REFERENCES app_user(user_id)
ON DELETE RESTRICT;

-- Student
ALTER TABLE student
ADD CONSTRAINT fk_student_parent
FOREIGN KEY (parent_id)
REFERENCES parent(parent_id)
ON DELETE RESTRICT;

ALTER TABLE student
ADD CONSTRAINT fk_student_bus_stop
FOREIGN KEY (bus_stop_id)
REFERENCES bus_stop(bus_stop_id)
ON DELETE RESTRICT;

-- Route Stop
ALTER TABLE route_stop
ADD CONSTRAINT fk_route_stop_route
FOREIGN KEY (route_id)
REFERENCES route(route_id)
ON DELETE RESTRICT;

ALTER TABLE route_stop
ADD CONSTRAINT fk_route_stop_bus_stop
FOREIGN KEY (bus_stop_id)
REFERENCES bus_stop(bus_stop_id)
ON DELETE RESTRICT;

-- Bus
ALTER TABLE bus
ADD CONSTRAINT fk_bus_route
FOREIGN KEY (route_id)
REFERENCES route(route_id)
ON DELETE RESTRICT;

ALTER TABLE bus
ADD CONSTRAINT fk_bus_driver
FOREIGN KEY (driver_id)
REFERENCES driver(driver_id)
ON DELETE RESTRICT;

-- Trip
ALTER TABLE trip
ADD CONSTRAINT fk_trip_bus
FOREIGN KEY (bus_id)
REFERENCES bus(bus_id)
ON DELETE RESTRICT;

ALTER TABLE trip
ADD CONSTRAINT fk_trip_route
FOREIGN KEY (route_id)
REFERENCES route(route_id)
ON DELETE RESTRICT;

ALTER TABLE trip
ADD CONSTRAINT fk_trip_driver
FOREIGN KEY (driver_id)
REFERENCES driver(driver_id)
ON DELETE RESTRICT;

-- Complaint
ALTER TABLE complaint
ADD CONSTRAINT fk_complaint_parent
FOREIGN KEY (parent_id)
REFERENCES parent(parent_id)
ON DELETE RESTRICT;

ALTER TABLE complaint
ADD CONSTRAINT fk_complaint_admin
FOREIGN KEY (admin_id)
REFERENCES admin(admin_id)
ON DELETE RESTRICT;