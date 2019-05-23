package com.codegym.service;

import com.codegym.model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductServiceImpl implements ProductService {

    private static List<Product> productList;
    static {
        productList = new ArrayList<>();
        productList.add(new Product(1,"keo",10000,"vi ngot","cong ty A"));
        productList.add(new Product(2,"banh",15000,"mui thom","cong ty B"));
        productList.add(new Product(3,"nuoc",7000,"giai khat","cong ty C"));
    }

    @Override
    public List<Product> findAll() {
        return productList;
    }

    @Override
    public void save(Product product) {
        productList.add(product);
    }

    @Override
    public void update( Product product) {
    }

    @Override
    public void remove(int id) {
        Product product = this.findById(id);
        productList.remove(product);
    }

    @Override
    public Product findById(int id) {
        for (Product product: productList){
           if (product.getId()==id){
               return product;
           }
        }
        return null;
    }

    @Override
    public Product search( String name) {
        List<Product> list = productList;
        for (Product product: list) {
            String a = product.getName();
            if (a.equals(name)){
                return product;
            }
        }
        return null;
    }
}
