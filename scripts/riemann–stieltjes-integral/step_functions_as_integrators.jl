using Plots

# step functions as integrators
begin

    x = -1:0.01:0
    plt1 = plot(
        x, zeros(length(x)),
        legend=false
    )
    x = 0:0.01:1
    plot!(
        x, ones(length(x)),
    )
    scatter!(
        [0], [1],
        mc=palette(:default)[2]
    )

    x = -1:0.01:0
    plt2 = plot(
        x, zeros(length(x)),
        legend=false
    )
    x = 0:0.01:1
    plot!(
        x, ones(length(x))
    )
    scatter!(
        [0], [0],
        mc=palette(:default)[1]
    )

    x = -1:0.01:-0.02
    plt3 = plot(
        x, zeros(length(x)),
        legend=false
    )
    x = 0.02:0.01:1
    plot!(
        x, zeros(length(x)),
        lc=palette(:default)[1]
    )
    scatter!(
        [0], [1],
        mc=palette(:default)[2]
    )

    plt = plot(
        plt1, plt2, plt3,
        dpi=300,
        layout=(1, 3),
        size=(800, 200)
    )

    display("image/png", plt)
end

# example
begin

    # integrand

    x = -3pi:0.001:0
    y = x -> abs(sin(x)) / x

    plt1 = plot(
        x, y.(x),
        dpi=300,
        legend=false
    )

    x = 0:0.001:3pi
    plot!(
        x, y.(x),
        lc=palette(:default)[2]
    )

    scatter!(
        [0], [-1],
        mc=palette(:default)[1]
    )

    x_strings = ["$(i)\$\\pi\$" for i in -3:1:3]
    x_strings[3] = "\$-\\pi\$"
    x_strings[4] = "\$0\$"
    x_strings[5] = "\$\\pi\$"
    xticks!(
        -3pi:pi:3pi,
        x_strings
    )

    # integrator

    x = -3pi:0.001:0
    plt2 = plot(
        x, -ones(length(x)),
        legend=false
    )
    xticks!(
        -3pi:pi:3pi,
        x_strings
    )

    x = 0:0.001:3pi
    plt2 = plot!(
        x, ones(length(x))
    )

    scatter!(
        [0], [1],
        mc=palette(:default)[2]
    )

    
    plt = plot(
        plt1, plt2,
        layout=(1, 2),
        size=(800, 300)
    )

    display("image/png", plt)
end