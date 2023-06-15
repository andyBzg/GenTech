//Опишите документ "кредит" с произвольными полями.

db.createCollection("credits")

db.credits.insertOne({
    created_at: new Date(),
    amount: 13540.34,
    currency: 'EUR',
    description: 'loan for car',
    issue_date: '2023-06-15',
    expiration_date: '2024-06-15',
    interest_rate: 3.5,
    borrower: {
        first_name: 'Klaus',
        last_name: 'Müller',
        address: 'Keine-ahnung-str. 55, Berlin',
        phone: '+49 (123) 456-7890'
    }
})

//Опишите документ "заказ" с произвольными полями.

db.createCollection("orders")

db.orders.insertOne({
    order_number: 'ORD43210',
    order_date: new Date(),
    amount: 1599.99,
    customer: {
        first_name: 'Klaus',
        last_name: 'Müller',
        address: 'Keine-ahnung-str. 55, Berlin',
        phone: '+49 (123) 456-7890'
    },
    product: {
        name: 'MacBook Air',
        price: 1599.99,
        quantity: 1
    }
})