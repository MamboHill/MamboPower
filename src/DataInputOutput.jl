using PowerModels
using JSON3
using Match

function read_MatPower_case(file_path::String)
  # Read the MatPower case file
  power_data = PowerModels.parse_file(file_path)

  return power_data
end


function display_network_data(network_data::Dict{String, Any}, type::String="summary")
  println("* number of buses: $(length(network_data["bus"]))")
  println("* number of generators: $(length(network_data["gen"]))")
  println("* number of branches: $(length(network_data["branch"]))")
  @match type begin
    "summary"   => JSON3.pretty(filter(((k,v),) -> k == "baseMVA" 
                                                || k == "name"
                                                || k == "per_unit"
                                                || k == "source_type"
                                                || k == "source_version", network_data))
    "network"   => JSON3.pretty(network_data)
    "bus"       => JSON3.pretty(network_data["bus"])
    "gen"       => JSON3.pretty(network_data["gen"])
    "branch"    => JSON3.pretty(network_data["branch"])
    "load"      => JSON3.pretty(network_data["load"])
    _           => println("valid options: summary, network, bus, gen, branch, load")
  end
end