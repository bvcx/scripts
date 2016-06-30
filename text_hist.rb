# This script takes in one argument, the name of a return-separated file containing one token per line.
# It reads the file line-by-line, and returns a listing of each unique line, sorted lexicographically,
# along with the number of times that line occurs in the file

filename = ARGV[0]

counts = Hash.new(0)
File.foreach ( filename ) do |line|
  line = line.strip # this is mainly to remove weird newline characters
  counts[line] += 1
end

counts.sort.each do |element, count|
  puts "#{element}: #{count}"
end

