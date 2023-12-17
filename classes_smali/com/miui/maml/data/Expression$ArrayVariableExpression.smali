.class abstract Lcom/miui/maml/data/Expression$ArrayVariableExpression;
.super Lcom/miui/maml/data/Expression$VariableExpression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ArrayVariableExpression"
.end annotation


# instance fields
.field public mIndexExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Lcom/miui/maml/data/Expression;)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/maml/data/Expression$VariableExpression;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Z)V

    .line 5
    iput-object p3, p0, Lcom/miui/maml/data/Expression$ArrayVariableExpression;->mIndexExp:Lcom/miui/maml/data/Expression;

    .line 7
    return-void
.end method


# virtual methods
.method public accept(Lcom/miui/maml/data/ExpressionVisitor;)V
    .registers 3

    .line 1
    invoke-virtual {p1, p0}, Lcom/miui/maml/data/ExpressionVisitor;->visit(Lcom/miui/maml/data/Expression;)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/data/Expression$ArrayVariableExpression;->mIndexExp:Lcom/miui/maml/data/Expression;

    .line 6
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Expression;->accept(Lcom/miui/maml/data/ExpressionVisitor;)V

    .line 9
    return-void
.end method
