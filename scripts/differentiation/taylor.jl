using Plots, LaTeXStrings

# e^x
begin
    x = -7:0.0001:7
    function p(x, n)
        sum([x^k / factorial(k) for k in 0:n])
    end

    plt = plot(
        x, exp.(x),
        label="\$f(x) = e^x\$",
        dpi=300
    )

    for n in 1:5
        plot!(
            x, p.(x, n),
            label="\$p_$(n)(x)\$",
            ls=:dash
        )
    end

    display("image/png", plt)
end

# ln x
begin
    x = 0.5:0.0001:1.5
    function p(x, n)
        sum([(-1)^(k+1) / k * (x-1)^k for k in 1:n])
    end

    plt = plot(
        x, log.(x),
        label="\$f(x) = \\ln x\$",
        dpi=300
    )

    for n in 1:2
        plot!(
            x, p.(x, n),
            label="\$p_$(n)(x)\$",
            ls=:dash
        )
    end

    vline!(
        [0.6],
        ls=:dot,
        label="\$x=0.6\$"
    )

    x0 = 0.6
    err = 0.1
    hline!(
        [log(x0) + err, log(x0) - err],
        ls=:dot,
        label="error bounds \$(\\pm $(err))\$"
    )

    scatter!(
        [x0],
        [log(x0)],
        ms=2,
        label="true value \$(-0.5108)\$"
    )

    scatter!(
        [x0],
        [p(x0, 2)],
        ms=2,
        label="approximation \$(-0.48)\$"
    )

    display("image/png", plt)
end

# taylor expansion is constant
begin
    x = -6:0.0001:6
    function p(x, n)
        sum([(-1)^(k+1) / k * (x-1)^k for k in 1:n])
    end

    y = x -> exp(-1/x^2)

    plt = plot(
        x, y.(x),
        label="\$f(x) = e^{-1/x^2} \\mathbb{1}\\{x \\neq 0\\}\$",
        dpi=300
    )

    plot!(
        x, (x -> 0).(x),
        ls=:dash,
        label="\$p_n(x) \\equiv 0\$"
    )

    display("image/png", plt)
end