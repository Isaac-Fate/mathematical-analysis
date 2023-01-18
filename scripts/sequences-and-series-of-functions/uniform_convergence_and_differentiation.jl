using Plots

begin
    x = 0:0.0001:pi
    f(x, n) = sin(n * x) / sqrt(n)
    plt = plot(
        dpi=300,
    )

    for n in 1:3
        plot!(
            x, f.(x, n)
        )
    end

    for n in 16:16:32
        plot!(
            x, f.(x, n)
        )
    end

    # for n in 100:100:200
    #     plot!(
    #         x, f.(x, n)
    #     )
    # end

    xticks!(
        0:pi/4:pi,
        ["0", "\$\\pi/4\$", "\$\\pi/2\$", "\$3\\pi/4\$", "\$\\pi\$"]
    )
    display("image/png", plt)
end