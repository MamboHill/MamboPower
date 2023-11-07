using MamboPower
using Test

@testset "MamboPower.jl" begin
      # Load the MatPower case file
  case4gs_data = MamboPower.read_MatPower_case("MamboPower/test/data/case4gs.m")

  # Display the network data
  MamboPower.display_network_data(case4gs_data)
end
