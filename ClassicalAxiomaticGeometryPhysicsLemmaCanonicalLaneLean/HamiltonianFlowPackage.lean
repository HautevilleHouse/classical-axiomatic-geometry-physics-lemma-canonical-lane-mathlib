import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean

structure HamiltonianFlowPackage (S : SymplecticGeometryPackage) where
  hamiltonianFunction : Type u
  flowDefined : Prop
  conservationOfEnergy : Prop
  phaseSpace : Prop
  poissonBracket : Prop

def HamiltonianFlowEvidence {S : SymplecticGeometryPackage} (H : HamiltonianFlowPackage S) : Type :=
  { hamiltonianFunctionClosed : H.hamiltonianFunction
  , flowDefinedClosed : H.flowDefined
  , conservationOfEnergyClosed : H.conservationOfEnergy
  , phaseSpaceClosed : H.phaseSpace
  , poissonBracketClosed : H.poissonBracket
  }

def HamiltonianFlowClosed {S : SymplecticGeometryPackage} (H : HamiltonianFlowPackage S) : Prop :=
  H.hamiltonianFunction ∧ H.flowDefined ∧ H.conservationOfEnergy ∧ H.phaseSpace ∧ H.poissonBracket

theorem hamiltonian_flow_closed_from_evidence
    {S : SymplecticGeometryPackage} (H : HamiltonianFlowPackage S)
    (E : HamiltonianFlowEvidence H) : HamiltonianFlowClosed H := by
  exact And.intro E.hamiltonianFunctionClosed
    (And.intro E.flowDefinedClosed
      (And.intro E.conservationOfEnergyClosed
        (And.intro E.phaseSpaceClosed E.poissonBracketClosed)))

end ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean
end HautevilleHouse
