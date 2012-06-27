class OrderHeadersController < ApplicationController
  # GET /order_headers
  # GET /order_headers.json
  def index
    @order_headers = OrderHeader.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @order_headers }
    end
  end

  # GET /order_headers/1
  # GET /order_headers/1.json
  def show
    @order_header = OrderHeader.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @order_header }
    end
  end

  # GET /order_headers/new
  # GET /order_headers/new.json
  def new
    @order_header = OrderHeader.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @order_header }
    end
  end

  # GET /order_headers/1/edit
  def edit
    @order_header = OrderHeader.find(params[:id])
  end

  # POST /order_headers
  # POST /order_headers.json
  def create
    @order_header = OrderHeader.new(params[:order_header])

    respond_to do |format|
      if @order_header.save
        format.html { redirect_to @order_header, :notice => 'Order header was successfully created.' }
        format.json { render :json => @order_header, :status => :created, :location => @order_header }
      else
        format.html { render :action => "new" }
        format.json { render :json => @order_header.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /order_headers/1
  # PUT /order_headers/1.json
  def update
    @order_header = OrderHeader.find(params[:id])

    respond_to do |format|
      if @order_header.update_attributes(params[:order_header])
        format.html { redirect_to @order_header, :notice => 'Order header was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @order_header.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /order_headers/1
  # DELETE /order_headers/1.json
  def destroy
    @order_header = OrderHeader.find(params[:id])
    @order_header.destroy

    respond_to do |format|
      format.html { redirect_to order_headers_url }
      format.json { head :no_content }
    end
  end
end
