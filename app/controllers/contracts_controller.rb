class ContractsController < ApplicationController
  # GET /contracts
  # GET /contracts.xml
  def index
    @contracts = Contract.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @contracts }
    end
  end

  # GET /contracts/1
  # GET /contracts/1.xml
  def show
    @contract = Contract.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @contract }
    end
  end

  # GET /contracts/new
  # GET /contracts/new.xml
  def new
    @contract = Contract.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @contract }
    end
  end

  # GET /contracts/1/edit
  def edit
    @contract = Contract.find(params[:id])
  end

  # POST /contracts
  # POST /contracts.xml
  def create
    @contract = Contract.new(params[:contract])
    @contract_template = ContractTemplate.find(params[:boilerplateid])

    @contract.name = @contract_template.name
    @contract.boilerplate = @contract_template.boilerplate
    @contract.datesigned = Time.current
    @contract.signinghash = Digest::SHA1.hexdigest @contract.boilerplate+@contract.signature+@contract.datesigned.to_s

    respond_to do |format|
      if @contract.save
        format.html { redirect_to(@contract, :notice => 'Contract was successfully created.') }
        format.xml  { render :xml => @contract, :status => :created, :location => @contract }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @contract.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /contracts/1
  # PUT /contracts/1.xml
  def update
    @contract = Contract.find(params[:id])

    respond_to do |format|
    #  if @contract.update_attributes(params[:contract])

    #    format.html { redirect_to(@contract, :notice => 'Contract was successfully updated.') }
    #    format.xml  { head :ok }
    #  else
        format.html { redirect_to(@contract, :notice => 'Contracts cannot be edited.') }
        format.xml  { render :xml => @contract.errors, :status => :unprocessable_entity }
    #  end
    end
  end

  # DELETE /contracts/1
  # DELETE /contracts/1.xml
  def destroy
    @contract = Contract.find(params[:id])
    @contract.destroy

    respond_to do |format|
      format.html { redirect_to(contracts_url) }
      format.xml  { head :ok }
    end
  end
end
