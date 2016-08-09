class WordFormatter

def initialize( input )
  @input = input
end

def to_uppercase
  @input.upcase
end

def to_camelcase
  @input.split(/ |\_/).map(&:capitalize).join
end

end