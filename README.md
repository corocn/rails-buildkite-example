# Rails Buildkite Example

[![Add to Buildkite](https://buildkite.com/button.svg)](https://buildkite.com/new)

This is a parallel testing example with Rails and RSpec on [Buildkite](https://buildkite.com/).

Buildkite provides some simple examples.

 * https://github.com/buildkite/example-pipelines
 * https://github.com/buildkite/rails-docker-parallel-example

Those don't have e2e testings. This example has e2e testing using capybara on chromedriver and some lintings.
You can check screenshot on Buildkite's build log with capybara-inline-screenshot.

Enjoy Buildkite!

# Examples

 * Rspec
   * 20 Parallel execution (e2e testing: 1, linting: 2, general rspec tests: 17)
   * [knapsack](https://github.com/ArturT/knapsack)
   * [capybara-inline-screenshot](https://github.com/buildkite/capybara-inline-screenshot)
 * Rubocop
 * ESlint
 
# Usage

 * Highly recommended to use [elastic-ci-stack-for-aws](https://github.com/buildkite/elastic-ci-stack-for-aws).
 * If you check capybara-inline-screenshot ...
   * Fork this repos
   * Uncomment a line in spec/features/first_feature_spec.rb
   * Run test on Buildkite
  
# Screenshot

![buildkite-jobs](screenshots/buildkite-jobs.png)

![capybara-inline-screenshot](screenshots/capybara-inline-screenshot.png)

# Environments

 * Docker
 * Ruby 2.5.1
 * Rails 5.2.1 + Webpacker + Vue
 * Node 8.x

# License

MIT
