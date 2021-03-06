#!/usr/bin/env bash
    #=
    exec julia --project="$(realpath $(dirname $0))" --color=yes --startup-file=no -e "include(popfirst!(ARGS))" \
    "${BASH_SOURCE[0]}" "$@"
    =#

module EyeTrackingUtils

export make_clean_data

include(joinpath(@__DIR__, "prep.jl"))

end # end module
