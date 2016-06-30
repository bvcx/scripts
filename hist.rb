# This script takes two arguments, a filename and a bucket-width.
# It assumes the filename points to a file containing a return-separated list of positive numbers.
# It reads the file line-by-line, sorting the positive numbers into buckets, and storing the counts.

filename = ARGV[0]
bucket_width = ARGV[1].to_f

counts = Hash.new(0)
File.foreach ( filename ) do |line|
  line = (line.strip.to_f / bucket_width).floor*bucket_width
  counts[line] += 1
end

counts.sort.each do |element, count|
  puts "(#{element}-#{element+bucket_width}]: #{count}"
end

