def determine_points
  points = {}

  ('A'..'Z').each_with_index do |letter, value|
    points[letter] = value + 1
  end

  points
end

def retrieve_names
  f = File.open("./files/names.txt", "r").read.split(",")
  f.sort!
end

def name_scores
  points = determine_points
  name_scores = Hash.new(0)

  names = retrieve_names

  names.each_with_index do |name, alphabetical_position|
    letters = name.gsub!('"', "").split(//)
    letters.each do |letter|
      name_scores[name] += points[letter]
    end
    name_scores[name] *= alphabetical_position + 1
  end

  name_scores.values.inject(:+)
end


s = Time.now
100.times do
  name_scores
end
puts Time.now - s
