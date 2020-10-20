package com.example.expensetrackerservice.service;

import com.example.expensetrackerservice.models.Expense;
import com.example.expensetrackerservice.repository.ExpenseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ExpenseServiceImplementation implements ExpenseService{

    @Autowired
    ExpenseRepository expenseRepository;

    @Override
    public List<Expense> findAll(){
        return expenseRepository.findAll();
    }

    @Override
    public void save(Expense expense) {
        expense.setCreatedAt(System.currentTimeMillis());
        expenseRepository.save(expense);
    }
}
