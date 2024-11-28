begin
    using Plots
    using LaTeXStrings
    using MathPlot

    figures_dir = joinpath(pwd(), "tex/figures")
end


# Total variation
begin

    plot1 = plot(aspect_ratio=1)

    color = palette(:default)[1]

    f = x -> 1 - x
    x = 0:0.1:1
    y = f.(x)

    plot!(x, y, color=color, label=L"???")

    f = x -> -x
    x = 1:0.1:2
    y = f.(x)

    plot!(x, y, color=color, label=nothing)

    jump!(1, -1, 0, color=color, label=nothing)


    plot2 = plot(aspect_ratio=1)

    color = palette(:default)[2]

    f = x -> 1 - x
    x = 0:0.1:1
    y = f.(x)

    plot!(x, y, color=color, label=L"???")

    f = x -> -x
    x = 1:0.1:2
    y = f.(x)

    plot!(x, y, color=color, label=nothing)

    jump!(1, -1, 0, color=color, label=nothing)

    plot(plot1, plot2)

end

begin

    f = x -> -x * (x - 1) * (x - 2)
    x = 0:0.01:2
    y = f.(x)

    x0 = 1 + sqrt(2) / 3

    plot(x, y)

end

begin
    p = plot()
    current()
end

begin
    p = plot([1, 1], [1, 2])

    T = typeof(p)
    for (name, typ) in zip(fieldnames(T), T.types)
        println("type of the fieldname $name is $typ")
    end



    s = p.series_list[1]
end