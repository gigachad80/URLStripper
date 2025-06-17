require 'optparse'

def strip_urls(urls, remove_http: false, remove_https: false)
  stripped_urls = []
  urls.each do |url|
    new_url = url.dup # Create a mutable copy

    if remove_http
      new_url.gsub!(/^http:\/\//, '')
    end

    if remove_https
      new_url.gsub!(/^https:\/\//, '')
    end
    stripped_urls << new_url
  end
  stripped_urls
end

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: ruby url_stripper.rb [options] <url_list_file>"

  opts.on("-p", "--http", "Remove http:// from URLs") do
    options[:remove_http] = true
  end

  opts.on("-s", "--https", "Remove https:// from URLs") do
    options[:remove_https] = true
  end

  opts.on("-b", "--both", "Remove both http:// and https:// from URLs") do
    options[:remove_http] = true
    options[:remove_https] = true
  end

  opts.on("-h", "--help", "Prints this help") do
    puts opts
    exit
  end
end.parse!

if ARGV.empty?
  puts "Error: Please provide a file containing a list of URLs."
  OptionParser.new.parse(["-h"]) 
  exit 1
end

url_file_path = ARGV[0]

unless File.exist?(url_file_path)
  puts "Error: File '#{url_file_path}' not found."
  exit 1
end

urls = File.readlines(url_file_path).map(&:strip).reject(&:empty?)

if urls.empty?
  puts "The URL list file is empty. Nothing to process."
  exit 0
end

# Default to stripping nothing if no flags are provided
unless options[:remove_http] || options[:remove_https]
  puts "Warning: No stripping flag provided. URLs will be printed as is."
  puts urls.join("\n")
  exit 0
end

result_urls = strip_urls(urls,
                         remove_http: options[:remove_http],
                         remove_https: options[:remove_https])

puts result_urls.join("\n")
