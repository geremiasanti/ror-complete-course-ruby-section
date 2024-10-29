@users = [
  { username: 'geremione', password: 'passwordona' },
  { username: 'user0', password: 'pass0' },
  { username: 'user1', password: 'pass1' },
  { username: 'user2', password: 'pass2' },
  { username: 'user3', password: 'pass3' },
]

def puts_separator
  puts '-' * 40
end

def authenticate
  puts 'Autenticati! (hai massimo 3 tentativi)'
  3.times do
    puts_separator()

    print 'username: '
    username = gets.chomp
    user_record = @users.find { |user| user[:username].eql? username } 
    if user_record.nil? 
      puts 'Non e\' presente nessun utente con l\'username specificato.'
      next
    end

    print 'password: '
    password = gets.chomp
    if user_record[:password].eql? password
      puts 'Daje, ora sei autenticato.'
      return
    else 
      puts 'Password errata.'
      next
    end
  end
  puts_separator()
  puts 'Avevi 3 tentativi, sono finiti.'
end

authenticate()
