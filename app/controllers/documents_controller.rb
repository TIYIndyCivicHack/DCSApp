class DocumentsController < ApplicationController
  before_action :require_user
  before_action :find_document, only: [:update, :destroy]

  def index
    @documents = current_user.documents
    render json: @documents
  end

  def create
    @document = current_user.documents.new(doc_params)
      if @document.save
        render json: @document.reload
      else
        render json: @document.errors.full_messages
      end
  end

  def update
    if @document.update!(doc_params)
      render json: @document
    else
      render json: @document.errors.full_messages, status: 400
    end
  end

  def destroy
    @document.destroy
    render json: ["Document deleted successfully."]
  end

  private

   def doc_params
     params.permit(:doc_type, :photo_id)
   end

   def find_document
     @document = Document.find(params[:id])
   end

end
