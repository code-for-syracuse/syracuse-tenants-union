# Syracuse Tenants Union

This is a squarespace theme for the syracuse tenants union.

## Getting started
_NOTE: You may need to be invited to the squarespace site for the below to work. If something below
doesn't work and you get an error related to not having permissions to access something, etc, that
might be the problem._

1. Make sure you are using node >= 10.7. Run `node -v` and check.
2. Run `npm install`.
3. Run `npm start`, wait for the server to start.
4. Visit `localhost:9000` in a web browser.

## Deployment
This project is set up with circleci so that when any commit is pushed to `master`, it is
auto-deployed to the production squarespace site. This should hopefully make it easier for multiple
people to work on this project at the same time.

The circleci job takes two environment variables, `$SQUARESPACE_EMAIL` and `$SQUARESPACE_PASSWORD`
which defines a set of login credentials that should be used when pushing the squarespace site.
These are configured within circleci as they are secrets.
