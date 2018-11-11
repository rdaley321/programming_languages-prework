def reformat_languages(languages)
  new_hash = Hash.new
  languages.each do |type,languages_hash|
    new_hash[type] = languages_hash
    languages_hash.each do |language,type_hash|
      new_hash[language] = type_hash
      type_hash.each do |key,value|
        puts key
      end
    end
  end
  new_hash
end

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}

reformat_languages(languages)