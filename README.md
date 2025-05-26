# stealth_dom_id

> [!IMPORTANT]
> This gem is sunsetted. The [suggested solution and replacement is outlined in this article](https://railsdesigner.com/dom-id-without-primary-id/).

stealth_dom_id extends Rails' [`dom_id`](https://github.com/rails/rails/blob/main/actionview/lib/action_view/record_identifier.rb) helper by allowing you to generate DOM IDs using any attribute instead of the default database primary keys. This helps keep your internal database IDs private.

## Installation

Add the gem to your application's Gemfile by running:
```bash
bundle add stealth_dom_id
```

## Usage

Instead of exposing database IDs in your HTML elements with the standard `dom_id` helper:
```erb
<%= dom_id(@user) %>
# => "user_1"
```

You can use any available attribute of your choice:
```erb
<%= dom_id(@user, attribute: :public_id) %>
# => "user_a1b2c3"
```

The `attribute` parameter is optional and defaults to the model's primary key. Just like Rails' built-in `dom_id`, you can also include a prefix:
```erb
<%= dom_id(@user, :admin, attribute: :public_id) %>
# => "admin_user_a1b2c3"
```

### Configuration

You can set a default attribute to be used across your application. Add this to an initializer (e.g., `config/initializers/stealth_dom_id.rb`):
```ruby
StealthDomId.configure do |config|
  config.default_attribute = :public_id
end
```

Now `public_id` will be used whenever no specific attribute is provided.


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
