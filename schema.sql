CREATE TABLE "public"."User" (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE "public"."Profile" (
  id SERIAL PRIMARY KEY NOT NULL,
  bio TEXT,
  "userId" INTEGER UNIQUE NOT NULL,
  FOREIGN KEY ("userId") REFERENCES "public"."User"(id)
);

CREATE TABLE "public"."Newsletter"(
  id SERIAL PRIMARY KEY NOT NULL,
  "owner" INTEGER NOT NULL,
  FOREIGN KEY ("owner") REFERENCES "public"."User"(id)
);

CREATE TABLE "public"."Questions"(
  id SERIAL PRIMARY KEY NOT NULL,
  question TEXT,
  "askedBy" INTEGER NOT NULL,
  FOREIGN KEY ("askedBy") REFERENCES "public"."User"(id)
);