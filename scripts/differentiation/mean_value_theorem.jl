using Plots, LaTeXStrings

# 3/4 circle
begin
    t = 0:0.001:2pi*(3/4)
    x = t -> cos(t)
    y = t -> sin(t)
    plt = plot(
        x.(t), y.(t),
        aspect_ratio=:equal
    )
    plot!(x.([0, 2pi*(3/4)]), y.([0, 2pi*(3/4)]))
    display("image/png", plt)
end

# spiral
begin
    t = 0:0.001:pi*(7/4)
    x = t -> t * cos(t)
    y = t -> t * sin(t)
    plt = plot(
        x.(t), y.(t),
        aspect_ratio=:equal
    )
    plot!(x.([0, pi*(7/4)]), y.([0, pi*(7/4)]))
    display("image/png", plt)
end

begin
    epsilon = 0.001
    t = epsilon:0.001:pi*(7/4)
    x = t -> t * cos(1/t)
    y = t -> t * sin(1/t)
    plt = plot(
        x.(t), y.(t),
        aspect_ratio=:equal
    )
    plot!(x.([epsilon, pi*(7/4)]), y.([epsilon, pi*(7/4)]))
    display("image/png", plt)
end