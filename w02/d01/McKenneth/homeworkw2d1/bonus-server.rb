require 'sinatra'

  eltrain = ["eighth", "sixth", "union", "third", "first"]

  get("/") do
    "MTA SUBWAY YO. Where you tryna go homie?"
  end

  get("/eltrain") do 
    "L-train stops are : eighth, sixth, union, third, first"
  end

  get("/eltrain/howmanystops") do
    first = eltrain.index(params[:first])
    second = eltrain.index(params[:second])
    "The number of stops for that trip is #{(first - second).abs}"
    end