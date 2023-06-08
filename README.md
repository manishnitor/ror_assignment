
# ROR Assignment

An app where coordinator can track participants across multiple registries

## Installation


Getting started:
```bash
 rails db:create db:migrate
 rails s
```

Provide sql for aggregate count of participants by year of birth.

```bash
 SELECT "participants".* FROM "participants" WHERE (strftime('%Y', date_of_birth) = '1993')
```

Provide sql for aggregate count of participants by coordinator and gender.

```bash
 SELECT COUNT(DISTINCT "participants"."id") FROM "participants" INNER JOIN "enrollments" ON "enrollments"."participant_id" = "participants"."id" WHERE "participants"."gender" = ? AND "enrollments"."coordinator_id" = ? [["gender", 0], ["coordinator_id", 1]]
```
    