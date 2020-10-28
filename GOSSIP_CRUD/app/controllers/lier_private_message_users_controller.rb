class LierPrivateMessageUsersController < ApplicationController
  before_action :set_lier_private_message_user, only: [:show, :edit, :update, :destroy]

  # GET /lier_private_message_users
  # GET /lier_private_message_users.json
  def index
    @lier_private_message_users = LierPrivateMessageUser.all
  end

  # GET /lier_private_message_users/1
  # GET /lier_private_message_users/1.json
  def show
  end

  # GET /lier_private_message_users/new
  def new
    @lier_private_message_user = LierPrivateMessageUser.new
  end

  # GET /lier_private_message_users/1/edit
  def edit
  end

  # POST /lier_private_message_users
  # POST /lier_private_message_users.json
  def create
    @lier_private_message_user = LierPrivateMessageUser.new(lier_private_message_user_params)

    respond_to do |format|
      if @lier_private_message_user.save
        format.html { redirect_to @lier_private_message_user, notice: 'Lier private message user was successfully created.' }
        format.json { render :show, status: :created, location: @lier_private_message_user }
      else
        format.html { render :new }
        format.json { render json: @lier_private_message_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lier_private_message_users/1
  # PATCH/PUT /lier_private_message_users/1.json
  def update
    respond_to do |format|
      if @lier_private_message_user.update(lier_private_message_user_params)
        format.html { redirect_to @lier_private_message_user, notice: 'Lier private message user was successfully updated.' }
        format.json { render :show, status: :ok, location: @lier_private_message_user }
      else
        format.html { render :edit }
        format.json { render json: @lier_private_message_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lier_private_message_users/1
  # DELETE /lier_private_message_users/1.json
  def destroy
    @lier_private_message_user.destroy
    respond_to do |format|
      format.html { redirect_to lier_private_message_users_url, notice: 'Lier private message user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lier_private_message_user
      @lier_private_message_user = LierPrivateMessageUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lier_private_message_user_params
      params.fetch(:lier_private_message_user, {})
    end
end
