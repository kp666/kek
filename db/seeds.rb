User.create ({
  login: 'ershad',
  email: 'ershad92@gmail.com',
  name: 'Ershad Kunnakkadan',
  mobile_number: '8089133362'
})


File.open('db/colleges_list.txt') do |f|
  f.readlines.each do |line|
    College.create name: line.strip
  end
end
