# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Test Speed

```sh
time rake spec # Rails environment is loaded twice (you pay a double load cost)
time bundle exec rspec spec # Only loads rails environment once
time bundle exec rspec spec/lib # Only runs our fast specs (isolated in lib)
time rspec spec/lib
```

Beware `spec_helper` (it loads everything instead of allowing you to
intelligently choose what is loaded)

