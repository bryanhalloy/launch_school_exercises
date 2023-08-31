def longest_sentence(input_text)
  sentences_arr = input_text.split(/\.|\?|!/)
  
  longest_sentence_word_count = 0
  longest_sentence_string = ''
  
  sentences_arr.each do |sentence|
    if sentence.split(' ').size > longest_sentence_word_count
      longest_sentence_word_count = sentence.split(' ').size
      longest_sentence_string = sentence
    end
  end

  puts "Longest Sentence is #{longest_sentence_word_count} words:\n\n"
  puts longest_sentence_string
end


text_file_path = './sentences.txt'
sentences = File.read(text_file_path)

longest_sentence(sentences)





