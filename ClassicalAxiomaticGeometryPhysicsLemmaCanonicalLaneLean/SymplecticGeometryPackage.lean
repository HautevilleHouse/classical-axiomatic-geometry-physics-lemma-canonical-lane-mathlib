import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean

structure SymplecticGeometryPackage (M : AxiomaticGeometryPackage) where
  symplecticForm : Prop
  nondegeneracy : Prop
  closedness : Prop
  integrability : Prop
  hamiltonianVectorField : Prop

def SymplecticGeometryEvidence {M : AxiomaticGeometryPackage} (S : SymplecticGeometryPackage M) : Type :=
  { symplecticFormClosed : S.symplecticForm
  , nondegeneracyClosed : S.nondegeneracy
  , closednessClosed : S.closedness
  , integrabilityClosed : S.integrability
  , hamiltonianVectorFieldClosed : S.hamiltonianVectorField
  }

def SymplecticGeometryClosed {M : AxiomaticGeometryPackage} (S : SymplecticGeometryPackage M) : Prop :=
  S.symplecticForm ∧ S.nondegeneracy ∧ S.closedness ∧ S.integrability ∧ S.hamiltonianVectorField

theorem symplectic_geometry_closed_from_evidence
    {M : AxiomaticGeometryPackage} (S : SymplecticGeometryPackage M)
    (E : SymplecticGeometryEvidence S) : SymplecticGeometryClosed S := by
  exact And.intro E.symplecticFormClosed
    (And.intro E.nondegeneracyClosed
      (And.intro E.closednessClosed
        (And.intro E.integrabilityClosed E.hamiltonianVectorFieldClosed)))

end ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean
end HautevilleHouse
