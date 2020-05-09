CREATE TABLE "public"."User"(
    id SERIAL PRIMARY KEY NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255),
    "createdAt" TIMESTAMP NOT NULL DEFAULT now(),
    "oldRoundtables" INTEGER NOT NULL,
    FOREIGN KEY ("oldRoundtables") REFERENCES "public"."RoundTables"(id)
)

CREATE TABLE "public"."Roundtables"(
    id SERIAL PRIMARY KEY NOT NULL,

    
)

