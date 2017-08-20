class Account < ApplicationRecord
  belongs_to :user

  validate :gendercheck, :agecheck

def gendercheck 

	if(gender.nil?) 
		errors.add(:gender, "Gender cannot be Empty. Please specify value")
	elsif ["male", "female", "n/a"].exclude?(gender.downcase)

		errors.add(:gender, "Specifed value for gender must be male, female or N/A, you used #{gender.downcase}")
	end

	end

	def agecheck 
		if(age.nil?) 
		errors.add(:age, "Age cannot be Empty. Please specify value between 20 and 100")
	elsif (age < 20 || age > 100) 
			errors.add(:age, "Please enter an age between 20 and 100")
		end
	end	
end
