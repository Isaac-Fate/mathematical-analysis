import matplotlib.pyplot as plt

def config_plt():
    
    # text
    plt.rc("text", usetex=True)
    
    # text font
    font = {
        "family": "serif",
        "weight": "bold",
        "size": 16
    }
    plt.rc("font", **font)