# School Bus Transportation Management System

# Phase 5 - Database Design

## Purpose

This document defines the database design standards and conventions used throughout the School Bus Transportation Management System.

It establishes the rules that every database object must follow before the SQL schema is implemented.

This document serves as the foundation for:

- SQL Schema
- Spring Boot JPA Entities
- Prisma/ORM Mapping (if used)
- Future Database Maintenance

---

# Database

Database Engine

- PostgreSQL

---

# Design Decisions

## 1. Primary Key Strategy

Every table uses:

BIGSERIAL

Example:

user_id BIGSERIAL PRIMARY KEY

Reason:

- Auto-incrementing
- Efficient indexing
- Supports very large datasets

---

## 2. Naming Convention

Database objects use:

snake_case

Examples:

user_name

created_at

license_expiry_date

route_stop

trip_status

---

## 3. Table Naming

All tables use singular names.

Examples:

user

student

parent

driver

bus

route

trip

complaint

---

## 4. Audit Columns

Every table includes:

created_at

updated_at

These columns automatically record when data is created and last modified.

---

## 5. Delete Strategy

The system uses:

Hard Delete

Deleted records are permanently removed from the database.

Exceptions may be introduced in future versions if audit or legal requirements change.

---

## 6. Foreign Key Delete Behavior

All foreign keys use:

ON DELETE RESTRICT

Reason:

- Prevent accidental data loss
- Preserve referential integrity
- Force administrators to remove dependent records first

---

## 7. Default Values

Sensible default values are used wherever appropriate.

Examples include:

- Boolean flags default to FALSE where applicable.
- Account status defaults to ACTIVE.
- First login status defaults to TRUE.
- created_at defaults to CURRENT_TIMESTAMP.

Defaults are applied only when they reflect expected system behavior.

---

## 8. ENUM Usage

PostgreSQL ENUM types are used for fields with a fixed set of valid values.

ENUMs include:

- User Role
- Account Status
- Bus Status
- Route Status
- Trip Status
- Complaint Status
- Gender

Reason:

- Prevent invalid values
- Improve data consistency
- Simplify validation

---

## 9. GPS Coordinates

Latitude and Longitude use:

DOUBLE PRECISION

Reason:

- Higher precision
- Better suitability for mapping and navigation

---

## 10. Password Storage

User passwords are stored using:

BCrypt

Plain text passwords are never stored.

Password verification is performed by Spring Security.

---

## 11. Timestamp Type

All date-time values use:

TIMESTAMPTZ

Examples include:

- created_at
- updated_at
- start_time
- end_time

Fields that store only a calendar date use:

DATE

Examples include:

- license_expiry_date

Reason:

- Stores timestamps with timezone awareness.
- PostgreSQL stores timestamps internally in UTC and converts them to the session timezone when queried.
- Prevents timezone-related issues across different environments.
- Recommended for modern Spring Boot and PostgreSQL applications.

---

# Data Type Standards

| Data          | PostgreSQL Type  |
| ------------- | ---------------- |
| Primary Key   | BIGSERIAL        |
| Name          | VARCHAR          |
| Email         | VARCHAR          |
| Phone Number  | VARCHAR          |
| Password      | VARCHAR          |
| Description   | TEXT             |
| Status        | ENUM             |
| Date          | DATE             |
| Date & Time   | TIMESTAMPTZ      |
| Latitude      | DOUBLE PRECISION |
| Longitude     | DOUBLE PRECISION |
| Integer Count | INTEGER          |
| Boolean       | BOOLEAN          |

---

# General Design Principles

The database follows these principles:

- Normalize data to reduce redundancy.
- Separate authentication from business data.
- Enforce referential integrity using foreign keys.
- Use PostgreSQL ENUMs for fixed-value fields.
- Store GPS coordinates using DOUBLE PRECISION.
- Use BIGSERIAL for all primary keys.
- Use snake_case naming throughout the database.
- Use singular table names.
- Include audit columns in every table.
- Prevent orphan records using ON DELETE RESTRICT.
- Store passwords using BCrypt.
- Store all date-time values using TIMESTAMPTZ for timezone-aware timestamps.

---

# Phase Status

✅ Database Design Standards Finalized
