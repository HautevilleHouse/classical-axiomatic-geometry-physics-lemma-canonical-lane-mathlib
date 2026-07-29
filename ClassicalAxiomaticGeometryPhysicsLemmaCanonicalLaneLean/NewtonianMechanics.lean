import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean

structure NewtonianMechanicsPackage where
  mass : Type u → ℝ
  force : Type u → Type u → ℝ
  acceleration : Type u → ℝ
  firstLaw : Prop
  secondLaw : Prop
  thirdLaw : Prop
  firstLawClosed : firstLaw
  secondLawClosed : secondLaw
  thirdLawClosed : thirdLaw

def NewtonianMechanicsClosed (N : NewtonianMechanicsPackage) : Prop :=
  N.firstLaw ∧ N.secondLaw ∧ N.thirdLaw

theorem newtonian_mechanics_closed_from_evidence
    (N : NewtonianMechanicsPackage) (ev : N.firstLaw ∧ N.secondLaw ∧ N.thirdLaw) :
    NewtonianMechanicsClosed N := by
  exact ev

end ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean
end HautevilleHouse