class ApplicationRecord < ActiveRecord::Base
  validates_presence_of :Nome, :Email, :CPF, :Telefone, :Idade, message: "Preencha todos os campos!"
  validate :email, :cpf, :telefone, :sexo
  validates_numericality_of :Idade, message: "Idade Inválida!"
  validates_uniqueness_of :Email, message: "Email já cadastrado!"
  validates_uniqueness_of :CPF, message: "CPF já cadastrado!"
  self.abstract_class = true


private
	def email
		if EmailAddress.valid?(self.Email) == false
		  errors.add(:Email, "Email Inválido!")
		end
	end
	def cpf
		if CPF.valid?(self.CPF) == nil
		  errors.add(:CPF, "CPF Inválido!")
		end
	end
	def telefone
		if Phonelib.valid_for_country?(self.Telefone, 'BR')  == false
		  errors.add(:Telefone, "Número Inválido!")
		end
	end
	def sexo
		if self.Sexo == "Selecione"
		  errors.add(:Sexo, "Selecione o Sexo!")
		end
	end
end
