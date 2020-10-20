package com.example.expensetrackerservice.service;

import com.example.expensetrackerservice.models.Expense;

import java.util.List;

public interface ExpenseService {

    default List<Expense> findAll() {
        return null;
    }

    default void save(Expense expense) {

    }
}
