#Implement all parts of this assignment within (this) module2_assignment2.rb file

#Implement a class called LineAnalyzer.
class LineAnalyzer
  attr_accessor :highest_wf_count,:highest_wf_words,:content,:line_number

  def initialize(content,line_number)
      @content =content
      @line_number=line_number
      @highest_wf_words=Array.new(0)
      @highest_wf_count=0

      calculate_word_frequency
  end

  def calculate_word_frequency()

    words = Hash.new(0)
    
    content.split(' ').each do |word|
      words[word.downcase]+=1
    end 
    self.highest_wf_count=words.values.sort.reverse.first

    words.each do |key,value|
      self.highest_wf_words.push(key) if highest_wf_count==value
    end 

    #puts highest_wf_words
    #puts highest_wf_count
  end
end


#  Implement a class called Solution. 
class Solution
  attr_accessor :analyzers,:highest_count_across_lines,:highest_count_words_across_lines

  def initialize()
    @analyzers=Array.new(0)
    highest_count_across_lines=0
    highest_count_words_across_lines=Array.new(0)

    
  end 

  def analyze_file()
    contador=1
    File.foreach('test.txt') do |line|
      @analyzers.push(LineAnalyzer.new(line,contador))
      contador+=1
    end
  end

  def calculate_line_with_highest_frequency()
    
    @highest_count_across_lines = analyzers.sort_by { |analyzers| analyzers.highest_wf_count }.reverse.first.highest_wf_count
      @highest_count_words_across_lines = analyzers.select { |analyzers| @highest_count_across_lines == analyzers.highest_wf_count  }

  end
  
  def print_highest_word_frequency_across_lines()
      puts "The following words have the highest word frequency per line:"
        @highest_count_words_across_lines.each do |linea|
          puts "#{linea.highest_wf_words.inspect} (appears in line #{linea.line_number})"
        end
  end 
end 

