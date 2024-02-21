CREATE TABLE service (
    PST VARCHAR(255), 
    Site VARCHAR(255),
    Service_Type VARCHAR(255),
    Type VARCHAR(255) 
);

INSERT INTO service (PST, Site, Service_Type, Type)
VALUES
    ('2022/05/23:15', 'W1001', 'EVC', 'BTS'),
    ('2022/05/23:15', 'W1001', 'UNI', 'BTS'),
    ('2022/10/15:30', 'W5539', 'UNI', 'DAS'),
    ('2022/06/10:45', 'W5601', 'EVC', 'BTS'),
    ('2022/06/10:45', 'W5601', 'UNI', 'BTS'),
    ('2022/09/00:15', 'W1256', 'EVC', 'DAS');