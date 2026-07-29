import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean.MechanicalPrinciple

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean

structure GeometricDynamics {S : SpacetimeStructure} {M : MechanicalPrinciple S} where
  geodesicEquation : Prop
  variationalPrinciple : Prop
  geodesicEquationClosed : geodesicEquation
  variationalPrincipleClosed : variationalPrinciple

structure GeometricDynamicsEvidence {S : SpacetimeStructure} {M : MechanicalPrinciple S} (D : GeometricDynamics S M) where
  geodesicEquationClosedEvidence : D.geodesicEquationClosed
  variationalPrincipleClosedEvidence : D.variationalPrincipleClosed

def GeometricDynamicsClosed {S : SpacetimeStructure} {M : MechanicalPrinciple S} (D : GeometricDynamics S M) : Prop :=
  D.geodesicEquation ∧ D.variationalPrinciple

theorem geometric_dynamics_closed_from_evidence {S : SpacetimeStructure} {M : MechanicalPrinciple S}
    (D : GeometricDynamics S M) (E : GeometricDynamicsEvidence D) : GeometricDynamicsClosed D :=
  And.intro E.geodesicEquationClosedEvidence E.variationalPrincipleClosedEvidence

end ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean
end HautevilleHouse