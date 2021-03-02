system("mkdir lib")
system("touch Gemfile")

file = File.open("Gemfile", "a")
file.puts("source 'https://rubygems.org'")
file.puts("")
file.puts("ruby '2.7.1'")
file.puts("gem 'pry'")
file.puts("gem 'rufo'")
file.puts("gem 'solargraph'")
file.close

system("touch README.md")
system("touch .env")
system("touch .gitignore")

file = File.open(".gitignore", "a")
file.puts(".env")
file.puts("Gemfile.lock")
file.close

system("touch app.rb")

file = File.open("app.rb", "a")
file.puts('require "bundler"')
file.puts("Bundler.require")
file.puts("")
file.puts('$:.unshift File.expand_path("./../lib", __FILE__)')
file.puts("require 'router.rb'")
file.close




