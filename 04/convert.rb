require 'base64'
require 'fileutils'

# read doc, filter data config and change to "", necessary to have only data to transform to img
def read_data(path)
  # get extension from base64 document
  @type = File.open(path, 'rb').read.split(';base64')[0].split('/')[1]
  @data = File.open(path, 'rb').read.gsub!("data:image/png;base64,", "")
end

# create image.extension by calling the method
#
def create_file(path, imageName)
  # creates the directory if it doesn't exist
  FileUtils.mkdir_p(path) unless File.directory?(path)
  # creating document name and extension
  doc = imageName + @type
  # opening and writing data to create img doc
  puts File.open(path + doc, 'wb').write(Base64.decode64(@data))
end

read_data('base64.txt')
create_file("tmp/", "straiv.")
