# frozen_string_literal: true

class ReactionsController < ApplicationController
  before_action :set_reaction, only: %i[show edit update destroy]
  before_action :set_reading, only: [:new]
  before_action :set_section, only: [:new]
  before_action :set_verse, only: [:new]

  # GET /reactions
  # GET /reactions.json
  def index
    @reactions = Reaction.all
  end

  # GET /reactions/1
  # GET /reactions/1.json
  def show; end

  # GET /reactions/new
  def new
    @reaction = Reaction.new
  end

  # GET /reactions/1/edit
  def edit; end

  # POST /reactions
  # POST /reactions.json
  def create
    @reaction = Reaction.new(reaction_params)

    respond_to do |format|
      if @reaction.save
        format.html { redirect_to after_create_redirect, notice: 'Reaction was successfully created.' }
        format.json { render :show, status: :created, location: @reaction }
      else
        format.html { render :new }
        format.json { render json: @reaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reactions/1
  # PATCH/PUT /reactions/1.json
  def update
    respond_to do |format|
      if @reaction.update(reaction_params)
        format.html { redirect_to @reaction, notice: 'Reaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @reaction }
      else
        format.html { render :edit }
        format.json { render json: @reaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reactions/1
  # DELETE /reactions/1.json
  def destroy
    @reaction.destroy
    respond_to do |format|
      format.html { redirect_to reactions_url, notice: 'Reaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def after_create_redirect
    if @reaction.verse.present?
      @reaction.section.path_to(@reaction.verse)
    else
      reading_url(@reaction.reading)
    end
  end

  def set_reaction
    @reaction = Reaction.find(params[:id])
  end

  def set_reading
    @reading = Reading.find(params[:reading_id])
  end

  def set_section
    @section = Section.find(params[:section_id])
  end

  def set_verse
    @verse = Verse.find(params[:verse_id])
  end

  def reaction_params
    params.require(:reaction).permit(:body, :reading_id, :name, :verse_id, :section_id)
  end
end
