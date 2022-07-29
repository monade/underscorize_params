# underscorize_params

## Installation

Add the Gem into your Gemfile

```ruby
gem 'underscorize_params', github: 'monade/underscorize_params'
```

This gem allows you to send params to a Controller's action in camel case.
It gets included inside ActionController::Base

```ruby
ActionController::Base.include UnderscorizeParams::Controller if defined?(ActionController::Base)
```

Suppose you have these Controller and Model:

models/user.rb
```ruby
class User < ActiveRecord::Base
  attribute :first_name, :String
  attribute :last_name, :String
end
```

controllers/users_controller.rb
```ruby
class UsersController < ActionController::Base
  def create
    @user = User.create create_params

    if @user.save
      render json: @user
    else
      render_errors @user.errors
    end
  end

  private

  def create_params
    params.permit(:firt_name, :last_name)
  end
end
```

this gem allows you to call this controller's api with parameters in camel case, such as:

```typescript
const params = {
  firstName: 'Friedrich',
  lastName: 'Nietzsche'
}

axios.post('/users', params)
```

the gem's job is very simple, received parameters get transformed into snake case in the **before_action** hook.
Check out the code to find out, is very simple!

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

About Monade
----------------

![monade](https://monade.io/wp-content/uploads/2021/06/monadelogo.png)

underscorize_params is maintained by [mònade srl](https://monade.io/en/home-en/).

We <3 open source software. [Contact us](https://monade.io/en/contact-us/) for your next project!
