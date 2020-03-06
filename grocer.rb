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

  x = 0 
  while x < coupons.length 
    cart_item = find_item_by_name_in_collection(coupons[x][:item], cart)
    couponed_item_name = "#{coupons[x][:item]} W/COUPON"
    cart_item_with_coupon = find_item_by_name_in_collection[couponed_item_name, cart] 
    
    if cart_item && cart_item[:count] >= coupons[x][:num]
       if cart_item_with_coupon 
         cart_item_with_coupon[:count] += coupons[x][:num]
          cart_item[:count] -= coupons[x][:num]
       
      else 
  
     cart_item_with_coupon = {
      :item => couponed_item_name,
      :price => coupons[x][:cost] / coupons[x][:num], 
       :count => coupons[x][:num],
      :clearance => cart_item[:clearance]
    }
 
      cart << cart_item_with_coupon
      cart_item[:count] -= coupons[x][:num]
      
      end
    end
    counter += 1 
  end 
  cart 
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
