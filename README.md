# boutique

[![Test Coverage](https://codeclimate.com/github/chandley/boutique/badges/coverage.svg)](https://codeclimate.com/github/chandley/boutique)
[![Code Climate](https://codeclimate.com/github/chandley/boutique/badges/gpa.svg)](https://codeclimate.com/github/chandley/boutique)

## Summary

### Problem

Make a checkout that can scan items and calculate discounts

### Languages/Platforms/Tools

| Languages | Technologies  | Testing Frameworks| Misc
| :-------------------------------------------- |:--------------|:-----------|:----|
| Ruby      |               | Rspec             |               |
|           |               |                   |               |
|           |               |                   |  
|           |               |

### Solution

## Checkout
*  scans items
*  shows totals
- interacts with basket, totaliser, promotion

#### Basket
*  contains items
*  gives unadjusted total
*  reports how many of an item held

  
#### Item
*  knows what its base price and name is

#### Promotional Rule
*  Interacts with basket, but not items directly
*  Can calculate a reduced price for multiple items
*  Can calculate a percent discount to a basket 
*  Supplies an adjustment factor for previously applied discounts


#### Total Calculator
*  uses simple total from basket
*  applies discount
*  adjusts discounts for other discounts already applied


### Setup
* to run directly use irb
* can also run through tests
```
> cd lib
> require './demo'
> irb
irb> make_items
irb> co = Checkout.new(promotional_rules)
irb> co.scan(@item1)
irb> co.scan(@item2)
irb> co.scan(@item3)
irb> co.total
               => 66.78
```

### Tests

* have unit and integration tests

running tests
```
rspec
rspec features\integration_tests.rb
```

### Images

### To do

### Learning points

