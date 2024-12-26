from encapsulation import Computer

c = Computer()
c.sell()

# change the price
c.__maxprice = 1000
c.sell()

# using setter function
c.set_max_price(1000)
c.sell()


