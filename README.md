# downTime
A simple SPA that tracks user's cell phone time

# Planned Objective

# Technologies Used

## Back-End:

Ruby
SQL
Rails
Heroku

## Front-End:

HTML5
CSS3
JS
Handlebars?

# The Process

## Day One

This was the day I learned how to finally move files around and rename them in
the terminal.  I was very proud.  I may never go back to GUI!

I downloaded both the Rails API template and the Browser template, renamed them,
and deployed them both to GitHub and my new Heroku account.  This process proved
to be somewhat tricky, but not impossible.  The clear instructions made it easy!

I wound up completely stymied for several hours by 1) a db:migrate error that
proved to be from using date_type as a data type instead of datetime for the
amount of time the user spends away from their phone and 2) a problem with some
curl requests that turned out to be due to the unconstructed database and not
running the rails server.  Correcting these issues made it simpler to catch
up and figure out what needed to be done next!

I spruced up, added descriptions to, and pinned the repos, and then changed the
Application controller inheritance to OpenRead in my downtime_instances controller.

Curls on the auth file all cleared.  Did not start curling resources yet.

### Outstanding Issues for Day One:

-No SQL work
-Heroku knowledge is shaky; downtime isn't showing as one of my account apps
-Client is being deployed to my .io as /downtime/client because of folder
shenanigans

## Day Two

A snow day!  But no rest for the wicked, nor for the developers.

Discovered that I needed to be testing my resources on curl BEFORE I changed the
Applicaiton controller inheritance, had to change that back.  Boo.
