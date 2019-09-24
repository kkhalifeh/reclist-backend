CREATE TABLE "categories" (
  "id" varchar,
  "label" string,
  "created_at" datetime,
  "updated_at" datetime
);

CREATE TABLE "list_places" (
  "id" varchar,
  "list_id" bigint,
  "place_id" bigint,
  "created_at" datetime,
  "updated_at" datetime,
  "note" string
);

CREATE TABLE "lists" (
  "id" varchar,
  "author_id" integer,
  "location_id" bigint,
  "pinned" integer,
  "created_at" datetime,
  "updated_at" datetime
);

CREATE TABLE "locations" (
  "id" varchar,
  "city" string,
  "country" string,
  "latitude" float,
  "longitude" float,
  "created_at" datetime,
  "updated_at" datetime
);

CREATE TABLE "pins" (
  "id" varchar,
  "user_id" bigint,
  "list_id" bigint,
  "created_at" datetime,
  "updated_at" datetime
);

CREATE TABLE "place_categories" (
  "id" varchar,
  "place_id" bigint,
  "category_id" bigint,
  "created_at" datetime,
  "updated_at" datetime,
  "list_id" bigint
);

CREATE TABLE "places" (
  "id" varchar,
  "google_id" string,
  "name" string,
  "img_url" string,
  "created_at" datetime,
  "updated_at" datetime
);

CREATE TABLE "users" (
  "id" varchar,
  "username" string,
  "first_name" string,
  "last_name" string,
  "likes" string,
  "created_at" datetime,
  "updated_at" datetime,
  "email" string,
  "crypted_password" string,
  "salt" string
);

ALTER TABLE "lists" ADD CONSTRAINT "fk_rails_list_places_lists" FOREIGN KEY ("id") REFERENCES "list_places" ("list_id");

ALTER TABLE "places" ADD CONSTRAINT "fk_rails_list_places_places" FOREIGN KEY ("id") REFERENCES "list_places" ("place_id");

ALTER TABLE "locations" ADD CONSTRAINT "fk_rails_lists_locations" FOREIGN KEY ("id") REFERENCES "lists" ("location_id");

ALTER TABLE "lists" ADD CONSTRAINT "fk_rails_pins_lists" FOREIGN KEY ("id") REFERENCES "pins" ("list_id");

ALTER TABLE "users" ADD CONSTRAINT "fk_rails_pins_users" FOREIGN KEY ("id") REFERENCES "pins" ("user_id");

ALTER TABLE "categories" ADD CONSTRAINT "fk_rails_place_categories_categories" FOREIGN KEY ("id") REFERENCES "place_categories" ("category_id");

ALTER TABLE "lists" ADD CONSTRAINT "fk_rails_place_categories_lists" FOREIGN KEY ("id") REFERENCES "place_categories" ("list_id");

ALTER TABLE "places" ADD CONSTRAINT "fk_rails_place_categories_places" FOREIGN KEY ("id") REFERENCES "place_categories" ("place_id");
