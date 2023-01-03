puts 'Cleaning database!'
Item.destroy_all

puts 'Creating items...'
Item.create(id: 1, name: 'Weather')
Item.create(id: 13, name: 'Portfolio')
Item.create(id: 29, name: 'Points of interest')
Item.create(id: 4, name: 'Events')
Item.create(id: 7, name: 'News')
Item.create(id: 9, name: 'Check-in')
Item.create(id: 2, name: 'Breakfast')
Item.create(id: 8, name: 'Check-out')
Item.create(id: 10, name: 'Transfer')

sleep(2)
puts 'DONE :)'
