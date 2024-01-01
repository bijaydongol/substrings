dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(string, dictionary)
  # initialize a hash with default value 0
  substring_with_count = Hash.new(0)
  dictionary.each do |substring|
    #loop through each st
    string.split.each do |word|
      substring_with_count[substring] += 1 if word.downcase.match?(substring.downcase)
    end
  end
  substring_with_count
end

print substring("Howdy partner, sit down! How's it going?", dictionary)