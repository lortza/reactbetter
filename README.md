## README
[![Build Status](https://travis-ci.org/lortza/lemonade.svg?branch=master)](https://travis-ci.org/lortza/lemonade)

Lemonade is the repo for the ReactBetter app. When requested by the user, this app displays a suggestion for a better emotional reaction with a randomly selected image in the background of that suggestion.

See the live version of the app at http://reactbetter.herokuapp.com

* Ruby version: 2.2.4
* Rails version: 4.2.10
* Database: PSQL

### Features
* Non-signed-in users can see Reaction suggestions
* Signed in Users can add/edit/delete Reactions' text
* Signed in Admin Users can manage Reactions as well as add/edit/delete users and assign Admin privilege.

### Installation Notes
* Install as a PSQL app
* Images all exist as local assets
* Run seeds to get a handful of populated Reactions
