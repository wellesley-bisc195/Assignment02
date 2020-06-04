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
    @test question3 isa Function
    @test question3("AGGC") = 0.75
    
end

@testset "Question 4" begin
    @test question4 isa Function
    (rd, wr) = redirect_stdout()
    
    question4("ATTC")
    @test readline(rd) == "Sequence:"
    @test readline(rd) == "ATTC"
    @test readline(rd) == "GC Content:"
    @test readline(rd) == "0.25"

    seq = generate_sequence(20)
    question4(seq)
    @test readline(rd) == "Sequence:"
    @test readline(rd) == seq
    @test readline(rd) == "GC Content:"
    @test readline(rd) == string((count(==('G'), seq)+count(==('C'), seq)) / 20)
end

end # "Assignment02"()