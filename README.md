# first
first repo

http://13.250.48.56:8000/
http://13.250.48.56:9090/
http://13.250.48.56:9113/
http://13.250.48.56:3000/

bucket_manager
s3tools/s3cmd

create alias s3cmd command to bucket_manager on ~/.bash_aliases
- alias bucket_manager='s3cmd'

modify s3cmd commands on /usr/bin/s3cmd
- {"cmd":"create", "label":"Make bucket", "param":"s3://BUCKET", "func":cmd_bucket_create, "argc":1},
- {"cmd":"delete", "label":"Remove bucket", "param":"s3://BUCKET", "func":cmd_bucket_delete, "argc":1},
- {"cmd":"grant", "label":"Modify Access control list for Bucket or Files", "param":"s3://BUCKET[/OBJECT]", "func":cmd_setacl, "argc":1},
    
running test
- bucket_manager create s3://finaccellbuckcreatesample      ->  https://prnt.sc/p48i86
- bucket_manager delete s3://finaccellbuckcreatesample1     ->  https://prnt.sc/p48lpa
- bucket_manager grant --grant-acl=read:<canonical-user-id> s3://BUCKETNAME[/OBJECT]
