# Delete all words from previous seeds
Word.delete_all

# Instantiate words from a word file into Word objects to seed the database
File.foreach('public/dictionary.txt') do |line|
	Word.create(entry: line.chomp)
end	