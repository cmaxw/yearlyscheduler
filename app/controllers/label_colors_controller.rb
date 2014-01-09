class LabelColorsController < ApplicationController
  before_action :set_label_color, only: [:show, :edit, :update, :destroy]

  # GET /label_colors
  # GET /label_colors.json
  def index
    @label_colors = LabelColor.all
  end

  # GET /label_colors/1
  # GET /label_colors/1.json
  def show
  end

  # GET /label_colors/new
  def new
    @label_color = LabelColor.new
  end

  # GET /label_colors/1/edit
  def edit
  end

  # POST /label_colors
  # POST /label_colors.json
  def create
    @label_color = LabelColor.new(label_color_params)

    respond_to do |format|
      if @label_color.save
        format.html { redirect_to @label_color, notice: 'Label color was successfully created.' }
        format.json { render action: 'show', status: :created, location: @label_color }
      else
        format.html { render action: 'new' }
        format.json { render json: @label_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /label_colors/1
  # PATCH/PUT /label_colors/1.json
  def update
    respond_to do |format|
      if @label_color.update(label_color_params)
        format.html { redirect_to @label_color, notice: 'Label color was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @label_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /label_colors/1
  # DELETE /label_colors/1.json
  def destroy
    @label_color.destroy
    respond_to do |format|
      format.html { redirect_to label_colors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_label_color
      @label_color = LabelColor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def label_color_params
      params.require(:label_color).permit(:name, :color)
    end
end
