set_project("lac")
set_xmakever("2.6.3")

set_version("0.0.1", {build = "%Y%m%d%H%M"})
add_rules("mode.debug", "mode.release")


add_defines("LINUX", "HAS_PTHREAD", "HAS_STD_MALLOC", "HAVE_CLOCK_GETTIME", "HAS_SEM_OPEN", "HAVE_SEM_TIMEDWAIT",
"HAS_GET_TIME_US64"
)

add_includedirs("./")
add_includedirs("./3rd")

add_links("c","m","rt", "pthread", "dl")


target("lac")
    -- set kind
    set_kind("shared")
    -- add deps
    add_files("tkc/*.c")
    add_files("platforms/pc/*.c")

includes(
"test"
)
