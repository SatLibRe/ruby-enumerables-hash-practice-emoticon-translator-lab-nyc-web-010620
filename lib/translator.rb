require 'yaml'
require 'pry'

# emoticons = 
# {
# "angel"=>["O:)", "☜(⌒▽⌒)☞"],
# "angry"=>[">:(", "ヽ(ｏ`皿′ｏ)ﾉ"],
# "bored"=>[":O", "(ΘεΘ;)"],
# "confused"=>["%)", "(゜.゜)"],
# "embarrased"=>[":$", "(#^.^#)"],
# "fish"=>["><>", ">゜))))彡"],
# "glasses"=>["8D", "(^0_0^)"],
# "grinning"=>["=D", "(￣ー￣)"],
# "happy"=>[":)", "(＾ｖ＾)"],
# "kiss"=>[":*", "(*^3^)/~☆"],
# "sad"=>[":'(", "(Ｔ▽Ｔ)"],
# "surprised"=>[":o", "o_O"],
# "wink"=>[";)", "(^_-)"]
# }

def load_library(path)
  emoticons = YAML.load_file(path)
    new_emoticons_hash = {}
      new_emoticons_hash["get_meaning"] = {}
      new_emoticons_hash["get_emoticon"] = {}
    emoticons.each do |english,emoticon_array|
      new_emoticons_hash["get_meaning"][emoticon_array[1]] = english
      new_emoticons_hash["get_emoticon"][emoticon_array[0]] = emoticon_array[1]
    end
    new_emoticons_hash
end

def get_japanese_emoticon(path,emoticon)
  new_emoticons_hash = load_library(path)
    if new_emoticons_hash["get_emoticon"][emoticon] == nil
      return "Sorry, that emoticon was not found"
    end 
    new_emoticons_hash["get_emoticon"][emoticon] 
end 

def get_japanese_emoticon(path,emoticon)
  new_emoticons_hash = load_library(path)
    if new_emoticons_hash["get_emoticon"][emoticon] == nil
      return "Sorry, that emoticon was not found"
    end 
    new_emoticons_hash["get_emoticon"][emoticon] 
end

def get_english_meaning(path,emoticon)
  new_emoticons_hash = load_library(path)
    if new_emoticons_hash["get_meaning"][emoticon] == nil
      return "Sorry, that emoticon was not found"
    end 
    new_emoticons_hash["get_meaning"][emoticon] 
end