class DocumentsController < ApplicationController

  def index
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  #TODO Add params to documents
   def doc_params
     params.permit()
   end

end
