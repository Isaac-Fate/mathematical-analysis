using Plots, LaTeXStrings

# x^2 sin(1/x^2) and its derivative
begin
    x = -0.5:0.001:0.5
    y = x -> x != 0 ? x^2 * sin(1/x^2) : 0
    dy = x -> x != 0 ? 2x * sin(1/x^2) - (2/x) * cos(1/x^2) : 0

    plt1 = plot(
        x, y.(x),
        label="original function \$f\$"
    )

    plt2 = plot(
        x, dy.(x),
        label="derivative \$f^\\prime\$",
        color=palette(:default)[2]
    )

    plt = plot(
        plt1, plt2,
        dpi=300,
        layout=(1, 2),
        size=(800, 300)
    )

    display("image/png", plt)
end

# x^2 sin(1/x) and its derivative
begin
    x = -0.5:0.0001:0.5
    y = x -> x != 0 ? x^2 * sin(1/x) : 0
    dy = x -> x != 0 ? 2x * sin(1/x) - cos(1/x) : 0

    plt1 = plot(
        x, y.(x),
        label="original function \$f\$"
    )

    plt2 = plot(
        x, dy.(x),
        label="derivative \$f^\\prime\$",
        color=palette(:default)[2]
    )

    plt = plot(
        plt1, plt2,
        dpi=300,
        layout=(1, 2),
        size=(800, 300)
    )

    display("image/png", plt)
end

# [x(x-1)]^(1/3) and its derivative
begin
    x = 0:0.000001:1
    y = x -> cbrt(x * (x-1))
    dy = x -> (1/3) * cbrt(1/(x * (x-1)))^2 * (2x-1)

    plt1 = plot(
        x, y.(x),
        label="original function \$f\$"
    )

    plt2 = plot(
        x, dy.(x),
        label="derivative \$f^\\prime\$",
        color=palette(:default)[2]
    )

    plt = plot(
        plt1, plt2,
        dpi=300,
        layout=(1, 2),
        size=(800, 300)
    )

    display("image/png", plt)
end