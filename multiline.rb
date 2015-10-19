require 'pry'


class String
  def undent
    # indent = self.scan(/^[ \t]+(?=\S)/).min
    # if indent
    #   self.split(/^[ \t]{#{indent}}/).map(&:rstrip).join
    # else
    #   self
    # end
    self.split(/^[ \t]+/).map(&:rstrip).join
  end
end


# str = "Lorem ipsum dolor sit amet, consectetur          adipisicing
#       elit, sed do eiusmod tempor incididunt ut labore et dolore
#       magna aliqua. \nUt enim ad minim veniam, quis nostrud
#       exercitation ullamco laboris nisi ut aliquip ex ea commodo
#       consequat. Duis aute irure dolor in reprehenderit in
#       voluptate.".undent
#
# puts str

#
str1 = {


  key1:
    "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod magna aliqua. \nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea      commodo consequat. Duis aute irure dolor in reprehenderit in voluptate.",

    

#   key2:
#     "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod magna aliqua. \nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea      commodo consequat. Duis aute irure dolor in reprehenderit in voluptate.",
# }
#
# puts
# puts str1[:key1]
#
#
# str2 =  <<-EOS
#           Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod magna aliqua. \nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea      commodo consequat. Duis aute irure dolor in reprehenderit in voluptate.
#         EOS
#
# puts
# puts str2
#
#
# str3 = %(
#         Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod magna aliqua. \nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea      commodo consequat. Duis aute irure dolor in reprehenderit in voluptate.).lstrip
#
# puts
# puts str3

str4 = ['Lorem ipsum dolor sit amet, consectetur adipisicing',
      'elit, sed do eiusmod tempor incididunt       ut labore et dolore',
      'magna aliqua. \nUt enim ad minim veniam, quis nostrud',
      'exercitation ullamco laboris nisi ut aliquip ex ea commodo',
      'consequat. Duis aute irure dolor in reprehenderit in voluptate.']
      .join

puts str4
