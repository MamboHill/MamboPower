module MamboPower

  include("DataInputOutput.jl")
  export display_network_data

  function test_network_data()

    # Load the MatPower case file
    case4gs_data = read_MatPower_case("src/data/case4gs.m")

    # Display the network data
    display_network_data(case4gs_data)

  end

end
