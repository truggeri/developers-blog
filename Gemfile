source "https://rubygems.org"

gem "github-pages", group: :jekyll_plugins

group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.12"
end

gem "jekyll-theme-architect", "~> 0.1.1"

gem "kramdown", ">= 2.3.0" # CVE-2020-14001
gem "nokogiri", ">= 1.10.8" # CVE-2020-7595

install_if -> { RUBY_PLATFORM =~ %r!mingw|mswin|java! } do
  gem "tzinfo", "~> 1.2"
  gem "tzinfo-data"
end
gem "wdm", "~> 0.1.1", :install_if => Gem.win_platform?
