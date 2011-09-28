class ContractTemplatesController < ApplicationController
  # GET /contract_templates
  # GET /contract_templates.xml
  def index
    @contract_templates = ContractTemplate.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @contract_templates }
    end
  end

  # GET /contract_templates/1
  # GET /contract_templates/1.xml
  def show
    @contract_template = ContractTemplate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @contract_template }
      format.text do
        render :text => @contract_template.boilerplate
      end
    end
  end

  # GET /contract_templates/new
  # GET /contract_templates/new.xml
  def new
    @contract_template = ContractTemplate.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @contract_template }
    end
  end

  # GET /contract_templates/1/edit
  def edit
    @contract_template = ContractTemplate.find(params[:id])
  end

  # POST /contract_templates
  # POST /contract_templates.xml
  def create
    @contract_template = ContractTemplate.new(params[:contract_template])

    respond_to do |format|
      if @contract_template.save
        format.html { redirect_to(@contract_template, :notice => 'ContractTemplate was successfully created.') }
        format.xml  { render :xml => @contract_template, :status => :created, :location => @contract_template }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @contract_template.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /contract_templates/1
  # PUT /contract_templates/1.xml
  def update
    @contract_template = ContractTemplate.find(params[:id])

    respond_to do |format|
      if @contract_template.update_attributes(params[:contract_template])
        format.html { redirect_to(@contract_template, :notice => 'ContractTemplate was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @contract_template.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /contract_templates/1
  # DELETE /contract_templates/1.xml
  def destroy
    @contract_template = ContractTemplate.find(params[:id])
    @contract_template.destroy

    respond_to do |format|
      format.html { redirect_to(contract_templates_url) }
      format.xml  { head :ok }
    end
  end
end
