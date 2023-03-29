/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author PHT
 */
public class ProductFacade {
    private Map<Integer,Product> map;

    public ProductFacade() {
        map = new HashMap<>();
        map.put(1, new Product(1, "Apple", 10));
        map.put(2, new Product(2, "Banana", 9));
        map.put(3, new Product(3, "Orange", 8));
    }
    
    public Product select(int id){
        return map.get(id);
    }
    
}
