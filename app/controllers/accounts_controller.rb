class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update]

  # GET /accounts
  # GET /accounts.json
  def index
        @accounts = accounts.all

  end

  # GET /accounts/1
  # GET /accounts/1.json
  def show
  end

  # GET /accounts/new
  def new
    @account = current_user.account.new
  end

  # GET /accounts/1/edit
  def edit
  end


  # PATCH/PUT /accounts/1
  # PATCH/PUT /accounts/1.json
  def update

    respond_to do |format|
      if @account.update(account_params)
        format.html { redirect_to @account, notice: 'Account was successfully updated.' }
        format.json { render :show, status: :ok, location: @account }
      else
        format.html { render :edit }
        format.json { render json: @account.errors, status: :unprocessable_entity }

      end
    end
  end

  # DELETE /accounts/1
  # DELETE /accounts/1.json


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      @account = current_user.account
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_params
      params.require(:account).permit(:first_name, :last_name, :gender, :age)
    end
end
