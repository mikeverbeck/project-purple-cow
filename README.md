# README
Project Purple Cow - Fearless Trial Project

See also [solution.md](solution.md)

# Get Started
`bundle install`

`bundle exec rake db:migrate`

`bundle exec rake db:seed`

`bundle exec rails s`

Open a browser to http://localhost:3000


# Running with Docker
`docker build -t project-purple-cow .`

`docker run -p 3000:3000 -d project-purple-cow`

Open a browser to http://localhost:3000
