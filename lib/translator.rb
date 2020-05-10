require 'yaml'
require 'pry'


  def load_library(file_path)
    file = YAML.load_file(file_path)
    newhash = {}
    file.each do |key, value|
      puts key
      newhash[key] = {
        :english => value[0],
        :japanese => value[1] 
      }     
    end
   newhash
    
  end


def get_japanese_emoticon(file_path, emoticon)

  # emoticon_lib = load_library(file_path)
  # japanese_emoticon = emoticon_lib[emoticon][:japanese]
  # #japanese_emoticon ? japanese_emoticon : 'Sorry, that emoticon was not found'
#end
   
  #  emoticon = load_library(file_path)
  #  japanese_emoticon = emoticon_lib[:japanese]
  #  japanese_emoticon.include ? 
  #  japanese_emoticon : 'Sorry, that emoticon was not found'
  #  end
 
  def get_japanese_emoticon(library, emoticon)
    emotions = load_library(library)
    emotions.each do |key, value|
      if emotions[key][:english] == emoticon
        return emotions[key][:japanese]
    end
    end
    return "Sorry, that emoticon was not found"
  end
  end




def get_english_meaning(library, emoticon)
  emotions = load_library(library)
  emotions.each do |key, value|
    if emotions[key][:japanese] == emoticon
      return key
  end
  end
  return "Sorry, that emoticon was not found"
end