# SOLUTION

Project Purple Cow - Fearless Trial Project

# Get started locally
Note: If you do not have a local ruby manager like rvm it's probably easiest to run the app via docker.

`bundle install`

`bundle exec rake db:migrate`

`bundle exec rake db:seed`

`bundle exec rails s`

Open a browser to http://localhost:3000


# Running with Docker
`docker build -t project-purple-cow .`

`docker run -p 3000:3000 -d project-purple-cow`

Open a browser to http://localhost:3000


# Future: (updates, changes, outstanding code)
 * Bootstrap css and js is typically packaged via sprockets or webpack.  I opted to use the CDN due to time contraints.
 * Items index should be paginated 
 * Clean up CSRF token hack
 * Update POST /items to accept an array of item objects 
 * Add a json response for deleting id's that do not exist
 * Enhance docker to support multiple environments (currently setup in development env)
 * Build docker compose with separate database and support single command up/down requirement
  
