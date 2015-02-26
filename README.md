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

#### Checkout
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


#### Setup
* easiest to run through tests
* to run directly use irb

```
files = %w(checkout item promotion_multibuy promotion_spend)
files.each {|file| require file }
item = Item.new
item.name = 'Lavender Heart'
item.price = 9.25
spend =  PromotionSpend.new
spend.set_discount( threshold: 60, discount_factor: 0.1 ) 
multibuy = PromotionMultibuy.new 
multibuy.set_discount( item: @item1, quantity: 2, discount_price: 8.50 )
co = Checkout.new([multibuy, spend])
co.scan(item)
co.total
````

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

