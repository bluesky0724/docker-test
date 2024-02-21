SELECT
    PST,
    Site,
    Service_Type,
    Type,
    ROW_NUMBER() OVER (PARTITION BY Site ORDER BY Service_Type, Type) AS index
FROM
    service;