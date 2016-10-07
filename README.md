# heroku db import
pg_dump myrubyblog > backup.sql
heroku pg:psql --app myrubyblog100 < backup.sql