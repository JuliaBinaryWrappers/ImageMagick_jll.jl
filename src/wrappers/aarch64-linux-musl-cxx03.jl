# Autogenerated wrapper script for ImageMagick_jll for aarch64-linux-musl-cxx03
export identify, imagemagick_convert, libwand, mogrify, montage

using Ghostscript_jll
using JpegTurbo_jll
using Libtiff_jll
using OpenJpeg_jll
using Zlib_jll
using libpng_jll
JLLWrappers.@generate_wrapper_header("ImageMagick")
JLLWrappers.@declare_library_product(libwand, "libMagickWand-7.Q16HDRI.so.10")
JLLWrappers.@declare_executable_product(identify)
JLLWrappers.@declare_executable_product(imagemagick_convert)
JLLWrappers.@declare_executable_product(mogrify)
JLLWrappers.@declare_executable_product(montage)
function __init__()
    JLLWrappers.@generate_init_header(Ghostscript_jll, JpegTurbo_jll, Libtiff_jll, OpenJpeg_jll, Zlib_jll, libpng_jll)
    JLLWrappers.@init_library_product(
        libwand,
        "lib/libMagickWand-7.Q16HDRI.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        identify,
        "bin/identify",
    )

    JLLWrappers.@init_executable_product(
        imagemagick_convert,
        "bin/convert",
    )

    JLLWrappers.@init_executable_product(
        mogrify,
        "bin/mogrify",
    )

    JLLWrappers.@init_executable_product(
        montage,
        "bin/montage",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
