import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean

structure GeodesicLengthPackage (G : AxiomaticGeometryPackage) where
  lengthFunctional : Type u
  variationFormula : Prop
  firstVariation : Prop
  secondVariation : Prop
  indexForm : Prop

def GeodesicLengthEvidence {G : AxiomaticGeometryPackage} (L : GeodesicLengthPackage G) : Type :=
  { variationFormulaClosed : L.variationFormula
  , firstVariationClosed : L.firstVariation
  , secondVariationClosed : L.secondVariation
  , indexFormClosed : L.indexForm
  }

def GeodesicLengthClosed {G : AxiomaticGeometryPackage} (L : GeodesicLengthPackage G) : Prop :=
  L.variationFormula ∧ L.firstVariation ∧ L.secondVariation ∧ L.indexForm

theorem geodesic_length_closed_from_evidence
    {G : AxiomaticGeometryPackage} (L : GeodesicLengthPackage G)
    (E : GeodesicLengthEvidence L) : GeodesicLengthClosed L := by
  exact And.intro E.variationFormulaClosed
    (And.intro E.firstVariationClosed
      (And.intro E.secondVariationClosed E.indexFormClosed))

end ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean
end HautevilleHouse
