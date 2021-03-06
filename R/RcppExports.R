# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#' @title Pairwise Partition Similarity Scores
#'
#' @description
#' Let \code{x} and \code{y} represent two partitions of a set of \eqn{n}
#' elements into, respectively, \eqn{K} and \eqn{L}
#' nonempty and pairwise disjoint subsets.
#' For instance, these can be two clusterings of a dataset with
#' \eqn{n} observations specified by two vectors of labels.
#' The functions described in this section quantify the similarity between
#' \code{x} and \code{y}. They can be used as external cluster
#' validity measures, i.e., in the presence of reference (ground-truth)
#' partitions.
#'
#' @details
#' Every index except \code{mi_score()} (which computes the mutual
#' information score) outputs 1 given two identical partitions.
#' Note that partitions are always defined up to a bijection of the set of
#' possible labels, e.g., (1, 1, 2, 1) and (4, 4, 2, 4)
#' represent the same 2-partition.
#'
#' \code{rand_score()} gives the Rand score (the "probability" of agreement
#' between the two partitions) and
#' \code{adjusted_rand_score()} is its version corrected for chance,
#' see (Hubert, Arabie, 1985),
#' its expected value is 0.0 given two independent partitions.
#' Due to the adjustment, the resulting index might also be negative
#' for some inputs.
#'
#' Similarly, \code{fm_score()} gives the Fowlkes-Mallows (FM) score
#' and \code{adjusted_fm_score()} is its adjusted-for-chance version,
#' see (Hubert, Arabie, 1985).
#'
#' Note that both the (unadjusted) Rand and FM scores are bounded from below
#' by \eqn{1/(K+1)} if \eqn{K=L}, hence their adjusted versions are preferred.
#'
#' \code{mi_score()}, \code{adjusted_mi_score()} and
#' \code{normalized_mi_score()} are information-theoretic
#' scores, based on mutual information,
#' see the definition of \eqn{AMI_{sum}} and \eqn{NMI_{sum}}
#' in (Vinh et al., 2010).
#'
#' \code{normalized_accuracy()} is defined as
#' \eqn{(Accuracy(C_\sigma)-1/L)/(1-1/L)}, where \eqn{C_\sigma} is a version
#' of the confusion matrix for given \code{x} and \code{y},
#' \eqn{K \leq L}, with columns permuted based on the solution to the
#' Maximal Linear Sum Assignment Problem.
#' \eqn{Accuracy(C_\sigma)} is sometimes referred to as Purity,
#' e.g., in (Rendon et al. 2011).
#'
#' \code{pair_sets_index()} gives the  Pair Sets Index (PSI)
#' adjusted for chance (Rezaei, Franti, 2016), \eqn{K \leq L}.
#' Pairing is based on the solution to the Linear Sum Assignment Problem
#' of a transformed version of the confusion matrix.
#'
#' @references
#' Hubert L., Arabie P., Comparing Partitions,
#' Journal of Classification 2(1), 1985, 193-218, esp. Eqs. (2) and (4).
#'
#' Rendon E., Abundez I., Arizmendi A., Quiroz E.M.,
#' Internal versus external cluster validation indexes,
#' International Journal of Computers and Communications 5(1), 2011, 27-34.
#'
#' Rezaei M., Franti P., Set matching measures for external cluster validity,
#' IEEE Transactions on Knowledge and Data Mining 28(8), 2016, 2173-2186.
#'
#' Vinh N.X., Epps J., Bailey J.,
#' Information theoretic measures for clusterings comparison:
#' Variants, properties, normalization and correction for chance,
#' Journal of Machine Learning Research 11, 2010, 2837-2854.
#'
#'
#' @param x an integer vector of length n (or an object coercible to)
#' representing a K-partition of an n-set,
#' or a confusion matrix with K rows and L columns (see \code{table(x, y)})
#'
#' @param y an integer vector of length n (or an object coercible to)
#' representing an L-partition of the same set),
#' or NULL (if x is an K*L confusion matrix)
#'
#' @return A single real value giving the similarity score.
#'
#' @examples
#' y_true <- iris[[5]]
#' y_pred <- kmeans(as.matrix(iris[1:4]), 3)$cluster
#' adjusted_rand_score(y_true, y_pred)
#' rand_score(table(y_true, y_pred)) # the same
#' adjusted_fm_score(y_true, y_pred)
#' fm_score(y_true, y_pred)
#' mi_score(y_true, y_pred)
#' normalized_mi_score(y_true, y_pred)
#' adjusted_mi_score(y_true, y_pred)
#' normalized_accuracy(y_true, y_pred)
#' pair_sets_index(y_true, y_pred)
#'
#' @rdname comparing_partitions
#' @export
adjusted_rand_score <- function(x, y = NULL) {
    .Call(`_genieclust_adjusted_rand_score`, x, y)
}

#' @rdname comparing_partitions
#' @export
rand_score <- function(x, y = NULL) {
    .Call(`_genieclust_rand_score`, x, y)
}

#' @rdname comparing_partitions
#' @export
adjusted_fm_score <- function(x, y = NULL) {
    .Call(`_genieclust_adjusted_fm_score`, x, y)
}

#' @rdname comparing_partitions
#' @export
fm_score <- function(x, y = NULL) {
    .Call(`_genieclust_fm_score`, x, y)
}

#' @rdname comparing_partitions
#' @export
mi_score <- function(x, y = NULL) {
    .Call(`_genieclust_mi_score`, x, y)
}

