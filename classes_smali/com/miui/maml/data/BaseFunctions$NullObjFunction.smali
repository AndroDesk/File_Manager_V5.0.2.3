.class Lcom/miui/maml/data/BaseFunctions$NullObjFunction;
.super Lcom/miui/maml/data/Expression$FunctionImpl;
.source "BaseFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/BaseFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NullObjFunction"
.end annotation


# instance fields
.field private mObjName:Ljava/lang/String;

.field private mVarIndex:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/miui/maml/data/Expression$FunctionImpl;-><init>(I)V

    .line 5
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    .line 8
    return-void
.end method


# virtual methods
.method public evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    .line 4
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    .line 10
    const/4 v1, -0x1

    .line 11
    if-eq p1, v0, :cond_28

    .line 13
    iput-object p1, p0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_26

    .line 21
    iget-object p1, p0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    .line 23
    invoke-virtual {p2, p1}, Lcom/miui/maml/data/Variables;->existsObj(Ljava/lang/String;)Z

    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1d

    .line 29
    goto :goto_26

    .line 30
    :cond_1d
    iget-object p1, p0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    .line 32
    invoke-virtual {p2, p1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    .line 35
    move-result p1

    .line 36
    iput p1, p0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    .line 38
    goto :goto_28

    .line 39
    :cond_26
    :goto_26
    iput v1, p0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    .line 41
    :cond_28
    :goto_28
    iget p1, p0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    .line 43
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 45
    if-ne p1, v1, :cond_2f

    .line 47
    return-wide v2

    .line 48
    :cond_2f
    invoke-virtual {p2, p1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object p1

    .line 52
    if-nez p1, :cond_36

    .line 54
    goto :goto_38

    .line 55
    :cond_36
    const-wide/16 v2, 0x0

    .line 57
    :goto_38
    return-wide v2
.end method

.method public evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public reset()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    .line 4
    return-void
.end method
