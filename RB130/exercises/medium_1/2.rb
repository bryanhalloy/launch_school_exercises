
class TextAnalyzer
  def process
    text_file = File.open('sample_text.txt', 'r')
    yield(text_file.read)
    text_file.close
  end
end

analyzer = TextAnalyzer.new
analyzer.process {|txt| p txt}

p analyzer.process {|txt| txt.scan(/\n\n+/).size + 1}
p analyzer.process {|txt| txt.scan(/\n/).size + 1}
p analyzer.process {|txt| txt.scan(/\w+/).size} 