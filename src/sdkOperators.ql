import go

from BinaryExpr b
where
  (b.getOperator() = "=" or b.getOperator() = ">" or b.getOperator() = "<")
  and (b.getLeftOperand().getType().hasQualifiedName("github.com/cosmos/cosmos-sdk/types", "Int")
       or b.getRightOperand().getType().hasQualifiedName("github.com/cosmos/cosmos-sdk/types", "Int"))
select b, "Use SDK operators instead of native operators when dealing with sdk.Int or sdk.Dec."
