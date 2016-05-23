##  Directly calculate from trey_db:

1. config trey db:

 ``` bash
vim config/trey_db.yml
```

2. dump follower counts from trey_db to 'output/db_follower_counts.yml':

 ```bash
bundle exec ruby fetch_trey_follower_counts.rb
```

3. fetch srma resources to 'output/resources.yml':

 ```bash
bundle exec ruby fetch_srma_resources.rb
```

4. calculate each root_bundle_id's follower_counts:
    
 ```bash
bundle exec ruby calculate_account_followers.rb
```


#### references

* trey_db_schema: references/trey_db_schema.sql

#### todo

1. get trey data yml: run step 2 in production trey env
2. complete 'calculate_account_followers.rb'
