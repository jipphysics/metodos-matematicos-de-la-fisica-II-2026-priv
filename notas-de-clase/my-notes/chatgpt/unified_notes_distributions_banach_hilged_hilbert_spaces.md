# Mathematical Methods of Physics
## Unified Notes on Distributions, Banach Spaces, Hilbert Spaces, and Rigged Hilbert Spaces

Juan I. Perotti

---

# Introduction

These notes introduce some of the central structures of modern functional analysis and mathematical physics. The presentation is organized around a guiding idea:

> infinite-dimensional analysis requires spaces that remain stable under limiting processes.

This idea naturally leads from:

- metric spaces,
- normed vector spaces,
- Banach spaces,
- inner product spaces,
- Hilbert spaces,
- distributions,
- and finally rigged Hilbert spaces.

The goal is not merely to define these structures independently, but to understand how they fit together conceptually.

Banach spaces provide stability under norm convergence.
Hilbert spaces additionally provide geometry through orthogonality.
Distribution theory enlarges the notion of function so that differentiation, Fourier analysis, and generalized eigenvectors become possible.
Rigged Hilbert spaces unify these viewpoints into a single framework.

---

# I. Metric Spaces

A metric space is a set \(X\) equipped with a distance function
\[
d:X\times X\to\mathbb R
\]
such that for all \(x,y,z\in X\):

1. \(d(x,y)\ge0\),
2. \(d(x,y)=0\iff x=y\),
3. \(d(x,y)=d(y,x)\),
4. \(d(x,z)\le d(x,y)+d(y,z)\).

The metric provides a notion of:

- convergence,
- continuity,
- neighborhood,
- approximation.

## Open Balls

Given \(x\in X\) and \(r>0\), define
\[
B_r(x)=\{y\in X:d(x,y)<r\}.
\]

## Convergence

A sequence \(x_n\in X\) converges to \(x\in X\) if:
\[
\forall\varepsilon>0,\ \exists N\in\mathbb N
\text{ such that }n\ge N\Rightarrow d(x_n,x)<\varepsilon.
\]

## Cauchy Sequences

A sequence \((x_n)\) is Cauchy if:
\[
\forall\varepsilon>0,\ \exists N\in\mathbb N
\text{ such that }m,n\ge N\Rightarrow d(x_n,x_m)<\varepsilon.
\]

Convergent sequences are always Cauchy. The converse is not always true.

## Complete Metric Spaces

A metric space is complete if every Cauchy sequence converges to a point in the space itself.

Completeness is essential because it guarantees that approximation procedures remain internally consistent.

---

# II. Normed Vector Spaces and Banach Spaces

A normed vector space is a vector space \(V\) equipped with a norm
\[
\|\cdot\|:V\to\mathbb R
\]
such that:

1. \(\|v+w\|\le \|v\|+\|w\|\),
2. \(\|\alpha v\|=|\alpha|\|v\|\),
3. \(\|v\|=0\iff v=0\).

The norm induces a metric:
\[
d(v,w)=\|v-w\|.
\]

Thus every normed vector space is automatically a metric space.

## Banach Spaces

A Banach space is a complete normed vector space.

This means that every norm-convergent approximation process remains inside the space.

Banach spaces are fundamental because many analytical constructions involve:

- infinite series,
- iterative approximations,
- limits of functions,
- operator limits.

Without completeness, such processes may converge to objects lying outside the original space.

## Example: The Space \(C[a,b]\)

The space of continuous functions
\[
C[a,b]
\]
with norm
\[
\|f\|_\infty=
\sup_{x\in[a,b]}|f(x)|
\]
is a Banach space.

Uniformly convergent sequences of continuous functions remain continuous.

## Example: The Spaces \(L^p\)

For \(1\le p<\infty\), define
\[
L^p(\Omega)=
\left\{f:\Omega\to\mathbb C:
\int_\Omega |f(x)|^pdx<\infty
\right\}.
\]

The norm is
\[
\|f\|_p=
\left(
\int_\Omega |f(x)|^pdx
\right)^{1/p}.
\]

These spaces are Banach spaces.

---

# III. Inner Product Spaces and Hilbert Spaces

