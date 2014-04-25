
require 'rubygems'
require 'pdf/reader'

exit if Object.const_defined?(:Ocra)

# Can possibly be used to create a "search directory, identify PDF, and convert instantly" function in the future.
# Dir.foreach(Dir.pwd) do |entry|
# puts entry
# end

filename = ARGV[0] 

# directs the output of the page to console
pdf_text = PDF::Reader.open(filename) do |reader|
  reader.pages.each do |page|
    puts page.text
  end
end

# creates a new file in the read/ overwrite mode. This prints the pdf text to the page
# f = File.new("#{ARGV[0]}.txt", "w+")
# f.puts pdf_text
# f.close


# Calls a simple wordcount method on the text file. 
# Results are appended to the end of the file. 
# Includes a file creation tracking method.
f = File.new("#{ARGV[0]}.txt", "w+")
	lines = File.readlines("#{ARGV[0]}.txt")
	line_count = lines.size
	text = lines.join
	# Count the characters
	character_count = text.length
	character_count_nospaces = text.gsub(/\s+/, '').length
	# Count the words, sentences, and paragraphs
	word_count = text.split.length
	sentence_count = text.split(/\.|\?|!/).length
	paragraph_count = text.split(/\n\n/).length

	f.puts "\n\n"
	f.puts "APPROXIMATE Page Stats of: " + ARGV[0]
	f.puts "#{line_count} lines"
	f.puts "#{character_count} characters"
	f.puts "#{character_count_nospaces} characters (excluding spaces)"
	f.puts "#{word_count} words"
	f.puts "#{sentence_count} sentences"
	f.puts "#{paragraph_count} paragraphs\n"
	f.puts "*Bad/unsupported formatting can mess up the article stats! This is just a rough guideline!*"
	f.puts pdf_text
f.close

f = File.new("#{ARGV[0]}.txt", "a")
f.puts "\nFile created at #{Time.now}"
f.close
	
#Creates a logfile when the program is called. ##### Non-essential method.######
f = File.new("logfile.txt", "a")
f.puts "#{ARGV[0]}: Log created at #{Time.now}"
f.puts "\n"
f.close

