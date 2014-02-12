require "sinatra"
require "sinatra/reloader"
require "pg"
require "pry"



get "/" do

    #generate random url
    width = rand(100..400)
    height = rand(100..400)
    @my_url = "http://placekitten.com/#{width}/#{height}"

    #display cat
    erb :index
end

post "/vote/meow/" do
    
    @my_url = params.keys[0]
    sql = "INSERT INTO morning_kittens (url, is_meow) VALUES ('#{@my_url}', true);"

    my_db = PG.connect(dbname: "sandbox_db")
    my_db.exec(sql)
    my_db.close

    redirect("/")


    #create sql string

end

post "/vote/not_meow/" do
    @my_url = params.keys[0]

    sql = "INSERT INTO morning_kittens (url, is_meow) VALUES ('#{@my_url}', false);"

    my_db = PG.connect(dbname: "sandbox_db")
    my_db.exec(sql)
    my_db.close

    redirect("/")
end

get "/all_cats/" do
    my_db = PG.connect(dbname: "sandbox_db")
    100.upto(400) do |x|
        100.upto(400) do |y|
            @my_url = "http://placekitten.com/#{x}/#{y}"
            sql = "INSERT INTO morning_kittens (url, is_meow) VALUES ('#{@my_url}', true);"
            my_db.exec(sql)
        end
    end
    my_db.close
end





