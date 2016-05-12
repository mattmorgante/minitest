# Establish how frequently a word occurs in some text 

# Take the text, break it down word by word into an array (whenever there's a space)

def words_from_string(string)
  string.downcase.scan(/[\w']+/)
end

