class TodoitemsController < ApplicationController

  before_action  :set_todolist

  # GET /todoitems
  # GET /todoitems.json
  def index
    @todoitems = @todolist.todoitems.paginate(page: params[:page], per_page: 5)
  end

  # GET /todoitems/1
  # GET /todoitems/1.json
  def show
       @todoitem = Todoitem.find(params[:id])

  end

  # GET /todoitems/new
  def new
    @todoitem = Todoitem.new
  end

  # GET /todoitems/1/edit
  def edit
          set_todoitem

  end

  # POST /todoitems
  # POST /todoitems.json
  def create
    @todoitem = Todoitem.new(todoitem_params)

    respond_to do |format|
          @todoitem = Todoitem.new(todoitem_params)
          @todoitem.todolist_id = @todolist.id
          @todoitem.user_id = current_user.id
          @temp = @todoitem.todolist_id
      if @todoitem.save
        format.html { redirect_to @todolist, notice: 'Todoitem was successfully created.' }
        format.json { render :show, status: :created, location: @todoitem }
      else
        format.html { redirect_to @todolist, notice: "Todoitem was NOT successfully created. #{@temp}" }
        format.json { render json: @todoitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todoitems/1
  # PATCH/PUT /todoitems/1.json
  def update
    set_todoitem
    respond_to do |format|
      if @todoitem.update(todoitem_params)
        format.html { redirect_to @todolist, notice: 'Todoitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @todoitem }
      else
        format.html { render :edit }
        format.json { render json: @todoitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todoitems/1
  # DELETE /todoitems/1.json
  def destroy
        set_todoitem
    @todoitem.destroy
    respond_to do |format|
      format.html { redirect_to @todolist, notice: 'Todoitem was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todoitem
      @todoitem = Todoitem.find(params[:id])
    end

    def set_todolist 
  @todolist = Todolist.find(params[:todolist_id])
end 

    # Never trust parameters from the scary internet, only allow the white list through.
    def todoitem_params
      params.require(:todoitem).permit(:due_date, :task_title, :description, :done)
    end
end
