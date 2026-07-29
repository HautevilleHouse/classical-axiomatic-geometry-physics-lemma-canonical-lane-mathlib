import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean

structure ClassicalFieldTheoryPackage where
  scalarField : Type u
  vectorField : Type v
  tensorField : Type w
  laplacian : Type x
  waveEquation : Prop
  poissonEquation : Prop
  heatEquation : Prop
  waveEquationTerm : waveEquation
  poissonEquationTerm : poissonEquation
  heatEquationTerm : heatEquation

def ClassicalFieldTheoryClosed (C : ClassicalFieldTheoryPackage) : Prop :=
  C.waveEquation ∧ C.poissonEquation ∧ C.heatEquation

theorem classical_field_theory_closed_from_package (C : ClassicalFieldTheoryPackage) : ClassicalFieldTheoryClosed C :=
  And.intro C.waveEquationTerm (And.intro C.poissonEquationTerm C.heatEquationTerm)

end ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean
end HautevilleHouse