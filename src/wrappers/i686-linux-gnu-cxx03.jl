# Autogenerated wrapper script for ImageMagick_jll for i686-linux-gnu-cxx03
export identify, imagemagick_convert, libwand

using Zlib_jll
using libpng_jll
using JpegTurbo_jll
using Libtiff_jll
JLLWrappers.@generate_wrapper_header("ImageMagick")
JLLWrappers.@declare_executable_product(identify)
JLLWrappers.@declare_executable_product(imagemagick_convert)
JLLWrappers.@declare_library_product(libwand, "libMagickWand-6.Q16.so.7")
function __init__()
    JLLWrappers.@generate_init_header(Zlib_jll, libpng_jll, JpegTurbo_jll, Libtiff_jll)
    JLLWrappers.@init_executable_product(
        identify,
        "bin/identify",
    )

    JLLWrappers.@init_executable_product(
        imagemagick_convert,
        "bin/convert",
    )

    JLLWrappers.@init_library_product(
        libwand,
        "lib/libMagickWand-6.Q16.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
