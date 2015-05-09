Encoding.default_external = 'utf-8'

def read_text
  text = $stdin.read.encode('utf-8').encode('ascii', undef: :replace, invalid: :replace, replace: '')
  text.gsub(/[\n-]/, ' ').gsub(/[^A-Za-záéíóúüñÁÉÍÓÚÜÑêàëï\?:!,\/\. ]/, '').gsub(/  +/, ' ')
end

module Enumerable
  def all_but_last
    self[0..-2]
  end

  def all_but_first
    self.drop(1)
  end
end
