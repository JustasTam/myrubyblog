# heroku db import
pg_dump myrubyblog > backup2.sql
heroku pg:psql --app myrubyblog100 < backup.sql