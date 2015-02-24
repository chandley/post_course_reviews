Initial design
==============

## Classes

### Checkout
*  scans items
*  shows totals
- interacts with basket, totaliser, promotion

### Basket
*  contains items
*  gives unadjusted total
*  reports how many of an item held
- interacts with promotion, checkout, item
  
### Item
*  knows what its base price and name is

### Promotional Rule
*  Can calculate a reduced price for an item
*  Can calculate a percent discount to a basket 
*  Supplies an adjustment factor for previously applied discounts
- interacts with basket

### Totaliser
*  calculates total
*  applies discount
*  adjusts discounts for other discounts already applied
- interacts with basket, promotional rule
