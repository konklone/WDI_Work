configure :production, :development do
  # this will give us access to our freely available environment variables
  db = URI.parse(ENV['DATABASE_URL'] || 'postgres://paris@localhost/broadway_db')

  ActiveRecord::Base.establish_connection(
    :adapter => 'postgresql',
    :host     => db.host,
    :username => db.user,
    :password => db.password,
    :database => db.path[1..-1],
    :encoding => 'utf8'
  )
end

