import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean

structure EllipticPhysicsLemmaPackage {G : AxiomaticGeometryPackage} (H : G.ellipticParallelPostulate) where
  geodesicDeviationPositive : Prop
  particleConvergenceFinite : Prop
  closedTimelikeCurves : Prop
  cosmologicalConstantPositive : Prop

structure EllipticPhysicsLemmaEvidence {G : AxiomaticGeometryPackage} {H : G.ellipticParallelPostulate}
    (P : EllipticPhysicsLemmaPackage H) where
  geodesicDeviationPositiveClosed : P.geodesicDeviationPositive
  particleConvergenceFiniteClosed : P.particleConvergenceFinite
  closedTimelikeCurvesClosed : P.closedTimelikeCurves
  cosmologicalConstantPositiveClosed : P.cosmologicalConstantPositive

def EllipticPhysicsLemmaClosed {G : AxiomaticGeometryPackage} {H : G.ellipticParallelPostulate}
    (P : EllipticPhysicsLemmaPackage H) : Prop :=
  P.geodesicDeviationPositive ∧ P.particleConvergenceFinite ∧
  P.closedTimelikeCurves ∧ P.cosmologicalConstantPositive

theorem elliptic_physics_lemma_closed_from_evidence {G : AxiomaticGeometryPackage} {H : G.ellipticParallelPostulate}
    (P : EllipticPhysicsLemmaPackage H) (E : EllipticPhysicsLemmaEvidence P) :
    EllipticPhysicsLemmaClosed P := by
  exact And.intro E.geodesicDeviationPositiveClosed
    (And.intro E.particleConvergenceFiniteClosed
      (And.intro E.closedTimelikeCurvesClosed E.cosmologicalConstantPositiveClosed))

end ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean
end HautevilleHouse