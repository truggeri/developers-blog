#
# Plugin to generate tag markdown file for each tag in a post
#   Will not run on Github pages as plugins are disabled
# @see https://blog.lunarlogic.io/2019/managing-tags-in-jekyll-blog-easily/
#
module Jekyll
  Hooks.register :posts, :post_write do |post|
    puts "---\n  #{post["name"]}\n"
    all_existing_tags = Dir.entries("_tags")
      .map { |t| t.match(/(.*).md/) }
      .compact
      .map { |m| m[1] }

    tags = post["tags"].reject { |t| t.empty? }
    tags.each do |tag|
      generate_tag_file(tag) if !all_existing_tags.include?(tag)
    end
  end

  def generate_tag_file(tag)
    File.open("_tags/#{tag}.md", "wb") do |file|
      file << "---\nlayout: tags\ntag-name: #{tag}\n---\n"
    end
  end
end
