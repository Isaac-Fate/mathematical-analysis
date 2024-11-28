begin
    using Plots
    using LaTeXStrings
    using MathPlot

    figures_dir = joinpath(pwd(), "tex/figures")
end





begin
    x = 0:0.1:1

    plot()
    jump!(0.5, 0, 1, color=palette(:default)[4])


end



# First mean value theorem
begin
    f = x -> -x^2 + 2x + 3

    x = 0:0.01:3
    y = f.(x)

    p = plot(dpi=200)

    plot!(x, y, label=L"f(x)")
    areaplot!(x, y, color=palette(:default)[1], alpha=0.3, label=nothing)

    luhline!(3, 0, 3, color=palette(:default)[2], label=L"y = 3 = f(0) = f(2)")
    areaplot!([0, 3], [3, 3], color=palette(:default)[2], alpha=0.3, label=nothing)


    savefig(joinpath(figures_dir, "mean-value-theorem-for-riemann-stieltjes-integrals-first-mean-value-theorem.png"),)

    p
end

# Second mean value theorem
begin
    f = x -> 2 - cos(x)
    x = 0:0.01:pi
    y = f.(x)

    p = plot(dpi=200)
    plot!(x, y, label=L"f(x) = 2 - \cos(x)")
    areaplot!(x, y, color=palette(:default)[1], alpha=0.3, label=nothing)
    xticks!(0:pi/2:pi, [L"0", L"\frac{\pi}{2}", L"\pi"])

    areaplot!([0, pi / 2], [1, 1], color=palette(:default)[2], alpha=0.3, label=L"f(0) (\pi/2 - 0)")

    areaplot!([pi / 2, pi], [3, 3], color=palette(:default)[3], alpha=0.3, label=L"f(\pi) (\pi - \pi/2)")

    savefig(joinpath(figures_dir, "mean-value-theorem-for-riemann-stieltjes-integrals-second-mean-value-theorem.png"),)

    p
end
