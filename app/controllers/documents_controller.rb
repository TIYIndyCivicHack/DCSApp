class DocumentsController < ApplicationController

  def index
    @documents = @user.documents.all
    render json: @documents
  end

  def create
    @document = @user.documents.new(doc_params)
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
     params.permit(:type, :photo)
   end

end
