def formatize(string, symbol)
    case symbol
    when :underscore
        return string.split(" ").join("_").downcase
    when :css
        return string.split(" ").join("-").downcase
    when :camel 
        result = ""
        string.split(" ").each_with_index do |word, index|
            index == 0 ? result += word.downcase : result += word.capitalize           
        end
        return result
    end
end

p formatize("Hello world", :camel)