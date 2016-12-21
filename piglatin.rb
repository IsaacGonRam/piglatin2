def evaluador(word)
  vocales= ["a","e","i","o","u"]
  consonantes = ""
  final = ""
  if vocales.include? word[0]
      aux = word +"way"
  else
    for index in 0..word.length-1
      if vocales.include? word[index]
        final << word[index..word.length-1]
        break
      else
        consonantes << word[index]
      end
      
    end
  aux = final+consonantes+"ay"    
  end
aux
end



def piglatin(string)
  #arreglo = string.split
  aux_arreglo = []
  string.each do |valor|
    aux_arreglo << evaluador(valor)
	end
  aux_arreglo.join(" ")
end

p evaluador ("egg") 
p evaluador("happy")
# vacia = ARGV
# vacia = vacia.join(" ")

p piglatin(ARGV) 