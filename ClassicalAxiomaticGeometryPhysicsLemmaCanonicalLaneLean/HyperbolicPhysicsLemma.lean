import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean

structure HyperbolicPhysicsLemmaPackage {G : AxiomaticGeometryPackage} (H : G.hyperbolicParallelPostulate) where
  geodesicDeviationNegative : Prop
  particleSeparationDivergent : Prop
  velocityCorrelationDecay : Prop
  massDensityUpperBound : Prop

structure HyperbolicPhysicsLemmaEvidence {G : AxiomaticGeometryPackage} {H : G.hyperbolicParallelPostulate}
    (P : HyperbolicPhysicsLemmaPackage H) where
  geodesicDeviationNegativeClosed : P.geodesicDeviationNegative
  particleSeparationDivergentClosed : P.particleSeparationDivergent
  velocityCorrelationDecayClosed : P.velocityCorrelationDecay
  massDensityUpperBoundClosed : P.massDensityUpperBound

def HyperbolicPhysicsLemmaClosed {G : AxiomaticGeometryPackage} {H : G.hyperbolicParallelPostulate}
    (P : HyperbolicPhysicsLemmaPackage H) : Prop :=
  P.geodesicDeviationNegative ∧ P.particleSeparationDivergent ∧
  P.velocityCorrelationDecay ∧ P.massDensityUpperBound

theorem hyperbolic_physics_lemma_closed_from_evidence {G : AxiomaticGeometryPackage} {H : G.hyperbolicParallelPostulate}
    (P : HyperbolicPhysicsLemmaPackage H) (E : HyperbolicPhysicsLemmaEvidence P) :
    HyperbolicPhysicsLemmaClosed P := by
  exact And.intro E.geodesicDeviationNegativeClosed
    (And.intro E.particleSeparationDivergentClosed
      (And.intro E.velocityCorrelationDecayClosed E.massDensityUpperBoundClosed))

end ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean
end HautevilleHouse