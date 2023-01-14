using Plots

# example
begin

    # integrand

    x = 0:0.001:1
    y = x -> x^2

    plt1 = plot(
        x, y.(x),
        legend=false
    )

    x = range(0, 1, length=1+2)
    s = x -> y(floor(x))
    plot!(
        x, s.(x)
    )

    plt2 = plot(
        x, y.(x),
        legend=false
    )

    
    plt = plot(
        plt1, plt2,
        layout=(1, 2),
        dpi=300,
        size=(800, 300)
    )

    display("image/png", plt)
end