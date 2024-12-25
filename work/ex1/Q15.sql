SELECT store.store_id,address.address,city.city   
    FROM store, address,city
    WHERE address.address IS NULL;