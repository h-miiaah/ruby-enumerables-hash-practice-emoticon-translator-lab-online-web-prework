# require modules here
require 'yaml'

def load_library(path)
  # code goes here
  emoticons = YAML.load_file(path)
  emoticon_hash = Hash.new

  emoticon_hash["get_emoticon"] = Hash.new
  emoticon_hash["get_meaning"] = Hash.new

  emoticons.each do |english_symbol, emoticon_symbol|
    emoticon_hash["get_emoticon"][emoticon_symbol.first] = emoticon_symbol.last
    emoticon_hash["get_meaning"][emoticon_symbol.last] = english_symbol
  end
  emoticon_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
