import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean

structure EuclideanPhysicsLemmaPackage {G : AxiomaticGeometryPackage} (H : G.euclideanParallelPostulate) where
  inertialFrameDefined : Prop
  galileanRelativityPrinciple : Prop
  freeParticleMotionLinear : Prop
  conservationOfMomentum : Prop
  conservationOfEnergy : Prop

structure EuclideanPhysicsLemmaEvidence {G : AxiomaticGeometryPackage} {H : G.euclideanParallelPostulate}
    (P : EuclideanPhysicsLemmaPackage H) where
  inertialFrameDefinedClosed : P.inertialFrameDefined
  galileanRelativityPrincipleClosed : P.galileanRelativityPrinciple
  freeParticleMotionLinearClosed : P.freeParticleMotionLinear
  conservationOfMomentumClosed : P.conservationOfMomentum
  conservationOfEnergyClosed : P.conservationOfEnergy

def EuclideanPhysicsLemmaClosed {G : AxiomaticGeometryPackage} {H : G.euclideanParallelPostulate}
    (P : EuclideanPhysicsLemmaPackage H) : Prop :=
  P.inertialFrameDefined ∧ P.galileanRelativityPrinciple ∧ P.freeParticleMotionLinear ∧
  P.conservationOfMomentum ∧ P.conservationOfEnergy

theorem euclidean_physics_lemma_closed_from_evidence {G : AxiomaticGeometryPackage} {H : G.euclideanParallelPostulate}
    (P : EuclideanPhysicsLemmaPackage H) (E : EuclideanPhysicsLemmaEvidence P) :
    EuclideanPhysicsLemmaClosed P := by
  exact And.intro E.inertialFrameDefinedClosed
    (And.intro E.galileanRelativityPrincipleClosed
      (And.intro E.freeParticleMotionLinearClosed
        (And.intro E.conservationOfMomentumClosed E.conservationOfEnergyClosed)))

end ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean
end HautevilleHouse