CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY,
  "user_name" varchar,
  "email" varchar,
  "b_day" date
);

CREATE TABLE "chart" (
  "id" SERIAL PRIMARY KEY,
  "user_id" int,
  "sun" varchar,
  "moon" varchar,
  "mercury" varchar,
  "venus" varchar,
  "mars" varchar,
  "jupiter" varchar,
  "saturn" varchar
);

CREATE TABLE "planets" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "signs" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "horoscopes" (
  "id" SERIAL PRIMARY KEY,
  "day" datetime,
  "planet_id" integer,
  "sign_id" varchar,
  "horoscope" text
);

ALTER TABLE "chart" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "chart" ADD FOREIGN KEY ("sun") REFERENCES "planets" ("name");

ALTER TABLE "chart" ADD FOREIGN KEY ("moon") REFERENCES "planets" ("name");

ALTER TABLE "chart" ADD FOREIGN KEY ("mercury") REFERENCES "planets" ("name");

ALTER TABLE "chart" ADD FOREIGN KEY ("venus") REFERENCES "planets" ("name");

ALTER TABLE "chart" ADD FOREIGN KEY ("mars") REFERENCES "planets" ("name");

ALTER TABLE "chart" ADD FOREIGN KEY ("jupiter") REFERENCES "planets" ("name");

ALTER TABLE "chart" ADD FOREIGN KEY ("saturn") REFERENCES "planets" ("name");

ALTER TABLE "horoscopes" ADD FOREIGN KEY ("planet_id") REFERENCES "planets" ("id");

ALTER TABLE "horoscopes" ADD FOREIGN KEY ("sign_id") REFERENCES "signs" ("id");

COMMENT ON TABLE "chart" IS 'table This is a little brute forcey currently
  however referencing the foreign key of the planets
  table doesnt make sense when we have to reference all 
  7 of the traditional planets, perhaps we can store them 
  in Prisma model as a list?';
