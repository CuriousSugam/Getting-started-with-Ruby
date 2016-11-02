module Name
  PI = 3.14

  def complete_name
    text = ""
    # begin
      if respond_to? :first_name
        text << first_name
      end
      if respond_to? :last_name
        text << last_name
      end
      if respond_to? :name
        text << name
      end
    # rescue Exception
      # text << name
      # text << "undefined"
    # ensure
      text << "(#{scientific_name})"
    # end
    puts text
  end
end