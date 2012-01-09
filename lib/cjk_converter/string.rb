# encoding: utf-8

class String

  def utf8_split
    self.scan(/./mu)
  end
  def utf8_length
    self.scan(/./mu).size
  end
  def utf8_reverse
    self.scan(/./mu).reverse.join
  end
  def uri_encode
    URI.escape(self, Regexp.new("[^#{URI::PATTERN::UNRESERVED}]"))
  end
  def to_utf8
    ic = Iconv.new('UTF-8//IGNORE', 'UTF-8')
    valid_string = ic.iconv(self + ' ')[0..-2]
  end
  # conv = Iconv.new("BIG5//TRANSLIT//IGNORE", "UTF8")
  # will big5 conversions fail without the options?
  def zh_to_utf8(encoding = nil, encodings = nil)
    encodings = ['utf-8', 'GB18030', 'GBK', 'GB2312', 'BIG5'] if encodings.nil?
    encodings = encoding + encodings unless encoding.nil?
    raise 'Unable to Convert' if encodings.size == 0

    begin
      text = Iconv.conv('utf-8', encodings[0], self)
    rescue
      text = self.zh_to_utf8(nil, encodings[1..-1])
    end
    text
  end

  def latin?
    self.utf8_length == self.bytes.count
  end
  def utf8_split
    self.scan(/./mu)
  end
  def utf8_length
    self.scan(/./mu).size
  end
  def utf8_reverse
    self.scan(/./mu).reverse.join
  end
  def fullwidth?
    !self.halfwidth?
  end
  def halfwidth?
    self[/[０-９Ａ-Ｚａ-ｚ]/].nil?
  end
  def to_halfwidth
    matches = self.scan(/([０-９Ａ-Ｚａ-ｚ])/u).uniq.flatten
    str = self
    matches.each do |match|
      replacement = CJKConverter::FW_HW[match]
      str = str.gsub(match, replacement) unless str.nil?
    end
    str
  end
end
