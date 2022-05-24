package com.ddnc.toy.repository;

import com.ddnc.toy.domain.model.Users;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public interface MypageRepository {

    @Transactional
    public void updatePassword(Users users);


}
