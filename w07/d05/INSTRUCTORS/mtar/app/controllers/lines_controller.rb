class LinesController < ApplicationController

  def show
    line_name = params[:line_name]
    line = Line.find_by(name: line_name)
    data = {info: line, stations: line.stations}
    render :json => data.to_json
  end

end
