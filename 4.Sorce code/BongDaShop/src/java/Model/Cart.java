/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Admin
 */
public class Cart {
    
    private HashMap<Long, Item> cartItem;

    public Cart() {
        cartItem = new HashMap<>();
    }

    public Cart(HashMap<Long, Item> cartItem) {
        this.cartItem = cartItem;
    }

    public HashMap<Long, Item> getCartItem() {
        return cartItem;
    }

    public void setCartItem(HashMap<Long, Item> cartItem) {
        this.cartItem = cartItem;
    }
    
     // insert to cart
    public void plusToCart(Long key, Item item){
        boolean check = cartItem.containsKey(key);
        if(check){
            int quantity_old = item.getQuantity();
            item.setQuantity(quantity_old + 1);
            cartItem.put(key, item);
//                cartItem.put(item.getProduct().getProductID(), item);
        }else {
            cartItem.put(key, item);
//            cartItem.put(item.getProduct().getProductID(), item);
        }
    }
  
    // sub to cart
    
    public  void subToCart(Long key, Item item){
        boolean check = cartItem.containsKey(key);
        if(check){
            int quantity_old = item.getQuantity();
            if(quantity_old <= 1){
                cartItem.remove(key);
            }else {
                item.setQuantity(quantity_old - 1);
                cartItem.put(key, item);
            }
            }
        }
    
    //remove to cart
    
    public void removeToCart(Long key){
        boolean check = cartItem.containsKey(key);
        if(check){
            cartItem.remove(key);
        }
    }
    // count item
    
    public int countItem(){
//         int count = 0;
//        count = cartItem.size();
//        return count;
      return cartItem.size();
    }
    // sum total
    public double  totalToCart(){
        double count =0;
        // count = product pruce * quantity
        for(Map.Entry<Long, Item>list : cartItem.entrySet()){
            count += list.getValue().getProduct().getProductPrice() * list.getValue().getQuantity();
        }
        return  count;
    }
    
    }

