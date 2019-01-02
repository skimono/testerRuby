class VmtFilesController < ApplicationController
  # GET /vmt_files
  # GET /vmt_files.json
  def index
    @vmt_files = VmtFile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vmt_files }
    end
  end

  # GET /vmt_files/1
  # GET /vmt_files/1.json
  def show
    @vmt_file = VmtFile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vmt_file }
    end
  end

  # GET /vmt_files/new
  # GET /vmt_files/new.json
  def new
    @vmt_file = VmtFile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vmt_file }
    end
  end

  # GET /vmt_files/1/edit
  def edit
    @vmt_file = VmtFile.find(params[:id])
  end

  # POST /vmt_files
  # POST /vmt_files.json
  def create
    @vmt_file = VmtFile.new(params[:vmt_file])

    respond_to do |format|
      if @vmt_file.save
        format.html { redirect_to @vmt_file, notice: 'Vmt file was successfully created.' }
        format.json { render json: @vmt_file, status: :created, location: @vmt_file }
      else
        format.html { render action: "new" }
        format.json { render json: @vmt_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vmt_files/1
  # PUT /vmt_files/1.json
  def update
    @vmt_file = VmtFile.find(params[:id])

    respond_to do |format|
      if @vmt_file.update_attributes(params[:vmt_file])
        format.html { redirect_to @vmt_file, notice: 'Vmt file was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vmt_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vmt_files/1
  # DELETE /vmt_files/1.json
  def destroy
    @vmt_file = VmtFile.find(params[:id])
    @vmt_file.destroy

    respond_to do |format|
      format.html { redirect_to vmt_files_url }
      format.json { head :no_content }
    end
  end
end
