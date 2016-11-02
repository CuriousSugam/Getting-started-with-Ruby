# Write a program to adjust time in a movie subtitle.
# The input to the program should be path to the subtitle file and adjust time in seconds (positive value to increase
#   and negative value to decrease time).
# The program then creates a new subtitle file with adjusted time without changing.

class EditSubtitles
  # attr_accessor :main_file, :adjustment, :new_file

  def initialize(mainFile, adjustment, newFile)
    @main_file = mainFile
    @adjustment = adjustment
    @new_file = newFile
  end

  def adjustSubtitles

    newfile = File.open(@new_file, 'w')
    File.open(@main_file, 'r').each do |current_line|
      if current_line.to_s.include? '-->'

        durations = current_line.to_s.split("-->")
        #empty the current line
        current_line = ""

        #iterate through the current lines and modify the time
        durations.each do |duration|

          if current_line != ""
            current_line += " --> "
          end

          #split the time in hour, min, second and millisecond
          hour, minute, second_with_milliseconds = duration.to_s.split(":")
          second_only, milliseconds = second_with_milliseconds.to_s.split(",")

          # convert the time in integer format
          hour = hour.to_i
          minute = minute.to_i
          second_only = second_only.to_i
          milliseconds = milliseconds.to_i

          # since the adjustment is only in seconds, adjust the second and update hour and minutes accordingly
          second_only += @adjustment
          minute += second_only / 60
          second_only = second_only % 60
          hour += minute / 60
          minute = minute % 60

          # rjust helps to add leading '0' in the time
          second_only = second_only.to_s.rjust(2, '0')
          hour = hour.to_s.rjust(2, '0')
          minute = minute.to_s.rjust(2, '0')

          # update the current line
          current_line += "#{hour}:#{minute}:#{second_only},#{milliseconds}"
        end
      end

      # add the current line to the file
      newfile.puts(current_line)
    end
    newfile.close

  end
end

puts "Enter the path of the source subtitle (.srt) file:"
filename = gets.chomp.to_s

#check if the source file exists
if File::exists?(filename)
  puts "Please enter the adjustment in seconds:"
  adjustment = gets.chomp.to_i

  puts "Enter the name of the new file:"
  newfilename = gets.chomp.to_s
else
  puts "source file does not exist"
end

editSubtitle = EditSubtitles.new filename, adjustment, newfilename
editSubtitle.adjustSubtitles
