Initial design
==============

## Classes

### Checkout
*  scans items
*  shows totals

### Scanner 
*  adds item to basket

### Basket
*  contains items
  
### Item
*  knows what its base price and name is

### Promotional Rule
*  Can calculate a reduced price for an item
*  Can calculate a percent discount to a basket 
*  Supplies an adjustment factor for previously applied discounts

### Totaliser
*  calculates total
*  applies discount
*  adjusts discounts for other discounts already applied
