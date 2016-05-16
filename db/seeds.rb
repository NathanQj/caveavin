#######################################
#                USERS                #
#######################################

u = User.new(email: "user@caveavin.com", password: "123")
u.save(validate: false)
puts "created: [User] user@caveavin.com"
