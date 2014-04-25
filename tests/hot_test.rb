#hot words
exit if Object.const_defined?(:Ocra)

to_search = File.read(ARGV[0])

#String splitting class
class String 
	def sentences 
		self.split(/\.|\?|\!|\n/)
	end
	
	def words 
		scan(/\w[\w\'\-]*/)
	end
end

#defines the words on which to catch and return the sentence for 
read_hottext = File.readlines("hot_words.txt")
hot_words = read_hottext[0].split(/\s/)
hot_words.each{|x| puts x.to_s + " yankee doodle"}
# hot_words.push(File.readlines("hot_words.txt"))
# hot_words.each {|x| puts x}

result = []
#function for catching the words and returning the sentence
result.push(to_search.sentences.find_all do |s| 
	s.downcase.words.any?{|words| hot_words.include?(words)}
end)

# result.each {|x| puts x}

f = File.new("#{ARGV[0]}_hot_words.txt", "w+")
	result.each do |x|
		x.each{|j| f.puts j.gsub(/(\s\s)*/, '')}
	end
f.close

# File.open("#{ARGV[0]}_hot_words.txt") do |x|
# 	x.gsub(/\s\s/, '')
# 	end

#creating the text file that shows the "hot sentences"
#Also cleans up any junk whitespace with regexp
# f = File.new("#{ARGV[0]}_hot_words.txt", "a+")
# 	result.each do
# 		|x| f.puts x.gsub(/\s\s/, '')
# 	end
# f.close