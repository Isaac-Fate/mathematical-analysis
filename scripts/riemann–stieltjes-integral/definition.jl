using Plots; pyplot

begin
    x = 0:0.01:pi/2
    f(x) = exp(x)
    g(x) = sin(x)
    plt = plot3d(
        x, g.(x), f.(x),
        dpi=300,
    )
    plot!(
        zeros(length(x)),
        g.(x), f.(x),
    )
    surface!(
        zeros(length(x)),
        g.(x), f.(x),
        alpha=0.3
    )
    xlabel!("\$x\$")
    ylabel!("\$g\$")
    zlabel!("\$f\$")
    display("image/png", plt)
end
