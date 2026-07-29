import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean

structure PhysicsLemmaClassificationPackage {G : AxiomaticGeometryPackage}
    (Euc : EuclideanPhysicsLemmaPackage (by
      have : G.euclideanParallelPostulate := G.euclideanParallelPostulate
      exact this))
    (Hyp : HyperbolicPhysicsLemmaPackage (by
      have : G.hyperbolicParallelPostulate := G.hyperbolicParallelPostulate
      exact this))
    (Ell : EllipticPhysicsLemmaPackage (by
      have : G.ellipticParallelPostulate := G.ellipticParallelPostulate
      exact this)) where
  euclideanLemmaClosed : EuclideanPhysicsLemmaClosed Euc
  hyperbolicLemmaClosed : HyperbolicPhysicsLemmaClosed Hyp
  ellipticLemmaClosed : EllipticPhysicsLemmaClosed Ell
  lemmaMutuallyExclusive : ¬ (G.euclideanParallelPostulate ∧ G.hyperbolicParallelPostulate) ∧
                           ¬ (G.euclideanParallelPostulate ∧ G.ellipticParallelPostulate) ∧
                           ¬ (G.hyperbolicParallelPostulate ∧ G.ellipticParallelPostulate)

structure PhysicsLemmaClassificationEvidence {G : AxiomaticGeometryPackage}
    {Euc : EuclideanPhysicsLemmaPackage (by
      have : G.euclideanParallelPostulate := G.euclideanParallelPostulate
      exact this)}
    {Hyp : HyperbolicPhysicsLemmaPackage (by
      have : G.hyperbolicParallelPostulate := G.hyperbolicParallelPostulate
      exact this)}
    {Ell : EllipticPhysicsLemmaPackage (by
      have : G.ellipticParallelPostulate := G.ellipticParallelPostulate
      exact this)}
    (C : PhysicsLemmaClassificationPackage Euc Hyp Ell) where
  euclideanLemmaClosed : C.euclideanLemmaClosed
  hyperbolicLemmaClosed : C.hyperbolicLemmaClosed
  ellipticLemmaClosed : C.ellipticLemmaClosed
  lemmaMutuallyExclusive : C.lemmaMutuallyExclusive

def PhysicsLemmaClassificationClosed {G : AxiomaticGeometryPackage}
    {Euc : EuclideanPhysicsLemmaPackage (by
      have : G.euclideanParallelPostulate := G.euclideanParallelPostulate
      exact this)}
    {Hyp : HyperbolicPhysicsLemmaPackage (by
      have : G.hyperbolicParallelPostulate := G.hyperbolicParallelPostulate
      exact this)}
    {Ell : EllipticPhysicsLemmaPackage (by
      have : G.ellipticParallelPostulate := G.ellipticParallelPostulate
      exact this)}
    (C : PhysicsLemmaClassificationPackage Euc Hyp Ell) : Prop :=
  C.euclideanLemmaClosed ∧ C.hyperbolicLemmaClosed ∧ C.ellipticLemmaClosed ∧ C.lemmaMutuallyExclusive

theorem physics_lemma_classification_closed_from_evidence {G : AxiomaticGeometryPackage}
    {Euc : EuclideanPhysicsLemmaPackage (by
      have : G.euclideanParallelPostulate := G.euclideanParallelPostulate
      exact this)}
    {Hyp : HyperbolicPhysicsLemmaPackage (by
      have : G.hyperbolicParallelPostulate := G.hyperbolicParallelPostulate
      exact this)}
    {Ell : EllipticPhysicsLemmaPackage (by
      have : G.ellipticParallelPostulate := G.ellipticParallelPostulate
      exact this)}
    (C : PhysicsLemmaClassificationPackage Euc Hyp Ell) (E : PhysicsLemmaClassificationEvidence C) :
    PhysicsLemmaClassificationClosed C := by
  exact And.intro E.euclideanLemmaClosed
    (And.intro E.hyperbolicLemmaClosed
      (And.intro E.ellipticLemmaClosed E.lemmaMutuallyExclusive))

end ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean
end HautevilleHouse