TO INSTALL
# first install budler
$ gem install bundler
# (INSTALLS GEMFILE AND ALL DEPENDENCIES)
$ bundle install --path .bundle


TO START WITH RSPEC
# create a spec folder
$ mkdir spec
# now you can create specs!

Examples:
# spec/string_calculator_spec.rb
describe StringCalculator do
end

TO RUN:
$ bundle exec rspec
