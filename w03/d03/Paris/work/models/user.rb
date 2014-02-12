class User

  def initialize(id, name, address, email)
    @id = id
    @name = name
    @address = address
    @email = email
  end

def to_s
  "User: #{@id}: #{@name}, #{@email}, #{@address}."
end

end







