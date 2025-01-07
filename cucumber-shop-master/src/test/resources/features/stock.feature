Feature: Cut Stocks
  As a store owner, in order to keep track of stock,
  I want product stocks to be cut when customer buy product

Background:
  Given the store is ready to service customers
  And a product "Bread" with price 20.50 and stock of 5 exists
  And a product "Jam" with price 80.00 and stock of 10 exists
  And a product "Butter" with price 10.00 and stock of 10 exists

Scenario: Cut stock for one product
  When I buy "Butter" with quantity 2
  Then "Butter" has 8 leftover

Scenario: Buying a product with insufficient stock
  When I buy "Bread" with quantity 6
  Then an error should be thrown with message "Not enough stock for product: Bread"

Scenario: Buying multiple products with insufficient stock
  When I buy "Bread" with quantity 3
  And I buy "Jam" with quantity 12
  Then an error should be thrown with message "Not enough stock for product: Jam"
  And "Bread" has 2 leftover
  And "Jam" has 10 leftover
