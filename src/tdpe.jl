module tdpe

include("common.jl")

#include individual problems
include("001.jl")
include("002.jl")
include("003.jl")
include("004.jl")
include("005.jl")
include("006.jl")
include("007.jl")
include("008.jl")
include("009.jl")
include("010.jl")
#end includes

function print_solutions()
    #print individual solutions
    solution001()
    solution002()
    solution003()
    solution004()
    solution005()
    solution006()
    solution007()
    solution008()
    solution009()
    solution010()
    #end prints
end

end
