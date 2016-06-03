require 'sqlite3'
require 'faker'

dbase = SQLite3::Database.new("streets.db")

create_table = <<-SQ
	CREATE TABLE IF NOT EXISTS streets(
		id INTEGER PRIMARY KEY,
		street VARCHAR(255),
		assigned_cleaner INT,
		cleaned BOOLEAN
	)
SQ

dbase.execute(create_table)

def create_street(dbase, street, assigned_cleaner, cleaned)
	dbase.execute("INSERT INTO streets (street, assigned_cleaner, cleaned) VALUES (?, ?, ?)", [street, assigned_cleaner, cleaned])
end
 
50.times do
  create_street(dbase, Faker::Address.street_name, Faker::Number.number(4), "true")
end