package com.autoCounsel.auto_counsel.dao;

import com.autoCounsel.auto_counsel.entity.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserRepo extends CrudRepository<User, Integer> {

    @Query("select u from User u where u.userName = :userName and u.password = :password")
    Optional<User> findByUserNameAndPassword(String userName, String password);
}
