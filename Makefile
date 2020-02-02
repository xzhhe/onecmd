install:
	rm -rf pkg/
	bundle install
	bundle exec rake install
	bundle exec onecmd
