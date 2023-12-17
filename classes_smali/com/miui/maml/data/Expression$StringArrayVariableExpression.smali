.class Lcom/miui/maml/data/Expression$StringArrayVariableExpression;
.super Lcom/miui/maml/data/Expression$ArrayVariableExpression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringArrayVariableExpression"
.end annotation


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Lcom/miui/maml/data/Expression;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/data/Expression$ArrayVariableExpression;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Lcom/miui/maml/data/Expression;)V

    .line 4
    return-void
.end method


# virtual methods
.method public evaluate()D
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression$StringArrayVariableExpression;->evaluateStr()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_f

    .line 11
    :try_start_a
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 14
    move-result-wide v0
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_f

    .line 15
    return-wide v0

    .line 16
    :catch_f
    :cond_f
    const-wide/16 v0, 0x0

    .line 18
    return-wide v0
.end method

.method public evaluateStr()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    .line 3
    iget-object v1, p0, Lcom/miui/maml/data/Expression$ArrayVariableExpression;->mIndexExp:Lcom/miui/maml/data/Expression;

    .line 5
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 8
    move-result-wide v1

    .line 9
    double-to-int v1, v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->getArrString(I)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public isNull()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    .line 3
    iget-object v1, p0, Lcom/miui/maml/data/Expression$ArrayVariableExpression;->mIndexExp:Lcom/miui/maml/data/Expression;

    .line 5
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 8
    move-result-wide v1

    .line 9
    double-to-int v1, v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->isNull(I)Z

    .line 13
    move-result v0

    .line 14
    return v0
.end method
