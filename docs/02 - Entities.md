# School Bus Transportation Management System

# Phase 2 - Entity Identification

## Purpose

This document identifies all the entities required for Version 1 of the School Bus Transportation Management System.

An entity represents a real-world object or event whose information must be stored by the system.

This document serves as the foundation for:

- Relationship Identification
- ER Diagram
- Database Design
- API Design

---

# Entity Categories

## Authentication

- User

## People

- Admin
- Parent
- Driver
- Student

## Transportation

- Bus
- Bus Stop
- Route

## Operations

- Trip
- Complaint

---

# 1. User

## Purpose

Represents the login account used to authenticate users.

Every Admin, Parent, and Driver must have one User account.

The User entity is responsible only for authentication and authorization.

## Responsibilities

- Store login credentials
- Store user role
- Manage account status
- Force password change on first login
- Authenticate users

## Key Attributes

- Username
- Password
- Role
- Account Status
- First Login Status

## Lifecycle

Created by:

- System (when Admin creates a new account)

Updated by:

- User (password change)
- Admin (account status)

Deleted by:

- Normally not deleted
- Can be deactivated

---

# 2. Admin

## Purpose

Represents the school administrator.

The administrator manages the entire transportation system.

## Responsibilities

- Manage students
- Manage parents
- Manage drivers
- Manage buses
- Manage bus stops
- Generate routes
- Monitor trips
- View reports
- Manage complaints

## Key Attributes

- Full Name
- Email
- Phone Number

## Lifecycle

Created by:

- System

Updated by:

- Admin

Deleted by:

- Never

---

# 3. Parent

## Purpose

Represents the parent or guardian responsible for one or more students.

Parents can access only information related to their own children.

## Responsibilities

- Track assigned bus
- View ETA
- View assigned driver
- View assigned bus stop
- Raise complaints
- Receive notifications

## Key Attributes

- Full Name
- Email
- Phone Number
- Address
- Emergency Contact

## Lifecycle

Created by:

- Admin

Updated by:

- Admin

Deleted by:

- Admin

---

# 4. Driver

## Purpose

Represents a driver responsible for operating school buses.

## Responsibilities

- Start trips
- End trips
- Share GPS location
- Navigate routes
- Send emergency alerts

## Key Attributes

- Full Name
- Email
- Phone Number
- Driving License Number
- License Expiry Date
- Years of Experience

## Lifecycle

Created by:

- Admin

Updated by:

- Admin

Deleted by:

- Admin

---

# 5. Student

## Purpose

Represents a student enrolled in the school's transportation service.

Each student belongs to one parent and is assigned to one bus stop.

Students are transported using the route serving their assigned bus stop.

## Responsibilities

- Parent assignment
- Bus stop assignment
- Transportation records

## Key Attributes

- Full Name
- Grade
- Section
- Gender

## Lifecycle

Created by:

- Admin

Updated by:

- Admin

Deleted by:

- Admin

---

# 6. Bus

## Purpose

Represents a physical school bus used for transportation.

A bus is assigned to a generated route for a trip.

## Responsibilities

- Transport students
- Execute trips
- Carry assigned drivers

## Key Attributes

- Bus Number
- Registration Number
- Capacity
- Status

## Lifecycle

Created by:

- Admin

Updated by:

- Admin

Deleted by:

- Admin

---

# 7. Bus Stop

## Purpose

Represents an official pickup and drop-off location.

Students are assigned to bus stops instead of individual home addresses.

Routes are generated using bus stops.

## Responsibilities

- Store location
- Group students
- Support route generation

## Key Attributes

- Stop Name
- Landmark
- Latitude
- Longitude

## Lifecycle

Created by:

- Admin

Updated by:

- Admin

Deleted by:

- Admin

---

# 8. Route

## Purpose

Represents an optimized sequence of bus stops.

Routes are generated automatically by the system and assigned to buses.

## Responsibilities

- Connect bus stops
- Support navigation
- Support ETA calculation

## Key Attributes

- Route Name
- Route Status
- Total Stops
- Estimated Distance
- Estimated Duration

## Lifecycle

Created by:

- System

Updated by:

- System
- Admin (Regeneration)

Deleted by:

- System

---

# 9. Trip

## Purpose

Represents one completed or active journey of a bus.

Every trip records operational information for that journey.

## Responsibilities

- Store trip timing
- Store GPS history
- Track trip status

## Key Attributes

- Start Time
- End Time
- Status

## Lifecycle

Created by:

- Driver

Updated by:

- Driver
- System

Deleted by:

- Never

---

# 10. Complaint

## Purpose

Represents complaints submitted by parents.

Complaints follow a predefined workflow until they are resolved.

## Workflow

Complaint Filed

↓

Complaint Viewed

↓

Resolved

↓

Closed

## Responsibilities

- Track complaint status
- Store complaint information
- Notify parents after resolution

## Key Attributes

- Subject
- Description
- Status
- Resolution

## Lifecycle

Created by:

- Parent

Updated by:

- Admin

Deleted by:

- Never

---

# Entity Summary

| Entity    | Category       | Created By |
| --------- | -------------- | ---------- |
| User      | Authentication | System     |
| Admin     | People         | System     |
| Parent    | People         | Admin      |
| Driver    | People         | Admin      |
| Student   | People         | Admin      |
| Bus       | Transportation | Admin      |
| Bus Stop  | Transportation | Admin      |
| Route     | Transportation | System     |
| Trip      | Operations     | Driver     |
| Complaint | Operations     | Parent     |

---

# Notes

- Authentication is handled through the User entity.
- Business information is stored separately from authentication information.
- Students are assigned to bus stops, not directly to buses.
- Routes are generated using bus stops.
- Buses are assigned to generated routes.
- A trip represents one execution of a route by a bus.

---

# Phase Status

Entity Identification Completed
