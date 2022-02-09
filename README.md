# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example. From this example, be familier with the Ruby and Rails, and gain knowledge of
workflow of the Ruby Rails.

## ScreenShot
![alt text](https://github.com/YunDobi/Jungle/blob/master/docs/Screen%20Shot%202022-02-09%20at%201.38.26%20PM.png)

![alt text](https://github.com/YunDobi/Jungle/blob/master/docs/Screen%20Shot%202022-02-09%20at%201.38.58%20PM.png)

![alt text](https://github.com/YunDobi/Jungle/blob/master/docs/Screen%20Shot%202022-02-09%20at%201.40.08%20PM.png)

## Setup

1. Run `bundle install` to install dependencies
2. Run `bin/rake db:reset` to create, load and seed db
3. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing
'config.use_transactional_fixtures' is false right now, want to see the change, change this to true.
Run 'bin/rspec spec/features' to the commend, and It will start the test

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
* Cypabra
* Poltergeist
* PhantomJs
