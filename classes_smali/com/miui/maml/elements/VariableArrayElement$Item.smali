.class Lcom/miui/maml/elements/VariableArrayElement$Item;
.super Ljava/lang/Object;
.source "VariableArrayElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/VariableArrayElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Item"
.end annotation


# instance fields
.field public mExpression:Lcom/miui/maml/data/Expression;

.field public mValue:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/miui/maml/elements/VariableArrayElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/VariableArrayElement;Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/VariableArrayElement$Item;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_32

    const-string v0, "expression"

    .line 2
    invoke-interface {p3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement$Item;->mExpression:Lcom/miui/maml/data/Expression;

    const-string p2, "value"

    .line 3
    invoke-interface {p3, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    iget-object p1, p1, Lcom/miui/maml/elements/VariableArrayElement;->mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

    sget-object p3, Lcom/miui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lcom/miui/maml/elements/VariableArrayElement$Type;

    if-ne p1, p3, :cond_30

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_30

    .line 5
    :try_start_25
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_2f} :catch_32

    goto :goto_32

    .line 6
    :cond_30
    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;

    :catch_32
    :cond_32
    :goto_32
    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/elements/VariableArrayElement;Ljava/lang/Object;)V
    .registers 3

    .line 7
    iput-object p1, p0, Lcom/miui/maml/elements/VariableArrayElement$Item;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/miui/maml/elements/VariableArrayElement$Item;->mExpression:Lcom/miui/maml/data/Expression;

    return-void
.end method


# virtual methods
.method public evaluate()Ljava/lang/Double;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Item;->mExpression:Lcom/miui/maml/data/Expression;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_17

    .line 6
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->isNull()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_c

    .line 12
    goto :goto_16

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Item;->mExpression:Lcom/miui/maml/data/Expression;

    .line 15
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 18
    move-result-wide v0

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 22
    move-result-object v1

    .line 23
    :goto_16
    return-object v1

    .line 24
    :cond_17
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;

    .line 26
    instance-of v2, v0, Ljava/lang/Number;

    .line 28
    if-eqz v2, :cond_27

    .line 30
    check-cast v0, Ljava/lang/Number;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 35
    move-result-wide v0

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 39
    move-result-object v1

    .line 40
    :cond_27
    return-object v1
.end method

.method public evaluateStr()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Item;->mExpression:Lcom/miui/maml/data/Expression;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;

    .line 12
    instance-of v1, v0, Ljava/lang/String;

    .line 14
    if-eqz v1, :cond_12

    .line 16
    check-cast v0, Ljava/lang/String;

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    :goto_13
    return-object v0
.end method

.method public isExpression()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Item;->mExpression:Lcom/miui/maml/data/Expression;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method
