puts 'Cleaning database...'
Item.destroy_all

puts 'Creating items...'
weather = Item.create(id: 1, name: 'Weather')
portfolio = Item.create(id: 13, name: 'Portfolio')
interest = Item.create(id: 29, name: 'Points of interest')
events = Item.create(id: 4, name: 'Events')
news = Item.create(id: 7, name: 'News')
checkin = Item.create(id: 9, name: 'Check-in')
breakfast = Item.create(id: 2, name: 'Breakfast')
checkout = Item.create(id: 8, name: 'Check-out')
transfer = Item.create(id: 10, name: 'Transfer')

puts 'Destroying Portfolio...'
portfolio.destroy

puts 'Destroying Breakfast...'
breakfast.destroy
