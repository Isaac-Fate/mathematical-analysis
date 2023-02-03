using PlotlyJS

begin

    f(n) = (1 + 10/n) * sin(n * pi / 32)

    plt = plot(
        rand(10, 4),
        size=(1200,800)
    )

 




    display("image/png", plt)
end