# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule ImageMagick_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("ImageMagick")
JLLWrappers.@generate_main_file("ImageMagick", UUID("c73af94c-d91f-53ed-93a7-00f77d67a9d7"))
end  # module ImageMagick_jll
