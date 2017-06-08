# OmniAuth Hubspot

Hubspot OAuth2 Strategy for OmniAuth.

Read the [Hubspot OAuth docs](https://developers.hubspot.com/docs/methods/oauth2/oauth2-overview) for more details:

## Installing

Add to your `Gemfile`:

```ruby
gem 'omniauth-hubspot', git: 'https://github.com/chamaeleonidae/omniauth-hubspot'
```

Then `bundle install`.

## Usage

`OmniAuth::Strategies::Hubspot` is simply a Rack middleware. Read the OmniAuth docs for detailed instructions: https://github.com/intridea/omniauth.

Here's a quick example, adding the middleware to a Rails app in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :hubspot, ENV['HUBSPOT_KEY'], ENV['HUBSPOT_SECRET'], scope: 'contacts reports files'
end
```

Scopes must coincide with what you specific in the app settings and are [chosen from a list](https://developers.hubspot.com/docs/methods/oauth2/initiate-oauth-integration)

To start the authentication process with Hubspot you simply need to access `/auth/hubspot` route.

## Auth Hash

Here's an example *Auth Hash* available in `request.env['omniauth.auth']`:

```ruby
{
  :provider => 'hubspot',
  :uid => nil,
  :info => {
    :name => nil
  },
  :credentials => {
    :token => 'CM_q6drIKxICAQEY4JHPASCA5ogBKOf9AjIZAEL...',
    :refresh_token => '39a92156-172a-4c15-8c17-22073afb3909',
    :expires_at => 1496986580,
    :expires => true
  },
  :extra => {
  }
}
```
