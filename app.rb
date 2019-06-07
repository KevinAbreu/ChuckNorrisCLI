require 'chuck_norris'
class ChuckJokes
  def help

  end

  def get_joke_by_id(id)
    bug_joke = ChuckNorris::JokeFinder.find_joke(id)
    puts bug_joke.joke # => "If Chuck Norris writes code with bugs, the bugs fix themselves."
  end

  def replace_name(first_name,last_name)
    joke = ChuckNorris::JokeFinder.get_joke(first_name: first_name, last_name: last_name)
    puts joke.joke # => "Spencer Dixon doesn't read books. He stares them down until he gets the information he wants."
  end

  def random
    joke = ChuckNorris::JokeFinder.get_joke
    puts joke.id # => 497
    puts joke.joke # => "If Chuck Norris writes code with bugs, the bugs fix themselves."
  end
end
