using Plots

begin
    b = 3
    x = 1:0.001:b
    y = log.(x)
    l = zeros(length(x))
    plot(
        x, y
    )

    x = 1:0.001:exp(1)
    y = log.(x)
    l = zeros(length(x))
    plot!(
        x, y,
        fillrange=(l, y),
        fillalpha=0.3,
        lw=0
    )

    x = exp(1):0.001:b
    y = log.(x)
    plot!(
        x, y,
        fillrange=(l, y),
        fillalpha=0.3,
        lw=0
    )

    vline!(
        [exp(1)]
    )
end

begin
    using Random, Distributions
    Random.seed!(42)
    X = Uniform(0, exp(1))
    Y = Uniform(0, 1)
    n = 100000
    x = rand(X, n)
    y = rand(Y, n)
    (sum(y .< log.(x)) / n) * exp(1)
end