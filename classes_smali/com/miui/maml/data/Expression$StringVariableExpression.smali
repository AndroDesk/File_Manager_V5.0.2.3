.class Lcom/miui/maml/data/Expression$StringVariableExpression;
.super Lcom/miui/maml/data/Expression$VariableExpression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringVariableExpression"
.end annotation


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/maml/data/Expression$VariableExpression;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Z)V

    .line 5
    return-void
.end method


# virtual methods
.method public evaluate()D
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression$StringVariableExpression;->evaluateStr()Ljava/lang/String;

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
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isNull()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->isNull()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method
