require_relative '../lib/waterbottle'
class Waterbottle
  def empty?
    @empty = true
  end

  def drink
    raise "This bottle is empty!" if empty?
  end

  def fill
    @empty = false
  end
end
