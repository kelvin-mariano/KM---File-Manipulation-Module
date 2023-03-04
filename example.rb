require_relative './modules/km_file_manipulation.rb'

# -----------------------------------------------------------------
# Create File
# -----------------------------------------------------------------

puts KmFileManipulation.create Dir.pwd + '/files/', 'example.txt', 'Content Example ...'

# -----------------------------------------------------------------
# Adds content to the end of the stored file
# -----------------------------------------------------------------

puts KmFileManipulation.put_content Dir.pwd + '/files/', 'example.txt', "\n1"
puts KmFileManipulation.put_content Dir.pwd + '/files/', 'example.txt', "\n2"
puts KmFileManipulation.put_content Dir.pwd + '/files/', 'example.txt', "\n3"
puts KmFileManipulation.put_content Dir.pwd + '/files/', 'example.txt', "\n4"

# -----------------------------------------------------------------
# Returns the content that exists within the file
# -----------------------------------------------------------------

get_file = KmFileManipulation.get_content Dir.pwd + '/files/example.txt'

if get_file[:content] 
    puts get_file[:content] 
end

# -----------------------------------------------------------------
# Delete File
# -----------------------------------------------------------------

puts KmFileManipulation.delete Dir.pwd + '/files/example.txt'