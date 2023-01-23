using Plots

begin
    x = 0:0.0001:pi
    f(x, n) = sin(n * x) / sqrt(n)

    plt1 = plot()

    for n in 1:3
        plot!(
            x, f.(x, n),
            label="\$n = $(n)\$"
        )
    end

    for n in 16:16:32
        plot!(
            x, f.(x, n),
            label="\$n = $(n)\$"
        )
    end

    xticks!(
        0:pi/4:pi,
        ["0", "\$\\pi/4\$", "\$\\pi/2\$", "\$3\\pi/4\$", "\$\\pi\$"]
    )

    x = 0:0.0001:pi
    f(x, n) = cos(n * x) * sqrt(n)


    
    plt2 = plot()

    for n in 1:3
        plot!(
            x, f.(x, n),
            label="\$n = $(n)\$"
        )
    end

    for n in 16:16:32
        plot!(
            x, f.(x, n),
            label="\$n = $(n)\$"
        )
    end

    xticks!(
        0:pi/4:pi,
        ["0", "\$\\pi/4\$", "\$\\pi/2\$", "\$3\\pi/4\$", "\$\\pi\$"]
    )

    plt = plot(
        plt1, plt2,
        dpi=300,
        layout=(1, 2),
        size=(800, 300)
    )
    display("image/png", plt)
end