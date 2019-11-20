# **Jungle**

A mini e-commerce application built with Rails 4.2. Built from existing Lighthouse Labs code to gain experience understanding, working in, and modifying an established code base.

## Final Product

*Home page showing product listing*

!["Screenshot of home page"](https://github.com/caitlining/jungle_rails/blob/master/docs/main_product_page.png?raw=true)

*Individual Product Details Page*

!["Screenshot of product page"](https://github.com/caitlining/jungle_rails/blob/master/docs/product_details.png?raw=true)

*User Signup Page*

!["Screenshot of product page"](https://github.com/caitlining/jungle_rails/blob/master/docs/signup.png?raw=true)

*Shopping Cart with Items*
!["Screenshot of cart with two items"](https://github.com/caitlining/jungle_rails/blob/master/docs/my_cart.png?raw=true)

*Order Confirmation Page, after payment*
!["Screenshot of order confirmation page"](https://github.com/caitlining/jungle_rails/blob/master/docs/order_confirmation.png?raw=true)

*Empty Cart Message*

!["Screenshot of empty cart page"](https://github.com/caitlining/jungle_rails/blob/master/docs/empty_cart.png?raw=true)

*Admin Only Category Dashboard*

!["Screenshot of admin category dashboard"](https://github.com/caitlining/jungle_rails/blob/master/docs/admin_category_dashboard.png?raw=true)

*About Page*

!["Screenshot of about page"](https://github.com/caitlining/jungle_rails/blob/master/docs/about_page.png?raw=true)


## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

#### Enjoy! 
