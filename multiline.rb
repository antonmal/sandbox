class String
  def undent
    indent = self.scan(/^[ \t]*(?=\S)/).min.size || 0
    self.gsub(/^[ \t]{#{indent}}/, '')
  end
end


puts
puts "     f;dlf;f
  ;dl;k
    ;lgk;lk".undent


str = {
  key1:
    "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod magna aliqua. \nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea      commodo consequat. Duis aute irure dolor in reprehenderit in voluptate.",

  key2:
    "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod magna aliqua. \nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea      commodo consequat. Duis aute irure dolor in reprehenderit in voluptate.",
}

puts
puts str[:key1]


str2 =  <<-EOS
          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod magna aliqua. \nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea      commodo consequat. Duis aute irure dolor in reprehenderit in voluptate.
        EOS

puts
puts str2


str3 = %(
        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod magna aliqua. \nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea      commodo consequat. Duis aute irure dolor in reprehenderit in voluptate.).lstrip

puts
puts str3
