package com.niit.shoppingcartbackend.dao;

import java.util.List;

import com.niit.shoppingcartbackend.model.Supplier;

public interface SupplierDAO {
public List<Supplier> list();
public Supplier get(String id);
public void saveOrUpdate(Supplier Supplier);
public void delete(String id);
public Supplier getByName(String name);
}