# 
# Simple script that finds all unique tags from the /_posts/ directory markdown files and generates
#   tag markdown files if not already present. Useful with github-pages gem since plugins will not
#   run on GH pages.
# Example:
#   bundle exec ruby ./scripts/generate_tags.rb
# 

POSTS_PATH = "./_posts/".freeze
TAGS_PATH  = "./_tags/".freeze

def find_all_tags
  tags = []
  Dir.foreach(POSTS_PATH) do |filename|
    next if filename == "." || filename == ".."
  
    tags.concat(tags_in_file("#{POSTS_PATH}#{filename}"))
  end
  tags.reject { |t| t == "" }.map(&:strip).uniq!
end

def tags_in_file(file)
  File.open("#{file}", "r") do |f|
    f.each_line { |line|
      tags = line.match(/tags: \[(.*)\]/)
      return tags[1].split(",") if !tags.nil?
    }
  end
  []
end

def generate_tag_files(tags)
  count = 0
  tags.each do |tag|
    unless File.file?("#{TAGS_PATH}#{tag}.md")
      write_tag_file(tag)
      count += 1
    end
  end
  count
end

def write_tag_file(tag)
  File.open("#{TAGS_PATH}#{tag}.md", "wb") do |file|
    file << "---\nlayout: tags\ntag-name: #{tag}\n---\n"
  end
end

puts "Updated #{generate_tag_files(find_all_tags)} files"
