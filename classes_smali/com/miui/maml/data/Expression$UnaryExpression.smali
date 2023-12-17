.class Lcom/miui/maml/data/Expression$UnaryExpression;
.super Lcom/miui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnaryExpression"
.end annotation


# instance fields
.field private mExp:Lcom/miui/maml/data/Expression;

.field private mOpe:Lcom/miui/maml/data/Expression$Ope;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression$Ope;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/data/Expression;-><init>()V

    .line 4
    sget-object v0, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    .line 6
    iput-object p1, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 8
    iput-object p2, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    .line 10
    if-ne p2, v0, :cond_21

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    const-string v0, "UnaryExpression: invalid operator:"

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    const-string p2, "Expression"

    .line 31
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_21
    return-void
.end method


# virtual methods
.method public accept(Lcom/miui/maml/data/ExpressionVisitor;)V
    .registers 3

    .line 1
    invoke-virtual {p1, p0}, Lcom/miui/maml/data/ExpressionVisitor;->visit(Lcom/miui/maml/data/Expression;)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 6
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Expression;->accept(Lcom/miui/maml/data/ExpressionVisitor;)V

    .line 9
    return-void
.end method

.method public evaluate()D
    .registers 5

    .line 1
    sget-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 3
    iget-object v1, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    const-wide/16 v2, 0x0

    .line 14
    if-eq v0, v1, :cond_3a

    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_2d

    .line 19
    const/4 v1, 0x3

    .line 20
    if-eq v0, v1, :cond_23

    .line 22
    const-string v0, "Expression"

    .line 24
    const-string v1, "fail to evalute UnaryExpression, invalid operator"

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 31
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 34
    move-result-wide v0

    .line 35
    return-wide v0

    .line 36
    :cond_23
    iget-object v0, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 38
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 41
    move-result-wide v0

    .line 42
    double-to-int v0, v0

    .line 43
    not-int v0, v0

    .line 44
    int-to-double v0, v0

    .line 45
    return-wide v0

    .line 46
    :cond_2d
    iget-object v0, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 48
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 51
    move-result-wide v0

    .line 52
    cmpg-double v0, v0, v2

    .line 54
    if-gtz v0, :cond_39

    .line 56
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 58
    :cond_39
    return-wide v2

    .line 59
    :cond_3a
    iget-object v0, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 61
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 64
    move-result-wide v0

    .line 65
    sub-double/2addr v2, v0

    .line 66
    return-wide v2
.end method

.method public evaluateStr()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression$UnaryExpression;->evaluate()D

    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public isNull()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->isNull()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method
