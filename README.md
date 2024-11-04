# StealthDomId

stealth_dom_id extends Rails' [`dom_id`](https://github.com/rails/rails/blob/main/actionview/lib/action_view/record_identifier.rb) helper to generate DOM IDs using alternative columns instead of database primary keys. This helps prevent exposing internal database IDs


## Installation

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add stealth_dom_id
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install stealth_dom_id
```


## Usage

This gem extends Rails' `dom_id` helper to use alternative columns instead of exposing database IDs in your HTML elements.

Instead of:
```erb
<%= dom_id(@user) %>
# => "user_1"

<%= dom_id(@user, column: :public_id) %>
# => Outputs: "user_a1b2c3"
```

The `column` attribute is optional. `prefix` attribute is also supported.

```erb
<%= dom_id(@user, :admin, column: :public_id) %>
# => Outputs: "admin_user_a1b2c3"
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
