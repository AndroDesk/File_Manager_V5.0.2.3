.class public Lcom/miui/maml/data/VariableBinder$Variable;
.super Lcom/miui/maml/data/VariableBinder$TypedValue;
.source "VariableBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/VariableBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Variable"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Variable"


# instance fields
.field private mArrayIndex:Lcom/miui/maml/data/Expression;

.field public mDefNumberValue:D

.field public mDefStringValue:Ljava/lang/String;

.field public mVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/data/Variables;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinder$TypedValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    iget-object p2, p0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder$TypedValue;->isNumber()Z

    move-result v0

    invoke-direct {p1, p2, p3, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p1, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mVar:Lcom/miui/maml/data/IndexedVariable;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V
    .registers 7

    .line 3
    invoke-direct {p0, p1}, Lcom/miui/maml/data/VariableBinder$TypedValue;-><init>(Lorg/w3c/dom/Element;)V

    const-string v0, "arrIndex"

    .line 4
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mArrayIndex:Lcom/miui/maml/data/Expression;

    .line 5
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder$TypedValue;->isNumber()Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mArrayIndex:Lcom/miui/maml/data/Expression;

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    invoke-direct {v0, v1, p2, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mVar:Lcom/miui/maml/data/IndexedVariable;

    const-string p2, "default"

    .line 6
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder$TypedValue;->isNumber()Z

    move-result p1

    if-eqz p1, :cond_50

    .line 8
    iget-object p1, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-wide/16 v0, 0x0

    const/4 p2, 0x0

    if-eqz p1, :cond_43

    .line 9
    iput-object p2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    .line 10
    iput-wide v0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    goto :goto_50

    .line 11
    :cond_43
    :try_start_43
    iget-object p1, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D
    :try_end_4b
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_4b} :catch_4c

    goto :goto_50

    .line 12
    :catch_4c
    iput-object p2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    .line 13
    iput-wide v0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    :cond_50
    :goto_50
    return-void
.end method


# virtual methods
.method public getNumber()D
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder$TypedValue;->isNumber()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1d

    .line 7
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mArrayIndex:Lcom/miui/maml/data/Expression;

    .line 9
    if-eqz v0, :cond_16

    .line 11
    iget-object v1, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 13
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 16
    move-result-wide v2

    .line 17
    double-to-int v0, v2

    .line 18
    invoke-virtual {v1, v0}, Lcom/miui/maml/data/IndexedVariable;->getArrDouble(I)D

    .line 21
    move-result-wide v0

    .line 22
    return-wide v0

    .line 23
    :cond_16
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 25
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    .line 28
    move-result-wide v0

    .line 29
    return-wide v0

    .line 30
    :cond_1d
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mArrayIndex:Lcom/miui/maml/data/Expression;

    .line 32
    const-wide/16 v1, 0x0

    .line 34
    if-eqz v0, :cond_33

    .line 36
    iget-object v3, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 38
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 41
    move-result-wide v4

    .line 42
    double-to-int v0, v4

    .line 43
    invoke-virtual {v3, v0}, Lcom/miui/maml/data/IndexedVariable;->getArrString(I)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0, v1, v2}, Lcom/miui/maml/util/Utils;->stringToDouble(Ljava/lang/String;D)D

    .line 50
    move-result-wide v0

    .line 51
    return-wide v0

    .line 52
    :cond_33
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 54
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0, v1, v2}, Lcom/miui/maml/util/Utils;->stringToDouble(Ljava/lang/String;D)D

    .line 61
    move-result-wide v0

    .line 62
    return-wide v0
.end method

.method public set(D)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mArrayIndex:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_f

    .line 2
    iget-object v1, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v0, v2

    invoke-virtual {v1, v0, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->setArr(ID)Z

    goto :goto_14

    .line 3
    :cond_f
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :goto_14
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .registers 7

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder$TypedValue;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-wide/16 v0, 0x0

    .line 5
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_1c

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 6
    :try_start_15
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/miui/maml/util/Utils;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1b} :catch_26

    goto :goto_26

    .line 7
    :cond_1c
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_26

    .line 8
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 9
    :catch_26
    :cond_26
    :goto_26
    iget-object p1, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mArrayIndex:Lcom/miui/maml/data/Expression;

    if-eqz p1, :cond_35

    .line 10
    iget-object v2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-int p1, v3

    invoke-virtual {v2, p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->setArr(ID)Z

    goto :goto_59

    .line 11
    :cond_35
    iget-object p1, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    goto :goto_59

    .line 12
    :cond_3b
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_45

    .line 13
    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lcom/miui/maml/util/Utils;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    .line 14
    :cond_45
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mArrayIndex:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_54

    .line 15
    iget-object v1, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v0, v2

    invoke-virtual {v1, v0, p1}, Lcom/miui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    goto :goto_59

    .line 16
    :cond_54
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :goto_59
    return-void
.end method
