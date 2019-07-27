class WordbanksController < ApplicationController
  before_action :set_wordbank, only: [:show, :edit, :update, :destroy]

  # GET /wordbanks
  # GET /wordbanks.json
  def index
    @wordbanks = Wordbank.all # calls all data in the database
  end

  def displayPage
    @wordbanks = Wordbank.all.sample(1) #randommly samples one instance of the word of the day from the database to be displayed in the homepage
  end
  


  # GET /wordbanks/1
  # GET /wordbanks/1.json
  def show # shows the selected word of the day (redundant)
  end

  # GET /wordbanks/new
  def new #new instance of the class 
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
        format.html { redirect_to @wordbank, notice: 'Word of the Day was successfully created.' }
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
        format.html { redirect_to @wordbank, notice: 'Word of the Day  was successfully updated.' }
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
      format.html { redirect_to wordbanks_url, notice: 'Word of the Day  was successfully deleted.' }
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
