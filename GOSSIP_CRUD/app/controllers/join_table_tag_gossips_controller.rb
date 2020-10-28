class JoinTableTagGossipsController < ApplicationController
  before_action :set_join_table_tag_gossip, only: [:show, :edit, :update, :destroy]

  # GET /join_table_tag_gossips
  # GET /join_table_tag_gossips.json
  def index
    @join_table_tag_gossips = JoinTableTagGossip.all
  end

  # GET /join_table_tag_gossips/1
  # GET /join_table_tag_gossips/1.json
  def show
  end

  # GET /join_table_tag_gossips/new
  def new
    @join_table_tag_gossip = JoinTableTagGossip.new
  end

  # GET /join_table_tag_gossips/1/edit
  def edit
  end

  # POST /join_table_tag_gossips
  # POST /join_table_tag_gossips.json
  def create
    @join_table_tag_gossip = JoinTableTagGossip.new(join_table_tag_gossip_params)

    respond_to do |format|
      if @join_table_tag_gossip.save
        format.html { redirect_to @join_table_tag_gossip, notice: 'Join table tag gossip was successfully created.' }
        format.json { render :show, status: :created, location: @join_table_tag_gossip }
      else
        format.html { render :new }
        format.json { render json: @join_table_tag_gossip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /join_table_tag_gossips/1
  # PATCH/PUT /join_table_tag_gossips/1.json
  def update
    respond_to do |format|
      if @join_table_tag_gossip.update(join_table_tag_gossip_params)
        format.html { redirect_to @join_table_tag_gossip, notice: 'Join table tag gossip was successfully updated.' }
        format.json { render :show, status: :ok, location: @join_table_tag_gossip }
      else
        format.html { render :edit }
        format.json { render json: @join_table_tag_gossip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /join_table_tag_gossips/1
  # DELETE /join_table_tag_gossips/1.json
  def destroy
    @join_table_tag_gossip.destroy
    respond_to do |format|
      format.html { redirect_to join_table_tag_gossips_url, notice: 'Join table tag gossip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_join_table_tag_gossip
      @join_table_tag_gossip = JoinTableTagGossip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def join_table_tag_gossip_params
      params.fetch(:join_table_tag_gossip, {})
    end
end
