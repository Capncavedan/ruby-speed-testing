require 'securerandom'
require 'benchmark'

def populate_hash_and_array_and_samples(size)
  hsh = {}
  arr = []
  samples = []
  size.times do
    rand = SecureRandom.hex
    hsh[rand] = true
    arr << rand
  end
  100.times do
    samples << arr.sample
  end
  [hsh, arr, samples]
end

[1, 2, 3, 4, 5, 10, 100, 1_000, 10_000, 100_000, 1_000_000].each do |size|
  candidate_hash, candidate_array, samples = populate_hash_and_array_and_samples(size)

  hash_time = Benchmark.realtime do
    samples.each do |sample|
      1_000.times do
        candidate_hash[sample] == true
      end
    end
  end
  puts "Checking hash inclusion against #{size} keys: #{hash_time} sec"

  array_time = Benchmark.realtime do
    samples.each do |sample|
      1_000.times do
        candidate_array.include?(sample)
      end
    end
  end
  puts "Checking array inclusion against #{size} elements: #{array_time} sec"
  puts "    #{sprintf('%.2f', array_time/hash_time)}x"
  puts

end
