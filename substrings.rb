def substrings(phrase, dictionary)
	frequencies = Hash.new()

	dictionary.each do |word| 
		temp = phrase.downcase.scan(word)
		frequencies[word] = temp.size if temp.size > 0
	end

	frequencies.to_s
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?",dictionary)

# Result:
# {"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}