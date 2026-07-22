# School Bus Transportation Management System

## Project Overview

The School Bus Transportation Management System is a web-based application designed to help a school manage its transportation services efficiently. The system provides separate portals for administrators, drivers, and parents, enabling real-time bus tracking, route management, attendance, and communication.

The primary objective is to improve the safety, transparency, and efficiency of student transportation.

---

# Project Scope

This application is designed for **one school** (Version 1).

There are three user roles:

- Admin
- Driver
- Parent

---

# User Roles

## Admin

The administrator has complete control over the system.

Responsibilities include:

- Managing students
- Managing parents
- Managing drivers
- Managing buses
- Managing bus stops
- Assigning buses and drivers
- Generating optimized routes
- Monitoring live bus locations
- Viewing attendance
- Managing complaints
- Viewing reports

---

## Driver

The driver operates the assigned bus and updates trip information.

Responsibilities include:

- Starting trips
- Ending trips
- Sharing live GPS location
- Viewing assigned route
- Navigating to bus stops
- Sending emergency alerts

---

## Parent

Parents can monitor their child's transportation.

Responsibilities include:

- Tracking the bus live
- Viewing ETA
- Viewing assigned driver
- Viewing assigned bus stop
- Raising complaints
- Receiving notifications

---

# Functional Requirements

## Admin Features

### Dashboard

- View total students
- View total parents
- View total drivers
- View total buses
- View active trips
- View running buses
- View open complaints

### Student Management

- Add student
- Edit student
- Delete student
- Assign parent
- Assign bus
- Assign bus stop

### Parent Management

- Add parent
- Edit parent
- Delete parent

### Driver Management

- Add driver
- Edit driver
- Delete driver
- Assign primary driver
- Assign temporary driver

### Bus Management

- Add bus
- Edit bus
- Delete bus
- Set bus capacity
- Assign drivers

### Bus Stop Management

- Add bus stop
- Edit bus stop
- Delete bus stop
- Assign students
- View stop on map

### Route Management

- Generate optimized routes
- Regenerate routes
- Display routes on map

### Live Monitoring

- View live bus locations
- View current bus speed
- View trip status
- View assigned driver

### Reports

- Student Report
- Parent Report
- Driver Report
- Route Report
- Complaint Report

### Complaint Management

Workflow:

Complaint Filed

↓

Complaint Viewed

↓

Resolved

↓

Closed

When a complaint is resolved:

- Parent receives a push notification.
- Parent receives an email containing the resolution.

---

## Driver Features

- Login
- Start trip
- End trip
- View assigned route
- Navigate to bus stops
- Share live GPS location
- Mark attendance
- Emergency (SOS)

Emergency Workflow:

Driver presses SOS

↓

Admin receives emergency alert

↓

Admin acknowledges the alert

↓

Parents receive push notification

---

## Parent Features

- Login
- Live bus tracking
- View ETA
- View assigned driver
- View assigned bus stop
- View bus route
- View current bus speed
- View attendance
- Raise complaint
- Receive push notifications
- Receive complaint resolution email

---

# Bus Stop System

The system uses designated bus stops instead of individual home locations.

Each bus stop contains:

- Stop Name
- Landmark
- Latitude
- Longitude

One bus stop may have multiple students assigned.

Routes are generated between bus stops.

---

# Attendance System

Attendance is recorded during every trip.

The driver can mark each student as:

- Present
- Absent
- Not Picked Up

Attendance cannot be modified by the driver after the trip has ended.

---

# Trip Management

Each trip stores:

- Bus
- Driver
- Route
- Start Time
- End Time
- Attendance
- GPS History

Current bus speed is displayed during the trip only and is not stored after the trip ends.

---

# Route Regeneration

Routes are regenerated when:

- A student is added
- A student is removed
- A bus stop is added
- A bus stop is removed
- A student changes bus stop
- The administrator manually regenerates the route

---

# Live Tracking

Driver GPS updates every **10 seconds**.

ETA updates every **30 seconds**.

Parents and administrators can monitor the live location of the bus while a trip is active.

---

# Notifications

The system sends push notifications for:

- Bus trip started
- Bus approaching assigned bus stop
- Complaint resolved
- Emergency alert

Email notifications are sent when complaints are resolved.

---

# Business Rules

- One parent can have multiple students.
- One student belongs to one parent.
- One student belongs to one bus stop.
- One bus stop can have multiple students.
- One bus has one primary driver.
- A temporary driver may replace the primary driver.
- A driver may drive different buses on different trips.
- A driver cannot have multiple active trips simultaneously.
- Bus capacity cannot be exceeded.
- Students may change buses.
- Students may change bus stops.
- Routes are generated using bus stops.
- The application supports one school only (Version 1).

---

# Technology Stack

## Frontend

- Next.js
- TypeScript
- Tailwind CSS
- Leaflet

## Backend

- Spring Boot
- Spring Security
- JWT Authentication
- Spring Data JPA
- PostgreSQL

## Maps

- OpenStreetMap
- OpenRouteService

## Notifications

- Firebase Cloud Messaging (FCM)
- Email Service

---

# Version

Current Version: **1.0**

Status: **Requirements Finalized**
