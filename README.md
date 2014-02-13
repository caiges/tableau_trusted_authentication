# Tableau Trusted Authentication

This library provides a simple wrapper around the HTTP calls required for using Tableau's truated authentication mechanism. You can use the `url` method of the View class to get a authenticated url to use when redirecting or embedding views.

## Installation

Add this line to your application's Gemfile:

    gem 'tableau_trusted_auth'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tableau_trusted_auth

## Usage

### Rails Controller

If you wanted to redirect a user to the Tableau View `/views/awesomeworkbook/reallygoodview` you could do something like the following:

```ruby
view = TableauTrustedAuth::View.new 'tableau-server-hostname-or-ip', 'tableau-user-to-authenticate-as'
redirect_to view.url('awesomeworkbook/reallygoodview')
```

### IFrame

In your controller:

```ruby
view = TableauTrustedAuth::View.new 'tableau-server-hostname-or-ip', 'tableau-user-to-authenticate-as'
@url = view.url('awesomeworkbook/reallygoodview')
```

In your view:

```html
<iframe src="#{@url}"></iframe>
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/tableau_trusted_auth/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
