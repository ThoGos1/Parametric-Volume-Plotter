# Parametric-Volume-Plotter
This is a repository of different methods of plotting parametric volumes. It's practically a "How to plot parametric volumes", as it seems impossible to find anywhere else on the internet.

### Method 1: Python and Jupyter Notebook
I have made two files, one normal Python file and one in a Jupyter Notebook, where all you have to do it to change the volume parameterization and it's u, v, and w intervals.
This method uses two packages: Sympy and [dtumathtools](https://pypi.org/project/dtumathtools/).
While the second package (dtumathtools) isn't as common as let's say Matplotlib and Numpy, it uses Matplotlib under the hood to make the plots, so they can easily work together. This package was developed by the Technical University of Denmark, for a math course, but can be used by anyone. I prefer it when plotting using Python, rather than the parametric plotting in Matplotlib.

### Method 2: Maple
For mathematicians and students alike Maple is the prefered software for math and plotting (personal favorite here too).
So I have made maple document file (can be turned into a worksheet if that's prefered), where again like in Python, you just need to change the volume parameterization and it's u, v, and w intervals.

### Method 3: Matlab:
Although I'm not the biggest fan of Matlab and it's plotting features, I have attempted to make a script that can plot a volume, in a similar way to the others.
However, as I'm not proficient in Matlab, the script doesn't work for certain complex volume parameterizations.
If anyone with more experience knows how to optimize the programming, that would be appreciated.

#### Final Thoughts:
I hope this helps anyone, that like me, has been unable to find anything about plotting volumes in any program. There are no functions/packages/modules etc. that I know of at least, that can plot volumes, so I decided to make them myself.
Neither method is particularly difficult to replicate, but they can take any parameterization and work with it, so it just streamlines the process for everyone.
