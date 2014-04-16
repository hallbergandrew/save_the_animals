## Save a Pet App

# This app is a craigslist clone that focuses primarily on pets.



When using foundation:
Comment out this line in: app/assets/javascripts/application.js
---------------->// $(function(){ $(document).foundation(); });
----------------> <%= javascript_include_tag "application" %>
Move up to head of html doc in views/layouts/application.html.erb


config.assets.debug = false

change above from true to false
fixes jquery repeats... config/environments/development.rb

it refreshes the page for us in development mode.

To do

- Add profiles_upload controller so that we can mass upload profiles from craigslist or other adoption sites.

or

- create store with products that can be mass uploaded.
