require 'faraday'
# require 'pry'

# Class for parse url and save image to file
class Image
  def self.download(url)
    resp = Faraday.get(url)
    # binding.pry
    # unless resp.success? # 302 => false
    raise ArgumentError if resp.status >= 400
    type, ext = resp.headers['content-type'].scan(/\w+/)
    raise TypeError unless type == 'image'
    File.open('image.' + ext, 'w') { |img| img.write(resp.body) }
  end
end

Image.download('https://www.hello.com/img_/hello_logo_hero.png')
Image.download('http://apikabu.ru/img_n/2012-04_4/zky.jpg')
Image.download('http://google.com/zzz')
Image.download('http://google.com')
