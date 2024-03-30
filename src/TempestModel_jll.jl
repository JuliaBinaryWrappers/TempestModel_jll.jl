# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule TempestModel_jll
using Base
using Base: UUID
using LazyArtifacts
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("TempestModel")
JLLWrappers.@generate_main_file("TempestModel", UUID("2962c967-6e2c-5a30-9da7-7ff16ffb0b2a"))
end  # module TempestModel_jll
