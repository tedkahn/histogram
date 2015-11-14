### The Histogram Problem  

Histograms have been around for a long time, at least back to 1891 when the term was first used by Karl Pearson.^1 Its popularity is easy to see: Simple to compute and straight-forward to interpret.  

Nonetheless, it has one inherent flaw--histogram shapes can change depending on their bin-widths: Selecting wrong bin-widths can result in misleading interpretations. This is not the case with Kernel Density Functions.

Selecting too small bin-widths (slider at the left side)  results in very "noisy" histograms making it difficult to see the overall distribution.  

Conversely, large bin-widths (slider at the right side) can result in important distribution information being lost.  

The determination of a reasonable bin-width is not difficult or particularly time-consuming. And when only a few histograms are required it is often a sensible solution. There are, however, two common situations where the selection of bin-widths can pose problems.

**Comparing Multiple Histograms**  
When comparing multiple histograms, especially those having the same metric and scale, it is desirable that they have the same bin-widths. In this case, the analyst is faced with selecting a bin-width that is potentially a compromise among all the graphs.  

**Producing Many Histograms**  
With ever increasing amounts of data and programs that can easily produce scores and even hundreds of histograms quickly, even the relatively easy task of determining the correct bin-width for each histogram quickly becomes all but an impossible task.



### The Kernel Density Function
Relative to the histogram ,the Kernel Density Function (KDF) is new, dating in its current form from the 1950s.^2 However, unlike the histogram, the KDF is considerably more difficult to compute and so its application was not practical until recent years.  

The KDF mitigates the issues associated with the histogram discussed above. In its simplest form, the KDF can be thought of as defining the distribution of similarities of points around a given point. Notionally, this can be thought of as similar to a moving average. More formally, “it is a non-parametric way to estimate the probability density function of a random variable. Kernel density estimation is a fundamental data smoothing problem where inferences about the population are made, based on a finite data sample.^3 ”  
As with all smoothing algorithms, there needs to be a parameter that defines the degree-of-smoothness. For a moving average, this corresponds to the number of data points before and after the point being averaged. And, like the histogram bin-width, there is no correct number of data points that a moving average should be computed from. For KDFs, the smoothing parameter is referred to as the bandwidth; and as expected, performs an analogous function as the histogram bin-width.  
Unlike the histogram bin-width, however, which has no theoretical best value, it has been shown mathematically there is an optimal KDF bandwidth based on the empirical data’s variance and sample size. Thus, decisions regarding the selection of the appropriate bandwidth parameter are not required and so practitioners are assured that the computed bandwidth will always be appropriate for their data.  

The mathematics behind the KDF is complex and the few paragraphs above do not cover all the issues. Interested readers are encouraged to look the relevant Wikipedia reference given below.  

A more in-depth discussion of the KDF and its relationship to the histogram can be found at http://www.mvstat.net/tduong/research/seminars/seminar-2001-05### Summary  
In almost all cases where the histogram is produced for understanding the overall distribution of data, the KDF is preferable. While most statistical consumers are not familiar with this output, its interpretation is intuitive. This is especially true when both graphic outputs are produced, as this program does. In such situations, practitioners need not worry about bin-widths as the KDF communicates the correct information.
---
^1 https://en.wikipedia.org/wiki/Histogram  
^2,3 https://en.wikipedia.org/wiki/Kernel_density_estimation

