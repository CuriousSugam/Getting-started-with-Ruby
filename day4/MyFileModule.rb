module MyFileModule

  # create a new file if it does not exist
  def self.create_file(path)
    if File.file?(path)
      file = File.open(path, "a")
      file.close
    else
      file = File.open("sample.txt", "w")
      file.close
    end
    file
  end

  # edit a new file
  def self.edit_file(path, content)
    if File.file?(path)
      File.open(path, "a") do |file|
        # file << content
         file.puts content
        # file.write(content)
      end
    else
      File.open(path, "w") do |file|
        file << content
      end
    end
  end

  # delete a file
  def self.delete_file(path)
    if File.file?(path)
      File.delete(path)
    end
  end
end

MyFileModule.create_file("sample.txt")
MyFileModule.edit_file("sample.txt", "this is test para")
# MyFileModule.delete_file("sample.txt")