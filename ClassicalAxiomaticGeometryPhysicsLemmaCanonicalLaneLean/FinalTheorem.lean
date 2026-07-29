import canonicalLaneMathlib.AdmissibleClass
import ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean.PhysicsLemmaBridge

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean

def ConstrainedAxiomaticGeometryPhysicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_axiomatic_geometry_physics_endgame (A : AdmissibleClass) : ConstrainedAxiomaticGeometryPhysicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean
end HautevilleHouse