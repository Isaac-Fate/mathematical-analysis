import matplotlib.pyplot as plt

def config_plt():
    
    # text
    plt.rc("text", usetex=True)
    
    # text font
    font = {
        "family": "serif",
        "weight": "bold",
        "size": 12
    }
    plt.rc("font", **font)
    
    # axes
    plt.rc(
        "axes", 
        grid=True,
    )
    
    # grid
    plt.rc(
        "grid", 
        alpha=0.3, 
    )