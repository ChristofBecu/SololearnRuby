# WORK IN PROGRESS
# tasks: decompression algorithm
# extended ascii doesn't work well in playground
# enlarge dictionary

string = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ac arcu ac tellus faucibus ultricies. Duis vestibulum erat ac elit tempor, id facilisis leo consectetur. Nunc consectetur vestibulum aliquet. Sed vitae volutpat eros. Nulla lorem lectus, rutrum id dignissim in, rutrum id nisi. Vestibulum erat ante, egestas id velit et, facilisis facilisis nulla. Phasellus vel vestibulum turpis. Phasellus quis pulvinar nunc, quis scelerisque urna. Cras feugiat sem id est dignissim, elementum suscipit eros pharetra. Maecenas pharetra mi et pharetra fringilla. Donec egestas condimentum enim eget condimentum. Duis interdum, elit sit amet placerat ultrices, lectus mauris mattis purus, vitae finibus nisl lorem sed orci. Etiam et eros at arcu sagittis euismod ut eget purus.
"


Dictionary = {'▓' => "ct", 
              'Ø' => "rc", 
              '×' => "at", 
              'ƒ' => "et", 
              'º' => "al", 
              '¿' => "is", 
              '®' => "nt",
              '¬' => 'll',
              '½' => 'st',
              '¼' => 'ue',
              '¡' => 'us',
              'ß' => 'um',
              'µ' => 'em',
              'þ' => 'or',
              'Þ' => 'rt',
              '¯' => 'tur',
              '´' => 'do',
              '±' => 'ae',
              '‗' => 'on',
              '¾' => 'ti',
              '§' => 'it',
              "╗" => 'ip',
              "©" => 'am',
              "~" => 'au',
              "Ä" => 'ul',
              "£" => 'un'
              
              }
#(0..255).each {|x| putc x}

def only_ascii?(string)
  string.match(/[^\x00-\x7F]/) ? false : true
end

def compress(str)
  #str = string
  Dictionary.each { |key, value|
    str.size.times { |x| 
      if str[-x-1..-x] == value
        str[-x-1] = key
        str[-x] = ''
      end
     }
   }
  str
    
end

def decompress(str,size)
  Dictionary.each { |key, value|
    size.times { |x| 
      if str[-x] == key
        str[-x] = value
      end
    } 
  }
  str
end



puts string
bytesize_original = string.split('').size
puts "---------------------------------------------------------------------------------------"

compressed_string = compress(string)
bytesize_compressed = compressed_string.split('').size
puts compressed_string
puts "---------------------------------------------------------------------------------------"

decompressed_string = decompress(compressed_string, bytesize_original)
puts decompressed_string
bytesize_decompressed  = decompressed_string.split('').size
puts "---------------------------------------------------------------------------------------"


print 'bytesize of original string       : ', bytesize_original, "\n"
print 'bytesize of compressed string     : ', bytesize_compressed, "\n"
print 'bytesize of decompressed string   : ', bytesize_decompressed, "\n"
print string == decompressed_string ? "decompression check ok\n" : "decompression check failed\n"
print 'ratio : ', 100.0 / bytesize_original * bytesize_compressed, "%\n"


