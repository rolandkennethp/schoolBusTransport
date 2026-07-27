# School Bus Transportation Management System

# Phase 3 - Relationship Identification

## Purpose

This document defines the relationships between all entities identified in Phase 2.

It specifies:

- Entity relationships
- Relationship cardinality
- Mandatory and optional participation
- Business rules governing each relationship

This document serves as the foundation for:

- ER Diagram
- Database Design
- API Design

---

# Relationship List

## 1. User ↔ Admin

### Relationship

One User account belongs to one Admin.

One Admin has one User account.

### Cardinality

```
User (1) ─────────────── (1) Admin
```

### Participation

- User → Mandatory
- Admin → Mandatory

### Business Rule

Every administrator must have exactly one login account.

---

## 2. User ↔ Parent

### Relationship

One User account belongs to one Parent.

One Parent has one User account.

### Cardinality

```
User (1) ─────────────── (1) Parent
```

### Participation

- User → Mandatory
- Parent → Mandatory

### Business Rule

Every parent must have one login account.

---

## 3. User ↔ Driver

### Relationship

One User account belongs to one Driver.

One Driver has one User account.

### Cardinality

```
User (1) ─────────────── (1) Driver
```

### Participation

- User → Mandatory
- Driver → Mandatory

### Business Rule

Every driver must have one login account.

---

## 4. Parent ↔ Student

### Relationship

One Parent may have multiple Students.

Every Student belongs to one Parent.

### Cardinality

```
Parent (1) ───────────────< (N) Student
```

### Participation

- Parent → Optional
- Student → Mandatory

### Business Rule

A parent may have one or more children using the transportation service.

Every student must have one registered parent.

---

## 5. Student ↔ Bus Stop

### Relationship

One Bus Stop may have many Students.

Every Student is assigned to one Bus Stop.

### Cardinality

```
Bus Stop (1) ───────────────< (N) Student
```

### Participation

- Bus Stop → Optional
- Student → Mandatory

### Business Rule

Students are assigned to designated pickup points instead of home addresses.

---

## 6. Route ↔ Route Stop

### Relationship

One Route consists of multiple Route Stops.

Each Route Stop belongs to exactly one Route.

### Cardinality

```
Route (1) ───────────────< (N) Route Stop
```

### Participation

- Route → Mandatory
- Route Stop → Mandatory

### Business Rule

A route is made up of an ordered sequence of route stops.

Each Route Stop stores the position of a Bus Stop within the route.

---

## 7. Bus Stop ↔ Route Stop

### Relationship

One Bus Stop may appear in multiple Route Stops.

Each Route Stop references exactly one Bus Stop.

### Cardinality

```
Bus Stop (1) ───────────────< (N) Route Stop
```

### Participation

- Bus Stop → Optional
- Route Stop → Mandatory

### Business Rule

A Bus Stop can be reused across multiple routes.

Route Stops allow the same Bus Stop to appear in different routes while preserving the stop order.

---

## 8. Route ↔ Bus

### Relationship

One Route is assigned to one Bus.

One Bus is assigned one Route.

### Cardinality

```
Route (1) ─────────────── (1) Bus
```

### Participation

- Route → Mandatory
- Bus → Mandatory

### Business Rule

Each generated route is assigned to one bus. Version 1 supports one bus per route and one route per bus.

---

## 9. Bus ↔ Driver (Primary Driver)

### Relationship

One Bus has one Primary Driver.

One Driver may be the Primary Driver of one Bus.

### Cardinality

```
Bus (1) ─────────────── (1) Driver
```

### Participation

- Bus → Mandatory
- Driver → Optional

### Business Rule

Every bus has one assigned primary driver. The actual driver for a trip is recorded in the Trip entity, allowing temporary driver replacements.

A driver may exist before being assigned to a bus.

---

## 10. Bus ↔ Trip

### Relationship

One Bus performs many Trips.

Each Trip uses one Bus.

### Cardinality

```
Bus (1) ───────────────< (N) Trip
```

### Participation

- Bus → Optional
- Trip → Mandatory

### Business Rule

Trips cannot exist without a bus.

---

## 11. Route ↔ Trip

### Relationship

One Route may be executed many times.

Each Trip follows one Route.

### Cardinality

```
Route (1) ───────────────< (N) Trip
```

### Participation

- Route → Optional
- Trip → Mandatory

### Business Rule

Trips represent the execution of a generated route.

---

## 12. Driver ↔ Trip

### Relationship

One Driver may drive many Trips.

Each Trip has one Driver.

### Cardinality

```
Driver (1) ───────────────< (N) Trip
```

### Participation

- Driver → Optional
- Trip → Mandatory

### Business Rule

The driver recorded in the trip represents the actual driver who drove the bus.

This may be either the primary driver or a temporary replacement.

A driver cannot have multiple active trips simultaneously.

---

## 13. Parent ↔ Complaint

### Relationship

One Parent may submit many Complaints.

Each Complaint belongs to one Parent.

### Cardinality

```
Parent (1) ───────────────< (N) Complaint
```

### Participation

- Parent → Optional
- Complaint → Mandatory

### Business Rule

Only parents can submit complaints.

---

## 14. Admin ↔ Complaint

### Relationship

One Admin manages many Complaints.

Each Complaint is handled by one Admin.

### Cardinality

```
Admin (1) ───────────────< (N) Complaint
```

### Participation

- Admin → Optional
- Complaint → Mandatory

### Business Rule

Every complaint is processed by one administrator.

---

# Relationship Summary

| Relationship           | Cardinality |
| ---------------------- | ----------- |
| User → Admin           | 1 : 1       |
| User → Parent          | 1 : 1       |
| User → Driver          | 1 : 1       |
| Parent → Student       | 1 : N       |
| Bus Stop → Student     | 1 : N       |
| Route → Route Stop     | 1 : N       |
| Bus Stop → Route Stop  | 1 : N       |
| Route → Bus            | 1 : 1       |
| Bus → Driver (Primary) | 1 : 1       |
| Bus → Trip             | 1 : N       |
| Route → Trip           | 1 : N       |
| Driver → Trip          | 1 : N       |
| Parent → Complaint     | 1 : N       |
| Admin → Complaint      | 1 : N       |

---

# Design Principles

The relationship model follows these principles:

- Authentication is separated from business information.
- Students are assigned to bus stops rather than buses.
- Routes are generated using bus stops.
- Route Stops represent the ordered sequence of bus stops within a route.
- A Bus Stop can belong to multiple routes through Route Stops.
- Buses are assigned to routes.
- Trips record the actual execution of a route.
- Trips store the actual driver who operated the bus.
- Complaints are submitted by parents and managed by administrators.
- Relationships model the business rules of Version 1 and serve as the basis for the ER Diagram.

---

# Phase Status

✅ Relationship Identification Completed

Next Phase:

➡️ 04-ER-Diagram.drawio
