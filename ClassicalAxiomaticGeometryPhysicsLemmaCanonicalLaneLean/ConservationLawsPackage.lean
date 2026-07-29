import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean

structure ConservationLawsPackage where
  energy : Prop
  momentum : Prop
  angularMomentum : Prop
  energyTerm : energy
  momentumTerm : momentum
  angularMomentumTerm : angularMomentum

def ConservationLawsClosed (C : ConservationLawsPackage) : Prop :=
  C.energy ∧ C.momentum ∧ C.angularMomentum

theorem conservation_laws_closed_from_package (C : ConservationLawsPackage) : ConservationLawsClosed C :=
  And.intro C.energyTerm (And.intro C.momentumTerm C.angularMomentumTerm)

end ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean
end HautevilleHouse