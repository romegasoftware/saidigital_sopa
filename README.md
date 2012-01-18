#SAI Digital SOPA Blackout

This is how we're blacking out the site for Stop SOPA/PIPA day.

It's a [sinatra](http://www.sinatrarb.com) app.

It sends a 503 status for *everything* and renders zachstronaut's nice HTML5 presentation.

Much thanks to zachstronaut for the nice HTML5 media for which the repository can be found [here](https://github.com/zachstronaut/stop-sopa).

This repository contains a haml version of zachstronaut's code.


#IMPORTANT

The Retry-After header is set for 10:00 AM GMT. So, you will need to remove this app and replace it with your original website by the follow times according to your timezone:

* 5:00AM - EST
* 4:00AM - CST
* 3:00AM - MST
* 2:00AM - CST
