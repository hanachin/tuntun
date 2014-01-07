class WebsiteHistoriesController < ApplicationController
  before_action :set_website_history, only: [:show, :edit, :update, :destroy]

  # GET /website_histories
  # GET /website_histories.json
  def index
    @website_histories = WebsiteHistory.all
  end

  # GET /website_histories/1
  # GET /website_histories/1.json
  def show
  end

  # GET /website_histories/new
  def new
    @website_history = WebsiteHistory.new
  end

  # GET /website_histories/1/edit
  def edit
  end

  # POST /website_histories
  # POST /website_histories.json
  def create
    @website_history = WebsiteHistory.new(website_history_params)

    respond_to do |format|
      if @website_history.save
        format.html { redirect_to @website_history, notice: 'Website history was successfully created.' }
        format.json { render action: 'show', status: :created, location: @website_history }
      else
        format.html { render action: 'new' }
        format.json { render json: @website_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /website_histories/1
  # PATCH/PUT /website_histories/1.json
  def update
    respond_to do |format|
      if @website_history.update(website_history_params)
        format.html { redirect_to @website_history, notice: 'Website history was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @website_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /website_histories/1
  # DELETE /website_histories/1.json
  def destroy
    @website_history.destroy
    respond_to do |format|
      format.html { redirect_to website_histories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_website_history
      @website_history = WebsiteHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def website_history_params
      params.require(:website_history).permit(:website_id, :success, :body)
    end
end
