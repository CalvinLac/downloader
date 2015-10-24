require 'mechanize'

class Downloader 
  def initialize
  end

  def download(uri, save_location, match = {})
    Dir.mkdir(save_location)
    agent = Mechanize.new
    agent.pluggable_parser.default = Mechanize::Download
    page = agent.get(uri)
    links = page.links_with(match)

    # each link refs to a page with another download link that actually downloads the file
    # must be changed depending on the website (this is kinda' brute force)
    links.each do |link|
      download_page = link.click
      download_match = {:text => /download/i} # match depends on page attributes
      file = download_page.link_with(download_match).click
      
      path = "#{save_location}/#{file.filename}"
      agent.get(file).save(path)
    end
  end

  # TBI
  def download_recursive(uri, save_location, recurse_level, match = {})
  end
end