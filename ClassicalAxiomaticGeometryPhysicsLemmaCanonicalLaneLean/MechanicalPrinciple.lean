import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean.SpacetimeStructure

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean

structure MechanicalPrinciple {S : SpacetimeStructure} where
  principleType : String
  formulation : Prop
  conservationLaws : Prop
  formulationClosed : formulation
  conservationLawsClosed : conservationLaws

structure MechanicalPrincipleEvidence {S : SpacetimeStructure} (M : MechanicalPrinciple S) where
  formulationClosedEvidence : M.formulationClosed
  conservationLawsClosedEvidence : M.conservationLawsClosed

def MechanicalPrincipleClosed {S : SpacetimeStructure} (M : MechanicalPrinciple S) : Prop :=
  M.formulation ∧ M.conservationLaws

theorem mechanical_principle_closed_from_evidence {S : SpacetimeStructure} (M : MechanicalPrinciple S) (E : MechanicalPrincipleEvidence M) :
    MechanicalPrincipleClosed M :=
  And.intro E.formulationClosedEvidence E.conservationLawsClosedEvidence

end ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean
end HautevilleHouse