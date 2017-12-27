# about this
## abstract
This repository is for server of QaApp.This is written by rails-api mode and use MySql and heroku.
Image is saved in S3 of AWS.

## main content
 - authentication : use facebook omniauth auth based on `devise_token_auth`
 - manage : use cancan for model manage
 - charge : use stripe by `stripe` and `omniauth-stripe-connect`
 - image uploader : use carriawave and fog for upload to AWS S3

# Prepare

## Install

 - ruby on rails < 5.0
 - other libraries in Gemfile
  └please do `bundle install` in this repository

## heroku

please refer to heroku in wiki

## key

set each variable in env

 - stripe(in stripe web site)
  └STRIPE_CLIENT_ID
  └STRIPE_PUBLISH
  └STRIPE_SECRET
 - facebook(in facebook develop web site)
  └FACEBOOK_KEY
  └FACEBOOK_SECRET
 - AWS S3
  └aws_access_key_id
  └aws_secret_access_keyz1nkJL9ucwnMSx/JdNr
  └region

# start
## setting DB
 - `rails db:migrate:reset`
 - `rails db:seed`

## develop
 - `rails s`

## test or production
 - deploy to heroku