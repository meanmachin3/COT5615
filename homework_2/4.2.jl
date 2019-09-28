

include("wikipedia_corpus.jl")
include("kmeans.jl")
using Kmeans
using PyPlot



# For k = 2
centroids, labels, j_hist = Kmeans.kmeans(article_histograms, 2)
plot(j_hist)
centroids, labels, j_hist_2 = Kmeans.kmeans(article_histograms, 2)
plot(j_hist_2)
println(article_titles[labels .== 1])
println("===========================")
println("Top 3 words")
top_3 = dictionary[sortperm(centroids[1],rev=true)][1:3]
println(top_3)
println("===========================")
println(article_titles[labels .== 2])
println("===========================")
println("Top 3 words")
top_3 = dictionary[sortperm(centroids[2],rev=true)][1:3]
println(top_3)

# For k = 5
centroids, labels, j_hist = Kmeans.kmeans(article_histograms, 5)
centroids, labels, j_hist_2 = Kmeans.kmeans(article_histograms, 5)
plot(j_hist)
plot(j_hist_2)
println(article_titles[labels .== 1])
println("===========================")
println("Top 3 words")
top_3 = dictionary[sortperm(centroids[1],rev=true)][1:3]
println(top_3)
println("===========================")
println(article_titles[labels .== 2])
println("===========================")
println("Top 3 words")
top_3 = dictionary[sortperm(centroids[2],rev=true)][1:3]
println(top_3)
println("===========================")
println(article_titles[labels .== 3])
println("===========================")
println("Top 3 words")
top_3 = dictionary[sortperm(centroids[3],rev=true)][1:3]
println(top_3)
println("===========================")
println(article_titles[labels .== 4])
println("===========================")
println("Top 3 words")
top_3 = dictionary[sortperm(centroids[4],rev=true)][1:3]
println(top_3)
println("===========================")
println(article_titles[labels .== 5])
println("===========================")
println("Top 3 words")
top_3 = dictionary[sortperm(centroids[5],rev=true)][1:3]
println(top_3)

# For k = 10
centroids, labels, j_hist = Kmeans.kmeans(article_histograms, 10)
centroids, labels, j_hist_2 = Kmeans.kmeans(article_histograms, 10)
println(article_titles[labels .== 1])
println("===========================")
println(article_titles[labels .== 2])
println("===========================")
println(article_titles[labels .== 3])
println("===========================")
println(article_titles[labels .== 4])
println("===========================")
println(article_titles[labels .== 5])
println("===========================")
println(article_titles[labels .== 6])
println("===========================")
println(article_titles[labels .== 7])
println("===========================")
println(article_titles[labels .== 8])
println("===========================")
println(article_titles[labels .== 9])
println("===========================")
println(article_titles[labels .== 10])
plot(j_hist)
plot(j_hist_2)

#=
4.2 a)
 In each iteration (X-Axis), the value of j(Y-Axis) keep decreasing, it each iteration it keeps getting better
unless the difference between each iteration does not change. The fact that j keeps decreasing denotes that
KMeans is converging in a finite number of steps. 

Based on different number of runs, the graph can vary as the initial centroid is chosen randomly and might
take different number for convergence
=#

#= 
4.2 b)
For k=2, the grouping is under clustered, as one may find articles from multiple topic under one cluter.
For example:
In above run for k = 2, `World Trade Organization`, `Digital signal` and `Monsoon are classified under one
single category which could be further classified to achieve a much granular cluster.

k=5 is perfectly clustered, upon inspection it is clear that article are classified into following categories
i) Organistaion and Unions
ii) Arts and Painting
iii) Weather and tools related to weather
iv) Signals
v) Pokemon

Therefore, k = 5 is the perfect for clustering the given set of articles. It can be also verified that corpus
was picked from set of 5 articles hence clustering into group of 5 is perfect.

k=10 is the case of over clustering/categorization, topics such as Pokemon (in k = 5) is further broken down
into multiple groups. This is not the most optimal solution.

Based on the observation of above data, it is clear that k = 5.
=#
