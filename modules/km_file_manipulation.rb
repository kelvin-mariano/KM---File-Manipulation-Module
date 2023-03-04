module KmFileManipulation

    # This method is used to create a file
    #
    # @param [String] path - Directory where the file will be created
    # @param [String] filename - File name and extension
    # @param [String] content - Content that must be added in the file

    def self.create path = false, filename = false, content = "", mode_write = "w"

        # Check that the specified directory is valid
        if !File.directory?( path )
            return { "success": false, "error_message": "Sorry, the directory does not exist." }
        end
        
        # Check if the file name is valid
        if filename == '' || filename == false
            return { "success": false, "error_message": "Sorry, please enter a valid file name." }
        end

        # Will try to create the file
        file = File.write( path + filename, content, mode: mode_write )

        # Checks if there was an error when generating the file
        if file.size == 0 
            return { "success": false, "error_message": "Sorry, there was an error generating the file." } 
        else 
            return { "success": true, "success_message": "File created successfully!" }
        end

    end

    # Adds content to the end of the stored file
    #
    # @param [String] path - Directory where the file will be created
    # @param [String] filename - File name and extension
    # @param [String] content - Content that must be added in the file

    def self.put_content path = false, filename = false, content = ""
        return_data = self.create( path, filename, content, "a" )

        if return_data[:success_message] 
            return_data[:success_message] = "File updated successfully!"
        end
       
        return_data
    end

    # Returns the contents of a file
    #
    # @param [String] path_and_file - File name with directory

    def self.get_content path_and_file = false

        # Checks if the file exists
        if File.exist?( path_and_file )
            file = File.open( path_and_file )
            file_content = file.read 
            file.close;

            return { "success": true, "content": file_content }
        else 
            return { "success": false, "error_message": "Sorry, the specified file does not exist." }
        end
    end

    # Delete a specific file
    #
    # @param [String] path_and_file - File name with directory

    def self.delete path_and_file

        # Checks if the file exists before trying to delete
        if File.exist?( path_and_file )
            
            # Delete file
            File.delete( path_and_file )

            if !File.exist?( path_and_file ) 
                return { "success": true, "success_message": "File deleted successfully!" }
            else
                return { "success": false, "error_message": "Oops, for some reason we couldn't delete the file." }
            end
        else 
            return { "success": false, "error_message": "Sorry, the file could not be deleted because it does not exist." }
        end
    end

end