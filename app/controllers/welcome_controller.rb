class WelcomeController < ApplicationController
skip_before_action :verify_authenticity_token
  def index
	
  end

  def translate
	@punjabiSentence = params[:punjabiAaala]
	@punjabiWords = @punjabiSentence.strip.split(" ")
	@noOfWords = @punjabiWords.length - 1
			
	@urduWords = []
       # @urduLetters = []

	for i in 0..@noOfWords
		@urduObj = Translation.where(punjabi: @punjabiWords[i]).first
		if @urduObj 		
		  @urduWords << @urduObj.urdu
		else 
		  @urduWords << "translation-not-found"
		end
   	end 
			#for j in 0..@punjabiLength
			##	@urduobj = Translation.where(punjabi: @noOfLetters[j]).first.inspect
			#	@urduLetters << @urduobj.urdu
			#end			
				
  end

end
