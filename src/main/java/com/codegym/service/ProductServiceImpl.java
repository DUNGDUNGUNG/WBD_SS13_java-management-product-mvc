package com.codegym.service;

import com.codegym.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {

    private static List<Product> productMap;
    static {
        productMap = new ArrayList<>();
        productMap.add(new Product(1,"keo",10000,"vi ngot","cong ty A"));
        productMap.add(new Product(2,"banh",15000,"mui thom","cong ty B"));
        productMap.add(new Product(3,"nuoc",7000,"giai khat","cong ty C"));
    }

    @Override
    public List<Product> findAll() {
        return productMap;
    }

    @Override
    public void save(Product product) {
        productMap.add(product);
    }

    @Override
    public void update(int id, Product product) {
        productMap.add(id,product);
    }

    @Override
    public void remove(int id) {
        productMap.remove(id);
    }

    @Override
    public Product findById(int id) {
        return productMap.get(id);
    }

    @Override
    public Product search( String name) {
        List<Product> list = productMap;
        for (Product product: list) {
            String a = product.getName();
            if (a.equals(name)){
                return product;
            }
        }
        return null;
    }
}
