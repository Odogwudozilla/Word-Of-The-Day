class WordbanksController < ApplicationController
  before_action :set_wordbank, only: [:show, :edit, :update, :destroy]

  # GET /wordbanks
  # GET /wordbanks.json
  def index
    @wordbanks = Wordbank.all
  end

  # GET /wordbanks/1
  # GET /wordbanks/1.json
  def show
  end

  # GET /wordbanks/new
  def new
    @wordbank = Wordbank.new
  end

  # GET /wordbanks/1/edit
  def edit
  end

  # POST /wordbanks
  # POST /wordbanks.json
  def create
    @wordbank = Wordbank.new(wordbank_params)

    respond_to do |format|
      if @wordbank.save
        format.html { redirect_to @wordbank, notice: 'Wordbank was successfully created.' }
        format.json { render :show, status: :created, location: @wordbank }
      else
        format.html { render :new }
        format.json { render json: @wordbank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wordbanks/1
  # PATCH/PUT /wordbanks/1.json
  def update
    respond_to do |format|
      if @wordbank.update(wordbank_params)
        format.html { redirect_to @wordbank, notice: 'Wordbank was successfully updated.' }
        format.json { render :show, status: :ok, location: @wordbank }
      else
        format.html { render :edit }
        format.json { render json: @wordbank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wordbanks/1
  # DELETE /wordbanks/1.json
  def destroy
    @wordbank.destroy
    respond_to do |format|
      format.html { redirect_to wordbanks_url, notice: 'Wordbank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wordbank
      @wordbank = Wordbank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wordbank_params
      params.require(:wordbank).permit(:topic, :description)
    end
end
