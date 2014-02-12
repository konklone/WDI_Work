


a = [["1", "Barnes and Noble", "tom clancey", "1000\n"], ["2", "chiptole", "burrito ", "500\n"], ["3", "chipotle", "burrito ", "100\n"]]


format = Hash.new{ |h,k| h[k] = {:id => k, :store => '', :product => '', :price => ''}
result = a.inject(format){ |result, (id,k,v)| result[c][k.to_sym] = v; result }.values

a.mash.with_index { |x, i| [i, x] }


