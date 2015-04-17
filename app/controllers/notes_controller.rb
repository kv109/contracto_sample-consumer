class NotesController < ApplicationController
  def index
    @notes = get_notes_call.data
  end

  def show
    @note = get_notes_by_id_call(id: params[:id]).data
  end
end
