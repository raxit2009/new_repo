class FirstsController < ApplicationController
  # GET /firsts
  # GET /firsts.json
  def index
    @firsts = First.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @firsts }
    end
  end

  # GET /firsts/1
  # GET /firsts/1.json
  def show
    @first = First.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @first }
    end
  end

  # GET /firsts/new
  # GET /firsts/new.json
  def new
    @first = First.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @first }
    end
  end

  # GET /firsts/1/edit
  def edit
    @first = First.find(params[:id])
  end

  # POST /firsts
  # POST /firsts.json
  def create
    @first = First.new(params[:first])

    respond_to do |format|
      if @first.save
        format.html { redirect_to @first, :notice => 'First was successfully created.' }
        format.json { render :json => @first, :status => :created, :location => @first }
      else
        format.html { render :action => "new" }
        format.json { render :json => @first.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /firsts/1
  # PUT /firsts/1.json
  def update
    @first = First.find(params[:id])

    respond_to do |format|
      if @first.update_attributes(params[:first])
        format.html { redirect_to @first, :notice => 'First was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @first.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /firsts/1
  # DELETE /firsts/1.json
  def destroy
    @first = First.find(params[:id])
    @first.destroy

    respond_to do |format|
      format.html { redirect_to firsts_url }
      format.json { head :no_content }
    end
  end
end
