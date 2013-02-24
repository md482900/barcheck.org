class BarsController < ApplicationController
  load_and_authorize_resource
  # GET /bars
  # GET /bars.json
  # encoding: utf-8

  def index

    #binding.pry

    @search = Bar.ransack(params[:q])

    if params[:q].nil?
      @bars = Bar.all
    else
      @bars = @search.result(:distinct => true).order("created_at desc")
    end



    #binding.pry
    if @bars.count == 1
      redirect_to @bars.first
    else

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bars }
      end
    end
  end


  # GET /bars/1
  # GET /bars/1.json
  def show
    @bar = Bar.find(params[:id])


    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bar }
    end
  end

  # GET /bars/new
  # GET /bars/new.json
  def new
    @bar = Bar.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bar }
    end
  end

  # GET /bars/1/edit
  def edit
    @bar = Bar.find(params[:id])
  end

  # POST /bars
  # POST /bars.json
  def create
   # @bar = Bar.new(params[:bar])
    @bar = Bar.create(params[:bar])

    respond_to do |format|
      if @bar.save
        format.html { redirect_to @bar, notice: 'Bar was successfully created.' }
        format.json { render json: @bar, status: :created, location: @bar }
      else
        format.html { render action: "new" }
        format.json { render json: @bar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bars/1
  # PUT /bars/1.json
  def update
    @bar = Bar.find(params[:id])

    respond_to do |format|
      if @bar.update_attributes(params[:bar])
        format.html { redirect_to @bar, notice: 'Bar was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bars/1
  # DELETE /bars/1.json
  def destroy
    @bar = Bar.find(params[:id])
    @bar.destroy

    respond_to do |format|
      format.html { redirect_to bars_url }
      format.json { head :no_content }
    end
  end

  def like
    @liker = 0
    @current_user = current_user
    @bar = Bar.find(params[:id])

    if @current_user.flagged?(@bar, :like)
      #We already likes this
      @current_user.unflag(@bar, :like)
      msg = "Dir gefaehlt die Location nicht mehr"
      @liker -= 1
      if @liker < 1
        @liker = 0
      end

    else
      #We don't like this yet
      @current_user.flag(@bar, :like)
      msg = "Dir gefaehlt die Location"
      @liker += 1
    end

    redirect_to bar_path, :notice => msg
  end

#def addComment
   # Comment.create(:user_id => current_user.id,:user_name => current_user.user_name, :bar_id => params[:barid], :comment=> params[:comment])
    #@bar = Bar.find(params[:barid])

    #redirect_to @bar
  #end


end
