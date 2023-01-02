puts 'Cleaning...'
Item.destroy_all

Item.create(id: 1, name: 'Weather')
Item.create(id: 13, name: 'Portfolio')
Item.create(id: 29, name: 'Points of interest')
Item.create(id: 4, name: 'Events')
Item.create(id: 7, name: 'News')
Item.create(id: 9, name: 'Check-in')
