require 'csv'
require 'pg'
require_relative 'data.txt'

db_conn = PG.connect(dbname: "sandbox", host: "localhost")

CSV.open('data.txt', 'r', ';') do |row|
  puts row
end

    query = "INSERT INTO players "
    query += "(name,age,team,games,points) VALUES"
    query += "("
    query += "'#{:name}', '#{:age}',"
    query += "#{new_receipt[:num]}, #{new_receipt[:price]},"
    query += "'#{new_receipt[:parent]}', '#{new_receipt[:date]}'"
    query += ");"
    db_conn.exec( query )

