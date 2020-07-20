# Hiking App - Demonstrating Testing and Integration

* Ruby version: 2.7.1

* Configuration
You will need to create a new master key:  
1. `rm config/credentials.yml.enc` - Remove the old file
2. `EDITOR="vim" rails credentials:edit

* Database creation
If you have a database with the same name run `rails db:drop`

`rails db:create`


* Database initialization
There are currently no development seeds only test factories  
`rails db:migrate`

* How to run the test suite

`bin/rspec`

