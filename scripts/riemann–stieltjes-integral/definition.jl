using Plots

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
        fillrange=(
            zeros(length(x)),
            g.(x), 2
        )
    )
    xlabel!("\$x\$")
    ylabel!("\$g\$")
    zlabel!("\$f\$")
    display("image/png", plt)
end
