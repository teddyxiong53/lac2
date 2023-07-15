set_project("lac")
set_xmakever("2.6.3")

set_version("0.0.1", {build = "%Y%m%d%H%M"})
add_rules("mode.debug", "mode.release")


add_defines("LINUX", "HAS_PTHREAD", "HAS_STD_MALLOC", "HAVE_CLOCK_GETTIME", "HAS_SEM_OPEN", "HAVE_SEM_TIMEDWAIT",
"HAS_GET_TIME_US64", "WITH_DATA_READER_WRITER", "HAS_STDIO"
)

add_includedirs("./src")
add_includedirs("./3rd", "./3rd/mbedtls/include")

add_links("c","m","rt", "pthread", "dl")


target("lac")
    -- set kind
    set_kind("shared")
    -- add deps
    add_files("src/tkc/*.c")
    add_files("src/platforms/pc/*.c")
    add_files("src/fscript_ext/*.c")
    add_files("src/streams/*/*.c")
    add_files("src/debugger/*.c")
    add_files("src/ubjson/*.c")
    add_files("src/conf_io/*.c")
    add_files("src/xml/*.c")
    add_files("src/compressors/*.c")
    add_files("3rd/mbedtls/library/*.c")
    add_files("3rd/miniz/*.c")
includes(
"test"
)
