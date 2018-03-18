class SchoolClassesController < ApplicationController

  def create
    @school_class = SchoolClass.new
    @school_class.title = params[:title]
    @school_class.room_number = params[:school_number]
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def new
    @school_class = SchoolClass.new
    @school_class.title = params[:title]
    @school_class.room_number = params[:school_number]
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find_by_id(params[:id])
  end

  def edit
    @school_class = SchoolClass.find_by_id(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(title: params[:title], room_number: params[:room_number])
    redirect_to school_class_path(@school_class)
  end
end