An inner product space is a vector space \(H\) equipped with an inner product
\[
\langle\cdot,\cdot\rangle:H\times H\to\mathbb C
\]
satisfying:

1. linearity in one argument,
2. conjugate symmetry,
3. positive definiteness.

The induced norm is
\[
\|v\|=\sqrt{\langle v,v\rangle}.
\]

## Hilbert Spaces

A Hilbert space is a complete inner product space.

Hilbert spaces generalize Euclidean geometry to infinite dimensions.

Their key additional structure is orthogonality.

## Orthogonality

Two vectors are orthogonal if
\[
\langle u,v\rangle=0.
\]

## Orthonormal Systems

A family \(\{e_n\}\) is orthonormal if
\[
\langle e_n,e_m\rangle=\delta_{nm}.
\]

## Fourier Expansions

Given an orthonormal basis \(\{e_n\}\), vectors admit expansions
\[
v=\sum_{n=1}^\infty \langle e_n,v\rangle e_n.
\]

The coefficients
\[
\langle e_n,v\rangle
\]
are the Fourier coefficients.

Completeness guarantees convergence of these expansions inside the Hilbert space.

## Parseval Identity

If \(\{e_n\}\) is complete,
\[
\|v\|^2
=
\sum_{n=1}^\infty
|\langle e_n,v\rangle|^2.
\]

This generalizes the Pythagorean theorem.

---

# IV. Dual Spaces and the Riesz Representation Theorem

Let \(V\) be a normed vector space.

A bounded linear functional is a bounded linear map
\[
\varphi:V\to\mathbb C.
\]

The space of bounded linear functionals is called the dual space and is denoted by
\[
V^*.
\]

## The Riesz Representation Theorem

One of the most remarkable properties of Hilbert spaces is:

> Every bounded linear functional on a Hilbert space is obtained through the inner product with a unique vector.

More precisely, if \(H\) is a Hilbert space and
\[
\varphi\in H^*,
\]
then there exists a unique \(u\in H\) such that
\[
\varphi(v)=\langle u,v\rangle
\]
for all \(v\in H\).

Thus:
\[
H\cong H^*.
\]

This is sometimes called the musical isomorphism.

Hilbert spaces therefore identify vectors and continuous covectors.

---

# V. The Limits of Hilbert Spaces

Although Hilbert spaces are extremely rich, they are still insufficient for many problems in analysis and physics.

For example:

- the Dirac delta is not an \(L^2\)-function,
- plane waves \(e^{ikx}\) are not square integrable,
- generalized eigenvectors of differential operators often lie outside the Hilbert space.

Thus Hilbert spaces alone are not large enough to contain all physically and analytically relevant objects.

This motivates the introduction of distributions.

---

# VI. Test Functions and Distributions

## Compactly Supported Smooth Functions

Define
\[
C_c^\infty(\mathbb R^n)
\]
as the space of smooth compactly supported functions.

These are called test functions.

## Schwartz Space

The Schwartz space
\[
\mathcal S(\mathbb R^n)
\]
consists of smooth functions such that every derivative decays faster than every polynomial grows.

Explicitly,
\[
\sup_{x\in\mathbb R^n}
|x^\alpha \partial^\beta \phi(x)|<\infty
\]
for all multiindices \(\alpha,\beta\).

Schwartz functions are ideal for Fourier analysis.

---

# VII. Topologies on Spaces of Test Functions

The spaces
\[
C_c^\infty(\mathbb R^n)
\quad\text{and}\quad
\mathcal S(\mathbb R^n)
\]
carry topologies much stronger than ordinary norm topologies.

Convergence controls simultaneously:

- the functions,
- all derivatives,
- support behavior,
- decay behavior.

For Schwartz functions, convergence means:
\[
\sup_x
|x^\alpha \partial^\beta(\phi_n-\phi)|
\to0
\]
for every \(\alpha,\beta\).

These strong topologies are precisely what make distributions meaningful.

---

# VIII. Distributions

A distribution is a continuous linear functional on a test-function space.

For example,
\[
T:\mathcal S(\mathbb R^n)\to\mathbb C.
\]

Continuity is defined relative to the topology of the test-function space.

