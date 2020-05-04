require 'yaml'# require modules here

#def load_library
def load_library(path)
  emoticons = YAML.load_file(path)
  emoticon_hash = Hash.new

  emoticon_hash["get_emoticon"] = Hash.new
  emoticon_hash["get_meaning"] = Hash.new

  emoticons.each do |english_word, emoticon_set|
    emoticon_hash["get_emoticon"][emoticon_set.first] = emoticon_set.last
    emoticon_hash["get_meaning"][emoticon_set.last] = english_word
  end
  emoticon_hash
end


  def get_japanese_emoticon(file_path = './lib/emoticons.yml', english_emoticon)
   library = load_library(file_path)
   if library["get_emoticon"].include?(english_emoticon)
     library["get_emoticon"][english_emoticon]
   else
     "Sorry, that emoticon was not found"
  end
end


  def get_english_meaning(file_path = './lib/emoticons.yml', japanese_emoticon)
   library = load_library(file_path)
   if library["get_meaning"].include?(japanese_emoticon)
     library["get_meaning"][japanese_emoticon]
   else
     "Sorry, that emoticon was not found"
   end
end
