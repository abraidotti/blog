# README

## What this is
This is a blog project for NYCDA 2017.
It combines:
* the boilerplate Rails blog (http://guides.rubyonrails.org/getting_started.html)
* some added attributes like a name for the user and more complicated comment relationships
* the Devise authentication gem (https://github.com/plataformatec/devise)
* two fonts from http://fonts.google.com : Lobster and PT sans
* custom styling

## Installation:

```
git clone https://github.com/abraidotti/blog

rake db:migrate
```
Optionally, if you want a few Rick and Morty quotes to start the blog out:
```
rake db:seed
```
and then
```
rails server
```

Once the server's running, go to localhost:3000 in your browser.

## Notes

User authentication by email is disabled, so things are pretty insecure at the moment.
