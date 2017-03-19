require 'nokogiri'
require 'open-uri'

# Fetch and parse HTML document
class Document
  def initialize(url)
    @doc = Nokogiri::HTML(open(url))
  end

  def parse
    @doc
  end
end

# Search for nodes by css
class Link < Document
  def lnk
    @doc.css('nav ul.menu li a', 'article h2').each { |link| puts link.content }
  end
end

# Search for nodes by xpath
class Headers < Document
  def hdr
    @doc.xpath('//nav//ul//li/a', '//article//h2').each { |link| puts link.content }
  end
end

zzz = Link.new('http://www.nokogiri.org/tutorials/installing_nokogiri.html')
zzz.lnk

xxx = Headers.new('http://www.nokogiri.org/tutorials/installing_nokogiri.html')
xxx.hdr
