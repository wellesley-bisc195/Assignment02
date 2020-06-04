using Assignment02
using Test
using Random

@testset "Assignment02" begin

@testset "Setup" begin
    @test isdefined(Assignment02, :generate_sequence)
    Random.seed!(1)
    s = generate_sequence(4)
    @test length(s) == 4
    @test s == "GGTC"
end

@testset "Question 1" begin
    @test question1 isa DataType
    b = try
        a = question1[]
        push!(a, "test")
    catch e
        println(e)
        a = []
    end
    @test length(b) == 1
end

@testset "Question 2" begin
    @test question2 isa Function
    @test question2("string") isa Bool
    @test question2("string")
    @test question2(1.) isa Bool
    @test !question2(1.)
end

@testset "Question 3" begin
    @test typeof(question3) <: AbstractString
end

@testset "Question 4" begin
    @test typeof(question4) <: AbstractString
end

@testset "Question 5" begin
    @test typeof(question5) <: AbstractString
end

end # "Assignment02"