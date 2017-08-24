# Delete all words from previous seeds
Word.delete_all

# Instantiate words from a word file into Word objects to seed the database
File.foreach('test/fixtures/words.txt') do |line|
	Word.create(entry: line.chomp)
end	