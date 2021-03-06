# Autogenerated wrapper script for ImageMagick_jll for x86_64-linux-gnu-cxx11
export identify, imagemagick_convert, libwand

using Zlib_jll
using libpng_jll
using JpegTurbo_jll
using Libtiff_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `identify`
const identify_splitpath = ["bin", "identify"]

# This will be filled out by __init__() for all products, as it must be done at runtime
identify_path = ""

# identify-specific global declaration
function identify(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', ENV[LIBPATH_env])
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(identify_path)
    end
end


# Relative path to `imagemagick_convert`
const imagemagick_convert_splitpath = ["bin", "convert"]

# This will be filled out by __init__() for all products, as it must be done at runtime
imagemagick_convert_path = ""

# imagemagick_convert-specific global declaration
function imagemagick_convert(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', ENV[LIBPATH_env])
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(imagemagick_convert_path)
    end
end


# Relative path to `libwand`
const libwand_splitpath = ["lib", "libMagickWand-6.Q16.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libwand_path = ""

# libwand-specific global declaration
# This will be filled out by __init__()
libwand_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libwand = "libMagickWand-6.Q16.so.6"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"ImageMagick")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (Zlib_jll.PATH_list, libpng_jll.PATH_list, JpegTurbo_jll.PATH_list, Libtiff_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (Zlib_jll.LIBPATH_list, libpng_jll.LIBPATH_list, JpegTurbo_jll.LIBPATH_list, Libtiff_jll.LIBPATH_list,))

    global identify_path = normpath(joinpath(artifact_dir, identify_splitpath...))

    push!(PATH_list, dirname(identify_path))
    global imagemagick_convert_path = normpath(joinpath(artifact_dir, imagemagick_convert_splitpath...))

    push!(PATH_list, dirname(imagemagick_convert_path))
    global libwand_path = normpath(joinpath(artifact_dir, libwand_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libwand_handle = dlopen(libwand_path)
    push!(LIBPATH_list, dirname(libwand_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

