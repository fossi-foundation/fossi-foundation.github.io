# FOSSi Foundation Web Page

This page is served through GitHub pages, which is in turn powered by the
static site generator Jekyll.
Essentially, this means the page content can be written in Markdown, and is
then processed into static HTML pages by GitHub after each push, and then
published.

To edit the page, just edit any of the Markdown files.
The full documentation is available at the
[Jekyll documentation site](https://jekyllrb.com/docs/home/).

## Development Setup
To see the final page locally, you need to install Jekyll as described in the
[GitHub documentation](https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/).

~~~
# Install dependencies
# for OpenSUSE
sudo zypper install ruby2.6-devel zlib-devel ruby2.6-rubygem-bundler

# for Ubuntu > 14.04 (Ruby > 2.0 is required)
sudo apt-get install ruby-dev zlib1g-dev ruby-bundler
gem update --system
gem install bundler

# Install Jekyll with all dependencies used by GitHub pages
# (inside the directory where this README is)
bundle config set path 'vendor/bundle'
bundle install --path vendor/bundle

# Build and continuously update site
bundle exec jekyll serve
~~~

You can now view the site in your browser at http://localhost:4000.
It is constantly updated if you make changes to any of the source files
(if you reload the page in your browser, of course).
