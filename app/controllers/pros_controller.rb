class ProsController < ApplicationController
  before_action :set_pro, only: [:show, :edit, :update, :destroy]

  
  def index
    @pros = Pro.all
  end

  
  def show
  end

 
  def new
    @pro = Pro.new
  end

  def edit
  end

  
  def create
    @pro = Pro.new(pro_params)

    respond_to do |format|
      if @pro.save
        format.html { redirect_to @pro, notice: 'Pro was successfully created.' }
        format.json { render :show, status: :created, location: @pro }
      else
        format.html { render :new }
        format.json { render json: @pro.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @pro.update(pro_params)
        format.html { redirect_to @pro, notice: 'Pro was successfully updated.' }
        format.json { render :show, status: :ok, location: @pro }
      else
        format.html { render :edit }
        format.json { render json: @pro.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @pro.destroy
    respond_to do |format|
      format.html { redirect_to pros_url, notice: 'Pro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
   
    def set_pro
      @pro = Pro.find(params[:id])
    end

    
    def pro_params
      params.require(:pro).permit(:title, :desc, :photo)
    end
end
