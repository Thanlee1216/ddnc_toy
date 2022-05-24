package com.ddnc.toy.repository;

import org.springframework.stereotype.Repository;

@Repository
public interface TestRepository {

    void insert(long testId);

}
