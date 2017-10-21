class KadaisController < ApplicationController
  before_action :set_kadai, only: [:show, :edit, :update, :destroy]

  # GET /kadais
  # GET /kadais.json
  def index
    @kadais = Kadai.all
    @tasks = Task.where.not(status:["04_Invaild", "99_Close"])
  end

  # GET /kadais/1
  # GET /kadais/1.json
  def show
    @kadai = Kadai.find(params[:id])
    @task = Task.new
  end

  # GET /kadais/new
  def new
    @kadai = Kadai.new
  end

  # GET /kadais/1/edit
  def edit
  end

  # POST /kadais
  # POST /kadais.json
  def create
    @kadai = Kadai.new(kadai_params)

    respond_to do |format|
      if @kadai.save
        format.html { redirect_to @kadai, notice: 'Kadai was successfully created.' }
        format.json { render :show, status: :created, location: @kadai }
      else
        format.html { render :new }
        format.json { render json: @kadai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kadais/1
  # PATCH/PUT /kadais/1.json
  def update
    respond_to do |format|
      if @kadai.update(kadai_params)
        format.html { redirect_to @kadai, notice: 'Kadai was successfully updated.' }
        format.json { render :show, status: :ok, location: @kadai }
      else
        format.html { render :edit }
        format.json { render json: @kadai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kadais/1
  # DELETE /kadais/1.json
  def destroy
    @kadai.destroy
    respond_to do |format|
      format.html { redirect_to kadais_url, notice: 'Kadai was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kadai
      @kadai = Kadai.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kadai_params
      params.require(:kadai).permit(:status, :vote_date, :vote_person, :category, :subject, :level, :do_person, :goal, :due_date, :plan_hour, :actual_hour, :end_date)
    end
  
end
