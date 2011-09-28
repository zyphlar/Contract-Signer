class QuicksignController < ApplicationController

  def new
    @contract = Contract.new
    @contract.signer = Signer.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def create
    @contract = Contract.new(params[:contract])
                                                                                                                       
    @contract.datesigned = Time.current
    @contract.signinghash = Digest::SHA1.hexdigest @contract.boilerplate+@contract.signature+@contract.datesigned.to_s

    @contract.save
                                                                                                                       
    respond_to do |format|
      format.html { redirect_to(@contract, :notice => 'Contract was successfully created.') }
    end
  end


end
