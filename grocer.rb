def find_item_by_name_in_collection(name, collection)
    x = 0 
    while x < collection.length do 
      if collection[x][:item] == name 
        return collection[x]
     # else 
     #   nil 
      end 
      x += 1 
    end 
  # Implement me first!
  #
  # Consult README for inputs and outputs
end




def consolidate_cart(cart)
  
    new_cart = [] 
    i = 0 
    while i < cart.length  
     new_cart_item = find_item_by_name_in_collection(cart[i][:item], new_cart)
     
     if new_cart_item != nil 
       new_cart_item[:count] += 1 
      else 
        new_cart_item = {
          :item => cart[i][:item],
          :price => cart[i][:price],
          :clearance => cart[i][:clearance], 
           :count => 1
        }
        new_cart << new_cart_item
     end 
     i += 1  
   end 
  new_cart 
  
end 







def apply_coupons(cart, coupons)

  new_array = []
  counter = 0 
  
  while counter < coupon.length 
    item_with_coupon = find_item_by_name_in_collection(coupons[i][:item], cart)
    coupon_item_name = "#{coupons[i][:item]} W/COUPON", 
    cart_item_with_coupon = find_item_by_name_in_collection[coupon_item_name, cart] 
    
  
    if item_with_coupon && item_with_coupon[:count] >= coupons[x][:num]
       if cart_item_with_coupon 
         cart_item_with_coupon[:count] += coupons[counter][:num]
          item_with_coupon[counter][:count] -= coupons[counter][:num]
         item_with_coupon[:clearance] = true 
       
  
    
       price_per_item = coupons[counter][:cost] / coupons[counter][:num]
    else    
    item_with_coupon = {
      :item => "#{:item} W/COUPON", 
      :price => price_per_item, 
      :clearance => cart[i][:clearance], 
      :count => coupons[i][:num] 
    }
    
    cart << item_with_coupon
   
  
  #consolidate_cart(cart)


  # REMEMBER: This method **should** update cart
end




def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end


def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
