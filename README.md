# Docker Test for Lys Intelligence Inc.

## Prerequest

- Docker, Docker compose
- PostgresClient (for running sql script)

## Run the docker compose

```
docker compose up
```

PostgreSQL will run in localhost:5432 and the initial data will be seeded.

## Test SQL script.

You can connect to db using psql client.
```
psql -h localhost -U postgres
```

Password is mysecretpassword.

1. Select index for each row

```sql
SELECT
    PST,
    Site,
    Service_Type,
    Type,
    ROW_NUMBER() OVER (PARTITION BY Site ORDER BY Service_Type, Type) AS index
FROM
    service;
```

2. Filter for UNI service or unique EVC service.

```sql
SELECT
    PST,
    Site,
    Service_Type,
    Type
FROM
    service
WHERE
    Service_Type = 'UNI'
    OR (
        Site NOT IN (
            SELECT Site FROM service WHERE Service_Type = 'UNI'
        )
        AND Service_Type = 'EVC'
    );
```


