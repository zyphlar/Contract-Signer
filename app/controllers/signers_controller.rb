class SignersController < ApplicationController
  # GET /signers
  # GET /signers.xml
  def index
    @signers = Signer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @signers }
    end
  end

  # GET /signers/1
  # GET /signers/1.xml
  def show
    @signer = Signer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @signer }
    end
  end

  # GET /signers/new
  # GET /signers/new.xml
  def new
    @signer = Signer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @signer }
    end
  end

  # GET /signers/1/edit
  def edit
    @signer = Signer.find(params[:id])
  end

  # POST /signers
  # POST /signers.xml
  def create
    @signer = Signer.new(params[:signer])

    respond_to do |format|
      if @signer.save
        format.html { redirect_to(@signer, :notice => 'Signer was successfully created.') }
        format.xml  { render :xml => @signer, :status => :created, :location => @signer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @signer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /signers/1
  # PUT /signers/1.xml
  def update
    @signer = Signer.find(params[:id])

    respond_to do |format|
      if @signer.update_attributes(params[:signer])
        format.html { redirect_to(@signer, :notice => 'Signer was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @signer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /signers/1
  # DELETE /signers/1.xml
  def destroy
    @signer = Signer.find(params[:id])
    @signer.destroy

    respond_to do |format|
      format.html { redirect_to(signers_url) }
      format.xml  { head :ok }
    end
  end
end
