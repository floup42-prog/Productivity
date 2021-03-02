file = File.open("Gemfile", "a")
file.puts("")
file.puts("")
file.puts("ruby '2.7.1'")
file.puts("gem 'devise'")
file.puts("gem 'rufo'")
file.puts("gem 'solargraph'")
file.puts("gem 'faker'")
file.puts("gem 'table_print'")
file.puts("")
file.puts("#Don't add this for heroku!")
file.puts("group :development do")
file.puts("gem 'better_errors'")
file.puts("gem 'binding_of_caller'")
file.puts("end")
file.close

system("touch .env")

file = File.open(".gitignore", "a")
file.puts("")
file.puts("")
file.puts(".env")
file.puts("Gemfile.lock")
file.close


system("rm -r _init_rails.rb")
