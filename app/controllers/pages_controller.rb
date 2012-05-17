class PagesController < ApplicationController

  # GET /pages/1
  # GET /pages/1.json
  def show
    @page = Page.find(params[:id])
    
    #if request.path != page_path(@page)
    #  redirect_to @page, status: :moved_permanently
    #end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @page }
    end
  end

end
