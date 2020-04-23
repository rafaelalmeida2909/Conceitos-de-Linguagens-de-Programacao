module ClientesHelper
	def formatted_tel(telefone)
		if telefone.length == 11
			telefone.insert(0, "(")
			telefone.insert(3, ")")
			telefone.insert(9, "-")
		else
			telefone.insert(0, "(")
			telefone.insert(3, ")")
			telefone.insert(8, "-")
		end
		return telefone
	end
	def formatted_name(nome)
		return nome.titleize
	end
	def formatted_cpf(cpf)
		@cpf = CPF.new(cpf)
    	return @cpf.formatted
    end
end
