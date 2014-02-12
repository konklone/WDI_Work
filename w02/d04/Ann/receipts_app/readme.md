WEB APP = Receipts.io 

GET "/" => "Welcome to Receipt.io"
GET "/receipts/new" => form for new receipts 
 - inputs for store, product, and price
 POST "/receipts" => create a new receipt and save it as a CSV to receipts.txt (and assign it a unique id)
 GET "/receipts" => print out all the generated receipts 
 Get "/receipts/:id" => show a particular receipt 

 Your CSV should look liek this: 
 1, best buy, 1cd tv, 400.23 
 2, target,book shelf, 69.95
 etc.... 

 