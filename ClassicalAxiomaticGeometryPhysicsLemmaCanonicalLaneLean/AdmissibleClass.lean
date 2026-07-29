import HautevilleHouse.ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : ClassicalAxiomaticGeometryPhysicsLemmaAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ClassicalAxiomaticGeometryPhysicsLemmaWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean
end HautevilleHouse