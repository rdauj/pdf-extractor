file_dir = File.expand_path(File.dirname(__FILE__)) 

all_txt = Dir["#{file_dir}/*.txt"]
puts all_txt