#' @rdname comparing_partitions
#' @export
normalized_mi_score <- function(x, y = NULL) {
    .Call(`_genieclust_normalized_mi_score`, x, y)
}

#' @rdname comparing_partitions
#' @export
adjusted_mi_score <- function(x, y = NULL) {
    .Call(`_genieclust_adjusted_mi_score`, x, y)
}

#' @rdname comparing_partitions
#' @export
normalized_accuracy <- function(x, y = NULL) {
    .Call(`_genieclust_normalized_accuracy`, x, y)
}

#' @rdname comparing_partitions
#' @export
pair_sets_index <- function(x, y = NULL) {
    .Call(`_genieclust_pair_sets_index`, x, y)
}

.mst.default <- function(X, distance = "euclidean", M = 1L, cast_float32 = TRUE, verbose = FALSE) {
    .Call(`_genieclust_dot_mst_default`, X, distance, M, cast_float32, verbose)
}

.mst.dist <- function(d, M = 1L, verbose = FALSE) {
    .Call(`_genieclust_dot_mst_dist`, d, M, verbose)
}

.genie <- function(mst, k, gini_threshold, postprocess, detect_noise, verbose) {
    .Call(`_genieclust_dot_genie`, mst, k, gini_threshold, postprocess, detect_noise, verbose)
}

.gclust <- function(mst, gini_threshold, verbose) {
    .Call(`_genieclust_dot_gclust`, mst, gini_threshold, verbose)
}

#' @title Inequity (Inequality) Measures
#'
#' @description
#' \code{gini_index()} gives the normalised Gini index
#' and \code{bonferroni_index()} implements the Bonferroni index.
#'
#' @details
#' Both indices can be used to quantify the "inequity" of a numeric sample.
#' They can be perceived as measures of data dispersion.
#' For constant vectors (perfect equity), the indices yield values of 0.
#' Vectors with all elements but one equal to 0 (perfect inequity),
#' are assigned scores of 1.
#' Both indices follow the Pigou-Dalton principle (are Schur-convex):
#' setting \eqn{x_i = x_i - h} and \eqn{x_j = x_j + h} with \eqn{h > 0}
#' and \eqn{x_i - h \geq  x_j + h} (taking from the "rich" and
#' giving to the "poor") decreases the inequity.
#'
#' These indices have applications in economics, amongst others.
#' The Gini clustering algorithm uses the Gini index as a measure
#' of the inequality of cluster sizes.
#'
#'
#' The normalised  Gini index is given by:
#' \deqn{
#'     G(x_1,\dots,x_n) = \frac{
#'     \sum_{i=1}^{n-1} \sum_{j=i+1}^n |x_i-x_j|
#'     }{
#'     (n-1) \sum_{i=1}^n x_i
#'     }.
#' }
#'
#' The normalised Bonferroni index is given by:
#' \deqn{
#'     B(x_1,\dots,x_n) = \frac{
#'     \sum_{i=1}^{n}  (n-\sum_{j=1}^i \frac{n}{n-j+1})
#'          x_{\sigma(n-i+1)}
#'     }{
#'     (n-1) \sum_{i=1}^n x_i
#'     }.
#' }
#'
#'
#' Time complexity: \eqn{O(n)} for sorted (increasingly) data.
#' Otherwise, the vector will be sorted.
#'
#' In particular, for ordered inputs, it holds:
#' \deqn{
#'     G(x_1,\dots,x_n) = \frac{
#'     \sum_{i=1}^{n} (n-2i+1) x_{\sigma(n-i+1)}
#'     }{
#'     (n-1) \sum_{i=1}^n x_i
#'     },
#' }
#' where \eqn{\sigma} is an ordering permutation of \eqn{(x_1,\dots,x_n)}.
#'
#'
#' @references
#' Bonferroni C., Elementi di Statistica Generale, Libreria Seber,
#' Firenze, 1930.
#'
#' Gagolewski M., Bartoszuk M., Cena A., Genie: A new, fast, and
#' outlier-resistant hierarchical clustering algorithm,
#' Information Sciences 363, 2016, pp. 8-23. doi:10.1016/j.ins.2016.05.003
#'
#' Gini C., Variabilita e Mutabilita, Tipografia di Paolo Cuppini, Bologna, 1912.
#'
#'
#' @param x numeric vector of non-negative values
#'
#' @return The value of the inequity index, a number in \eqn{[0, 1]}.
#'
#' @examples
#' gini_index(c(2, 2, 2, 2, 2))  # no inequality
#' gini_index(c(0, 0, 10, 0, 0)) # one has it all
#' gini_index(c(7, 0, 3, 0, 0))  # give to the poor, take away from the rich
#' gini_index(c(6, 0, 3, 1, 0))  # (a.k.a. Pigou-Dalton principle)
#' bonferroni_index(c(2, 2, 2, 2, 2))
#' bonferroni_index(c(0, 0, 10, 0, 0))
#' bonferroni_index(c(7, 0, 3, 0, 0))
#' bonferroni_index(c(6, 0, 3, 1, 0))
#'
#' @rdname inequity
#' @export
gini_index <- function(x) {
    .Call(`_genieclust_gini_index`, x)
}

#' @rdname inequity
#' @export
bonferroni_index <- function(x) {
    .Call(`_genieclust_bonferroni_index`, x)
}