## Regular Distributions

Every sufficiently integrable function defines a distribution:
\[
T_f(\phi)=\int f(x)\phi(x)dx.
\]

Thus ordinary functions are embedded into distribution theory.

## The Dirac Delta

The Dirac delta is defined by
\[
\delta(\phi)=\phi(0).
\]

This is a distribution.

However, there exists no function
\[
f\in L^2(\mathbb R^n)
\]
such that
\[
\delta(\phi)=\int f(x)\phi(x)dx
\]
for every test function.

Thus:
\[
\delta\notin L^2.
\]

The delta is therefore a generalized vector rather than an ordinary Hilbert-space vector.

---

# IX. Why Distributions Are Needed

Distribution theory enlarges the notion of function so that:

- singular objects become meaningful,
- differentiation becomes universal,
- Fourier transforms become more flexible,
- generalized eigenvectors can be described rigorously.

For example:

- derivatives of discontinuous functions,
- Green functions,
- plane waves,
- delta functions,
- solutions of PDEs,

all fit naturally into the distributional framework.

---

# X. Rigged Hilbert Spaces

We now arrive at one of the central conceptual structures connecting Hilbert spaces and distributions.

A rigged Hilbert space (or Gelfand triple) is a triple
\[
\Phi\subset H\subset \Phi'.
\]

Here:

- \(\Phi\) is a space of very regular test vectors,
- \(H\) is a Hilbert space,
- \(\Phi'\) is the dual space of generalized vectors (distributions).

## Standard Example

The canonical example is
\[
\mathcal S(\mathbb R^n)
\subset
L^2(\mathbb R^n)
\subset
\mathcal S'(\mathbb R^n).
\]

Here:

- Schwartz functions are ordinary Hilbert vectors,
- but tempered distributions are generalized vectors.

## Why This Matters

The Riesz theorem identifies
\[
H\cong H^*.
\]

However, distributions belong not to \(H^*\), but to the much larger space \(\Phi'\).

Thus rigged Hilbert spaces explain why objects like:

- Dirac deltas,
- plane waves,
- generalized eigenvectors,

lie outside the Hilbert space while still acting meaningfully on sufficiently regular vectors.

---

# XI. Plane Waves and Generalized Eigenvectors

Consider the plane wave
\[
e^{ikx}.
\]

Since
\[
|e^{ikx}|=1,
\]
we have
\[
\int_{\mathbb R}|e^{ikx}|^2dx=\infty.
\]

Thus:
\[
e^{ikx}\notin L^2(\mathbb R).
\]

However, it defines a tempered distribution:
\[
\phi\mapsto
\int e^{ikx}\phi(x)dx.
\]

Thus:
\[
e^{ikx}\in \mathcal S'(\mathbb R).
\]

This explains why generalized eigenvectors of differential operators naturally belong to the distributional side of the rigged Hilbert space.

---

# XII. The Conceptual Role of Rigged Hilbert Spaces

Rigged Hilbert spaces unify:

- Hilbert-space geometry,
- generalized Fourier analysis,
- distribution theory,
- spectral theory,
- quantum mechanics.

Conceptually:

- \(\Phi\) contains very regular vectors,
- \(H\) contains ordinary finite-energy vectors,
- \(\Phi'\) contains generalized vectors.

This framework explains rigorously many symbolic constructions used in physics, such as:
\[
I=\int |x\rangle\langle x|dx,
\]
and
\[
\delta(x-y)=\sum_n e_n(x)\overline{e_n(y)}.
\]

These expressions are generally meaningful only in the distributional sense.

Rigged Hilbert spaces therefore provide the natural meeting point between:

- geometry,
- analysis,
- distributions,
- and generalized spectral decompositions.

---

# Final Remarks

Banach spaces guarantee the stability of limiting processes.
Hilbert spaces add orthogonality and geometric structure.
Distribution theory enlarges the notion of function.
Rigged Hilbert spaces organize all these ideas into a single coherent framework.

This hierarchy of spaces lies at the mathematical foundation of:

- Fourier analysis,
- PDEs,
- spectral theory,
- quantum mechanics,
- signal processing,
- and modern mathematical physics.

