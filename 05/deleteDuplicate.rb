class Info
  attr_accessor :data

  # "epmty" array to instantiate without args
  def initialize
    @data = []
  end

  # add info from another initialize(class) inside array
  def add_info(id, name)
    @data << GetInfo.new(id, name, Time.now.strftime('%Y-%m-%d %H:%M:%S'))
  end

  # display info with adjusted spaces by iterating over the object
  def show_info
    @data.each { |i| puts "- ID:#{i.id}".ljust(10) + "NAME:#{i.name}".ljust(20) + "CREATE_AT:#{i.created_at}" }
  end

  # group by name to check duplicity, add to new array each person but checking create_at to add only one person
  def delete_duplicity
    grouped_entries = @data.entries.group_by(&:name)
    p grouped_entries.desc(:created_at).limit(1).first
    # without_duplicated = []
    # grouped_entries.values.map do |group|
    #   without_duplicated << group.max_by(&:created_at)
    # end
    # @data = without_duplicated
  end

  private
  # new class to initialize inside the info class using method add_info
  class GetInfo
    attr_accessor :name, :id, :created_at

    def initialize(id, name, created_at)
      @id = id
      @name = name
      @created_at = created_at
    end
  end
end

# create the table
info = Info.new
puts 'Processing...'

# apply method to add data
info.add_info(1, 'Raquel')
info.add_info(2, 'Igor')
info.add_info(3, 'Lena')
info.add_info(4, 'Fabian')
info.add_info(5, 'Raquel')

# data added after 2 sec to test get_latest method
sleep(2)
info.add_info(6, 'Raquel')

# second test
sleep(2)
info.add_info(7, 'Fabian')

puts 'Adding people. Check the list:'
sleep(2)

# display info
info.show_info
puts

puts 'Check and remove duplicate names...'
sleep(2)

# delete duplicity if there are any
info.delete_duplicity
sleep(2)

# display info after removing duplicity
puts 'Updated list:'
info.show_info
