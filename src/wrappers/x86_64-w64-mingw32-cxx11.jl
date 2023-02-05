# Autogenerated wrapper script for ImageMagick_jll for x86_64-w64-mingw32-cxx11
export identify, imagemagick_convert, libwand, mogrify, montage

using Zlib_jll
using libpng_jll
using JpegTurbo_jll
using Libtiff_jll
using Ghostscript_jll
using OpenJpeg_jll
JLLWrappers.@generate_wrapper_header("ImageMagick")
JLLWrappers.@declare_library_product(libwand, "libMagickWand-6.Q16-6.dll")
JLLWrappers.@declare_executable_product(identify)
JLLWrappers.@declare_executable_product(imagemagick_convert)
JLLWrappers.@declare_executable_product(mogrify)
JLLWrappers.@declare_executable_product(montage)
function __init__()
    JLLWrappers.@generate_init_header(Zlib_jll, libpng_jll, JpegTurbo_jll, Libtiff_jll, Ghostscript_jll, OpenJpeg_jll)
    JLLWrappers.@init_library_product(
        libwand,
        "bin\\libMagickWand-6.Q16-6.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        identify,
        "bin\\identify.exe",
    )

    JLLWrappers.@init_executable_product(
        imagemagick_convert,
        "bin\\convert.exe",
    )

    JLLWrappers.@init_executable_product(
        mogrify,
        "bin\\mogrify.exe",
    )

    JLLWrappers.@init_executable_product(
        montage,
        "bin\\montage.exe",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
