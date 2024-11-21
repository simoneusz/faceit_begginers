class Formatize
  def formatize(string, symbol)
    case symbol
    when :underscore
      string.split(' ').join('_').downcase
    when :css
      string.split(' ').join('-').downcase
    when :camel
      result = ''
      string.split(' ').each_with_index do |word, index|
        result += index.zero? ? word.downcase : word.capitalize
      end
      result
    end
  end
end
