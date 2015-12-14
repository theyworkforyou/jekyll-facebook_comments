# Jekyll::FacebookComments

Add Facebook comment boxes to your Jekyll site.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jekyll-facebook_comments'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-facebook_comments

## Usage

First add this tag just after your `<body>` tag:

```liquid
{% facebook_javascript_sdk %}
```

Then drop this tag wherever you want a comment box to appear:

```liquid
{% facebook_comment_box %}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/everypolitician/jekyll-facebook_comments.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
