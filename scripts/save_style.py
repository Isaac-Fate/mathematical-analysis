from pathlib import Path
import matplotlib as mpl
import seaborn as sns


def save_seaborn_style():
    # Set seaborn theme
    sns.set_theme()

    # Get current style parameters
    style_dict = mpl.rcParams.copy()

    # Create style directory if it doesn't exist
    # style_dir = Path.home() / ".config" / "matplotlib" / "stylelib"
    style_dir = Path.cwd() / "styles"
    style_dir.mkdir(parents=True, exist_ok=True)

    # Save style to file
    style_file = style_dir / "seaborn-v0_8.mplstyle"

    with open(style_file, "w") as f:
        for key, value in style_dict.items():
            if isinstance(value, str):
                value_str = value
            elif isinstance(value, (list, tuple)):
                value_str = ", ".join(str(v) for v in value)
            else:
                value_str = str(value)

            f.write(f"{key} : {value_str}\n")

    print(f"Style saved to {style_file}")


if __name__ == "__main__":
    save_seaborn_style()
