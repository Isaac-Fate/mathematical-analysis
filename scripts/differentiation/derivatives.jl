using Plots, LaTeXStrings


# slopes of secant lines
begin
    # curve
    x = range(-2.0, 2.0, length=1000)
    plt = plot(
        x, exp.(x), 
        label="curve \$y=e^x\$", 
        dpi=300,
        size=(600, 400)
    )

    # tangent line
    x = -1.0:0.1:1
    plot!(x, x .+ 1, label="tangent line at \$x=0\$")

    # secant lines
    for x in -2.0:0.5:2
        x = [0, x]
        plot!(x, exp.(x), ls=:dash, label=false)
    end
    plot!()
    display("image/png", plt)
end

begin
    x = range(-0.5, 0.5, length=1000)
    y = x -> x != 0 ? x^2 * sin(1 / x^2) : 0
    y_upper = x -> x^2
    y_lower = x -> -x^2

    plt = plot(
        x, y, 
        label=L"f(x)=x^2 \sin \frac{1}{x^2}\mathbb{1}\{x \neq 0\}",
        dpi=300
    )
    plot!(x, y_upper, ls=:dash, label=L"y=x^2")
    plot!(x, y_lower, ls=:dash, label=L"y=-x^2")
    display("image/png", plt)
end

# cutting a circle in half
begin
    x = range(0.0, 4, length=1000)
    function f(x)
        if x >= 0 && x <= 2.0
            return sqrt(1 - (x - 1)^2)
        elseif x <= 4
            return -sqrt(1 - (x - 3)^2)
        else
            return 0
        end
    end

    plt = plot(
        x, f.(x), 
        label="\$f(x)=\\sqrt{1-(x-1)^2}\\mathbb{1}\\{0 \\leq x \\leq 2\\} -\\sqrt{1-(x-3)^2}\\mathbb{1}\\{2 < x \\leq 4\\}\$",
        legend=false,
        dpi=300,
        aspect_ratio=:equal
    )

    vline!(
        [2], 
        ls=:dash
    )

    display("image/png", plt)
end

begin
    x = range(-0.5, 2.5, length=1000)
    y = x -> x^2 * (x - 1) * (x - 2)

    plt = plot(
        x, y, 
        label="\$f(x)=\\sqrt[3]{x^2(x-1)(x-2)}\$",
        dpi=300
    )

    display("image/png", plt)
end

# infinite derivatives of a continuous funciton
begin
    x = range(-0.5, 2.5, length=1000)
    y = x -> cbrt(x^2 * (x - 1) * (x - 2))

    plt = plot(
        x, y, 
        label="\$f(x)=\\sqrt[3]{x^2(x-1)(x-2)}\$",
        legend=false,
        dpi=300
    )

    vline!(
        [0, 1, 2], 
        ls=:dash
    )

    display("image/png", plt)
end

begin
    x = range(-0.5, 0.5, length=1000)
    y = x -> cbrt(sin(1/x)^2 * x)

    plt = plot(
        x, y, 
        label="\$f(x)=\\sqrt[3]{x^2(x-1)(x-2)}\$",
        legend=false,
        dpi=300
    )

    # vline!(
    #     [0, 1, 2], 
    #     ls=:dash
    # )

    display("image/png", plt)
end

begin
    x = range(0.001, 0.1, length=1000)

    y = x -> (1/3) * (
        x^(-2/3) * cbrt(sin(1/x)^2) 
        - x^(-5/3) * cbrt(sin(1/x))^(-4) * sin(2/x)
    )

    plt = plot(
        x, y.(x),
        legend=false,
        dpi=300
    )

    display("image/png", plt)
end