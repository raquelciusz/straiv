class Navigation
  attr_reader :input_infos

  # "epmty" array to instantiate without args
  def initialize
    @input_infos = []
  end

  # add info from another initialize(class) inside array
  def add_info(id, name)
    @input_infos << GetItem.new(id, name, @input_infos.size + 1)
  end

  # display info with adjusted spaces by iterating over the object
  def show_info
    @input_infos.each do |i|
      puts "- ID:#{i.id}".ljust(10) + "ITEM:#{i.name}".ljust(25) + "POSITION:#{i.position}"
    end
  end

  # delete info of a given position updating remaining positions
  def delete_info(position)
    @input_infos.delete_at(position - 1)
    @input_infos.each_with_index.map { |x, i| [x.position = i + 1] }
  end

  private

  # new class to initialize inside the navigation class
  class GetItem
    attr_accessor :id, :name, :position

    def initialize(id, name, position)
      @id = id
      @name = name
      @position = position
    end
  end
end

# create table
info = Navigation.new
puts "Processing..."

# apply method to add data
info.add_info(1,"Weather")
info.add_info(13,"Portfolio")
info.add_info(29,"Points of interest")
info.add_info(4,"Events")
info.add_info(7,"News")
info.add_info(9,"Check-in")
sleep(2)
# test to add data after 2 sec
info.add_info(15,"Rating")

puts "Adding items. Check the list:"
sleep(2)
puts
info.show_info

puts
puts "Deleting one item. Check Updated:"
sleep(2)
puts

# test to delete non-existing information
info.delete_info(2)
info.show_info
