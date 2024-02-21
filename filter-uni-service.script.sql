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