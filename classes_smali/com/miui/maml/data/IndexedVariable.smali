.class public Lcom/miui/maml/data/IndexedVariable;
.super Ljava/lang/Object;
.source "IndexedVariable.java"


# instance fields
.field public mIndex:I

.field private mIsNumber:Z

.field public mVars:Lcom/miui/maml/data/Variables;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p3, p0, Lcom/miui/maml/data/IndexedVariable;->mIsNumber:Z

    .line 6
    if-eqz p3, :cond_c

    .line 8
    invoke-virtual {p2, p1}, Lcom/miui/maml/data/Variables;->registerDoubleVariable(Ljava/lang/String;)I

    .line 11
    move-result p1

    .line 12
    goto :goto_10

    .line 13
    :cond_c
    invoke-virtual {p2, p1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    .line 16
    move-result p1

    .line 17
    :goto_10
    iput p1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    .line 19
    iput-object p2, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    .line 21
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    .line 3
    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    .line 5
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final getArr(I)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    .line 3
    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/miui/maml/data/Variables;->getArr(II)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final getArrDouble(I)D
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    .line 3
    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/miui/maml/data/Variables;->getArrDouble(II)D

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final getArrString(I)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    .line 3
    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/miui/maml/data/Variables;->getArrString(II)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final getDouble()D
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    .line 3
    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    .line 5
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/Variables;->getDouble(I)D

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final getIndex()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    .line 3
    return v0
.end method

.method public final getString()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    .line 3
    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    .line 5
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/Variables;->getString(I)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final getVariables()Lcom/miui/maml/data/Variables;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    .line 3
    return-object v0
.end method

.method public final getVersion()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    .line 3
    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    .line 5
    iget-boolean v2, p0, Lcom/miui/maml/data/IndexedVariable;->mIsNumber:Z

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/Variables;->getVer(IZ)I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final isNull()Z
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/data/IndexedVariable;->mIsNumber:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v3, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v3}, Lcom/miui/maml/data/Variables;->existsDouble(I)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_1d

    :cond_11
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v3, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v3}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    return v1
.end method

.method public final isNull(I)Z
    .registers 6

    .line 2
    iget-boolean v0, p0, Lcom/miui/maml/data/IndexedVariable;->mIsNumber:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v3, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v3, p1}, Lcom/miui/maml/data/Variables;->existsArrItem(II)Z

    move-result p1

    if-nez p1, :cond_1c

    goto :goto_1d

    :cond_11
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v3, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v3, p1}, Lcom/miui/maml/data/Variables;->getArr(II)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    return v1
.end method

.method public final set(D)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/maml/data/Variables;->put(ID)V

    return-void
.end method

.method public final set(Ljava/lang/Object;)Z
    .registers 4

    .line 2
    iget-boolean v0, p0, Lcom/miui/maml/data/IndexedVariable;->mIsNumber:Z

    if-eqz v0, :cond_d

    .line 3
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lcom/miui/maml/data/Variables;->putDouble(ILjava/lang/Object;)Z

    move-result p1

    return p1

    .line 4
    :cond_d
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lcom/miui/maml/data/Variables;->put(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final setArr(ID)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/miui/maml/data/Variables;->putArr(IID)Z

    move-result p1

    return p1
.end method

.method public final setArr(ILjava/lang/Object;)Z
    .registers 5

    .line 2
    iget-boolean v0, p0, Lcom/miui/maml/data/IndexedVariable;->mIsNumber:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/maml/data/Variables;->putArrDouble(IILjava/lang/Object;)Z

    move-result p1

    goto :goto_15

    :cond_d
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/maml/data/Variables;->putArr(IILjava/lang/Object;)Z

    move-result p1

    :goto_15
    return p1
.end method
