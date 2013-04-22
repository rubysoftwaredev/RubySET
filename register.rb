#!/usr/bin/ruby

#Use case scenario : registering a new user

# Flow : (1) user enters email address
# email address is recorded
# weblink is sent to user's email address; user must click on link 
# user is logged out.

def register(instr)
 File.open('new_users.txt','r+') do |f|
   while line = f.gets
     puts line
     if  line.eql?instr   
          return instr + " has already registered"
     end
   end
   f.write(instr)
   f.close
 end
 return "completed registering" + instr
end

retval = register "chandragupta.phd@gmail.com"

puts "************"
puts retval
puts "************"



