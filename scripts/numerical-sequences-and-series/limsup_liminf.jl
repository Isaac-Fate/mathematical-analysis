using Plots, LaTeXStrings

begin

    f(n) = (1 + 10/n) * sin(n * pi / 32)

    plt = plot(
        legend=:best,
        dpi=300
    )

    n = 500
    ns = 1:n
    scatter!(
        ns, f.(ns),
        ms=2,
        label="\$\\{a_n\\}\$"
    )

    Ns = 1:5000

    u = zeros(n)
    for i = 1:n
        u[i] = maximum(f, Ns[i:end])
    end

    l = zeros(n)
    for i = 1:n
        l[i] = minimum(f, Ns[i:end])
    end

    scatter!(
        ns, u,
        ms=1,
        msw=0,
        label="\$\\{u_n\\} = \\{\\sup_{m \\geq n} a_m\\}\$"
    )
    

    scatter!(
        ns, l,
        ms=1,
        msw=0,
        label="\$\\{l_n\\} = \\{\\inf_{m \\geq n} a_m\\}\$"
    )

    hline!(
        [1],
        label="\$\\limsup_{n \\to \\infty} a_n = 1\$",
        ls=:dash,
        lc=palette(:default)[2]
    )

    hline!(
        [-1],
        label="\$\\liminf_{n \\to \\infty} a_n = -1\$",
        ls=:dash,
        lc=palette(:default)[3]
    )

    ylims!(-1.3, 2)


    display("image/png", plt)
end