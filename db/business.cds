namespace my.business;

using {cuid, managed} from '@sap/cds/common';

/**
 * Customers that place bookings or orders.
 */
entity Customers : cuid, managed {
    name    : String(111) not null;
    email   : String(255);
    phone   : String(40);
    city    : String(111);
    orders  : Association to many Orders
                  on orders.customer = $self;
}

type OrderStatus : String enum {
    new;
    confirmed;
    completed;
    cancelled;
}

/**
 * A booking or order placed by a customer.
 */
entity Orders : cuid, managed {
    orderNo     : String(20) not null;
    customer    : Association to Customers not null;
    orderDate   : Date;
    status      : OrderStatus default 'new';
    totalAmount : Decimal(11, 2) default 0;
    currency    : String(3) default 'USD';
    items       : Composition of many OrderItems
                      on items.order = $self;
}

/**
 * Line items of an order.
 */
entity OrderItems : cuid {
    order       : Association to Orders;
    description : String(255) not null;
    quantity    : Integer not null;
    unitPrice   : Decimal(9, 2) not null;
}
