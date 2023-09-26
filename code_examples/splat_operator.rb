people = ['mom', 'dad', 'sister', 'brother']

def my_method(arr)
  yield (arr)
end

my_method(people) {|a, b| p a; p b}
# "mom"
# "dad"

my_method(people) {|a, *b| p a; p b}
# "mom"
# ["dad", "sister", "brother"]

my_method(people) {|*a, b| p a; p b}
# ["mom", "dad", "sister"]
# "brother"



$ bundle exec rake -T
rake bye      # Say goodbye
rake default  # Do everything
rake hello    # Say hello


$ bundle exec rake bye
Bye now!

$ bundle exec rake hello
Hello there. This is the `hello` task.

$ bundle exec rake default
Hello there. This is the `hello` task.
Bye now!

$ bundle exec rake                     # we don't need to specify 'default'
Hello there. This is the `hello` task.
Bye now!