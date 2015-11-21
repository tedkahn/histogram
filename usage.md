### Exploring The Dataset 

The dataset^1 consists of the number of at-bats for each player (obs= 438) having at least 100 at-bats for the 2002 American Major League baseball season.  

The number of at-bats range from 101 to 696 with a mean and median of 347 and 338.  

This dataset illustrates how, depending on its bin-width,^2 the histogram can be misleading in showing the true underlying distribution: whereas, the Kernel Density Function communicates this information without having to specify a parameter.  

In this case, selecting bin-widths of 170, 80 and 50 leads viewers to likely interpret the distributions as Normal, Uniform and Bimodal, respectively.  

Bin-widths less than 50 show the Bimodal nature of the distribution, but with increasing noise making the histogram harder to read.  


---
^1 http://www.inside-r.org/packages/cran/UsingR/docs/batting  
^2 Number of at-bats represented by each bin.
