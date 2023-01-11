using Plots, LaTeXStrings

function cantor(x, n)

    @assert x >= 0 && x <= 1
    @assert isa(n, Int) && n >= 0

    if n == 0
        return x
    end

    if x <= 1/3
        return 0.5 * cantor(3 * x, n - 1)
    elseif x < 2/3
        return 0.5
    else 
        return 0.5 * cantor(3 * x - 2, n - 1) + 0.5
    end
    
end

function extended_cantor(x, n)

    @assert x >= -1 && x <= 1
    @assert isa(n, Int) && n >= 0

    if x >= 0 
        return cantor(x, n)
    else 
        return -cantor(-x, n)
    end

end

begin
    x = 0:0.001:1
    plot()
    xticks!(
        0:1/3^2:1,
        [
            "0", "1/9", "2/9", 
            "1/3", "4/9", "5/9",
            "2/3", "7/9", "8/9", "1"
        ]
    )
    yticks!(
        0:1/2^2:1,
        [
            "0", "1/4", "1/2", "3/4", "1"
        ]
    )
    for n in 0:4
        plot!(x, cantor.(x, n), label="\$c_$(n)(x)\$")
    end 
    plot!()
end

begin
    x = -1:0.0001:1
    plot()
    for n in 0:4
        plot!(x, extended_cantor.(x, n), label="\$\\tilde{c}_$(n)(x)\$")
    end 
    plot!()
end