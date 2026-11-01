# SAP Business Management System

A SAP CAP Java learning project for managing business entities, customers, transactions, and bookings or orders, with dashboard reporting.

> **Status: In development.** Only the data model is in place so far. The service, handlers, Fiori screens, and dashboard are planned.

## Problem Statement

Small businesses often track customers, bookings, and order totals in separate tools, which makes it hard to see the state of a transaction or the business's overall performance. This project explores how a CAP Java application can hold these records in one model with a Fiori interface.

## Planned Features

- Business entity management.
- Customer records with contact details.
- Transaction management with order items and totals.
- Booking and order workflows with status changes.
- Dashboard and reporting for order counts and totals.

## Technologies

- SAP Cloud Application Programming Model (CAP) for Java
- Java and Spring Boot
- Core Data Services (CDS) for the data model
- OData V4 for the API
- SAP Fiori elements for the user interface
- H2 for local development
- Maven for the build

## Architecture

```
db/      CDS data model (customers, orders, order items)
srv/     CDS service definitions and Java event handlers (planned)
app/     SAP Fiori user interface (planned)
```

## Current Files

- `db/business.cds`: the starting data model.

## Original Source and Attribution

This project is based on [SAP-samples/cap-sflight](https://github.com/SAP-samples/cap-sflight). Its license and copyright notices will be retained and checked before any code from that sample is added.

## My Contribution

I am designing the customer, order, and order item data model and planning the order workflow and reporting. Code will be added as each part is built and verified.

## Author

**Yangala Shashidhar Reddy**
B.Tech in Computer Science and Engineering (Data Science), Rajeev Gandhi Memorial College of Engineering and Technology, April 2026

- GitHub: [yangalashashidharreddy](https://github.com/yangalashashidharreddy)
- LinkedIn: [yangalashashidharreddy](https://www.linkedin.com/in/yangalashashidharreddy)
- Email: yangalashashidharreddy@gmail.com

## License

Apache License 2.0. See [LICENSE](LICENSE).
