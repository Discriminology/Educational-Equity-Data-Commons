-- Table Definition ----------------------------------------------

CREATE TABLE district_leaders (
    
    id SERIAL PRIMARY KEY,
    "LEAID" text,
    "POSITION" text,
    "LEA_NAME" text,
    "LEA_STATE_NAME" text,
    "FIRST_NAME" text,
    "LAST_NAME" text,
    "TWITTER" text,
    "PHONE" text,
    "EMAIL" text,
    "FACEBOOK" text,
    "URL" text,
    "SCHOOL_YEAR" text,
    "OUT_OF_DATE" boolean
    
);

-- Indices -------------------------------------------------------

CREATE UNIQUE INDEX dl_pkey ON district_leaders(id int4_ops);
