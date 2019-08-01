
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.team.bnb.services;

import com.team.bnb.model.Storages;
import com.team.bnb.repositories.StoragesRepository;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.mongo.embedded.EmbeddedMongoProperties.Storage;
import org.springframework.stereotype.Service;

/**
 *
 * @author Kosta
 */
@Service
public class StoragesService {

    @Autowired
    StoragesRepository storagesRepository;

    public void insert(Storages s) {
        storagesRepository.save(s);
    }

    public List<Storages> viewAllStorages() {
        List<Storages> result = storagesRepository.findAll();

        return result;
    }

    public List<Storages> viewStoragesByCity(int city_id) {
        List<Storages> storages = storagesRepository.findBycityId(city_id);
        return storages;
    }

    public List<Storages> viewStoragesByOwner(int owner_id) {
        List<Storages> storages = storagesRepository.findByOwnerId(owner_id);
        return storages;
    }

    public Storages viewStorageByid(Storages storageId) {
        Storages storage = storagesRepository.findByStorageId(storageId);
        return storage;
    }

}
