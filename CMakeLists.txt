cmake_minimum_required(VERSION 3.5)

project(RISCV-Simulator)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "-O2 -W -Wall")

include_directories(${CMAKE_SOURCE_DIR}/include)

add_executable(
    Sim
    source-code/main.cpp
    source-code/MemoryManager.cpp
    source-code/Simulator.cpp
    source-code/BranchPredictor.cpp
)