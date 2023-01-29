CREATE TABLE "Customer" (
  "customer_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100)
);

CREATE TABLE "Consession" (
  "consession_id" SERIAL PRIMARY KEY,
  "food_type" VARCHAR(100),
  "drink_type" VARCHAR(100),
  "candy_type" VARCHAR(100),
  "snack_type" VARCHAR(100),
  "supply" NUMERIC(5,2),
  "customer_id" INTEGER REFERENCES "Customer" ("customer_id")
);

CREATE TABLE "Movie" (
  "movie_id" SERIAL PRIMARY KEY,
  "name" VARCHAR(100),
  "duration" NUMERIC(6,2),
  "screen_room" NUMERIC(4,2),
  "release_date" DATE,
  "actor_actress" VARCHAR(100)
);

CREATE TABLE "Payment" (
  "payment_id" SERIAL PRIMARY KEY,
  "payment_type" VARCHAR(100),
  "amount" NUMERIC(5,2)
);

CREATE TABLE "Ticket" (
  "ticket_id" SERIAL PRIMARY KEY,
  "inventory" NUMERIC(5,2),
  "customer_id" INTEGER REFERENCEs "Customer" ("customer_id"),
  "movie_id" INTEGER REFERENCES "Movie" ("movie_id"),
  "payment_id" INTEGER REFERENCES "Payment" ("payment_id")
);

CREATE TABLE "Games" (
  "game_id" SERIAL PRIMARY KEY,
  "game_type" VARCHAR(100),
  "VR_game" VARCHAR(100),
  "game_name" VARCHAR(100),
  "interactive_game" VARCHAR(100),
  "inventory" NUMERIC(4,2),
  "play_time" NUMERIC(4,2),
  "ticket_id" INTEGER REFERENCES "Ticket" ("ticket_id")
);
