CREATE TABLE "USER" (
  "id" integer,
  "pseudonym" string,
  "birth_date" date,
  "email" string,
  "phone_number" number,
  "city" string,
  "postal_code" number,
  "password" string,
  "points" number,
  "grade" string,
  "rib" number
);

CREATE TABLE "PROJECT" (
  "id" integer,
  "user_id" integer,
  "title" string,
  "banner_url" string,
  "website_url" string,
  "description" string,
  "budget" number,
  "comments" number,
  "maximum_comments" number
);

CREATE TABLE "SCENARIO" (
  "id" integer,
  "project_id" integer,
  "comment_id" integer,
  "title" string
);

CREATE TABLE "PAGE" (
  "id" integer,
  "project_id" integer,
  "comment_id" integer,
  "title" string,
  "url" string
);

CREATE TABLE "MEMO_SHEET" (
  "id" integer,
  "plan_url" string,
  "title" string,
  "observation" string,
  "utility" string,
  "advice" string,
  "state" bolean
);

CREATE TABLE "FAVORITE" (
  "user_id" integer,
  "project_id" number
);

CREATE TABLE "COMMENT" (
  "id" integer,
  "user_id" integer,
  "project_id" number,
  "content" string,
  "rank" number,
  "submit_date" date
);

CREATE TABLE "USER_HAS_MEMO_SHEET" (
  "user_id" integer,
  "memo_sheet_id" integer
);

ALTER TABLE "PROJECT" ADD FOREIGN KEY ("user_id") REFERENCES "USER" ("id");

ALTER TABLE "SCENARIO" ADD FOREIGN KEY ("project_id") REFERENCES "PROJECT" ("id");

ALTER TABLE "PAGE" ADD FOREIGN KEY ("project_id") REFERENCES "PROJECT" ("id");

ALTER TABLE "SCENARIO" ADD FOREIGN KEY ("project_id") REFERENCES "COMMENT" ("id");

ALTER TABLE "PAGE" ADD FOREIGN KEY ("project_id") REFERENCES "COMMENT" ("id");

ALTER TABLE "FAVORITE" ADD FOREIGN KEY ("user_id") REFERENCES "USER" ("id");

ALTER TABLE "FAVORITE" ADD FOREIGN KEY ("project_id") REFERENCES "PROJECT" ("id");

ALTER TABLE "COMMENT" ADD FOREIGN KEY ("user_id") REFERENCES "USER" ("id");

ALTER TABLE "COMMENT" ADD FOREIGN KEY ("project_id") REFERENCES "PROJECT" ("id");

ALTER TABLE "USER_HAS_MEMO_SHEET" ADD FOREIGN KEY ("user_id") REFERENCES "USER" ("id");

ALTER TABLE "USER_HAS_MEMO_SHEET" ADD FOREIGN KEY ("memo_sheet_id") REFERENCES "MEMO_SHEET" ("id");
