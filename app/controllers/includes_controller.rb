class IncludesController < ApplicationController
  before_action :set_include, only: %i[ show edit update destroy ]

  # GET /includes or /includes.json
  def index
    @includes = Include.all
  end

  # GET /includes/1 or /includes/1.json
  def show
  end

  # GET /includes/new
  def new
    @include = Include.new
  end

  # GET /includes/1/edit
  def edit
  end

  # POST /includes or /includes.json
  def create
    @include = Include.new(include_params)

    respond_to do |format|
      if @include.save
        format.html { redirect_to @include, notice: "Include was successfully created." }
        format.json { render :show, status: :created, location: @include }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @include.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /includes/1 or /includes/1.json
  def update
    respond_to do |format|
      if @include.update(include_params)
        format.html { redirect_to @include, notice: "Include was successfully updated." }
        format.json { render :show, status: :ok, location: @include }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @include.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /includes/1 or /includes/1.json
  def destroy
    @include.destroy!

    respond_to do |format|
      format.html { redirect_to includes_path, status: :see_other, notice: "Include was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_include
      @include = Include.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def include_params
      params.require(:include).permit(:card_id, :pack_id)
    end
end
