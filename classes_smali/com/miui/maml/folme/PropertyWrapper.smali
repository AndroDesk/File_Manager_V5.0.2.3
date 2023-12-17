.class public Lcom/miui/maml/folme/PropertyWrapper;
.super Ljava/lang/Object;
.source "PropertyWrapper.java"


# instance fields
.field private mDefaultValue:D

.field private mExpression:Lcom/miui/maml/data/Expression;

.field private mInFolmeMode:Z

.field private mValue:Lcom/miui/maml/data/IndexedVariable;

.field private mVelocity:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p4, p0, Lcom/miui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    .line 6
    if-eqz p4, :cond_1c

    .line 8
    new-instance p4, Lcom/miui/maml/data/IndexedVariable;

    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p4, p1, p2, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 14
    iput-object p4, p0, Lcom/miui/maml/folme/PropertyWrapper;->mValue:Lcom/miui/maml/data/IndexedVariable;

    .line 16
    new-instance p4, Lcom/miui/maml/data/IndexedVariable;

    .line 18
    const-string v1, "_v"

    .line 20
    invoke-static {p1, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p4, p1, p2, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 27
    iput-object p4, p0, Lcom/miui/maml/folme/PropertyWrapper;->mVelocity:Lcom/miui/maml/data/IndexedVariable;

    .line 29
    :cond_1c
    iput-object p3, p0, Lcom/miui/maml/folme/PropertyWrapper;->mExpression:Lcom/miui/maml/data/Expression;

    .line 31
    iput-wide p5, p0, Lcom/miui/maml/folme/PropertyWrapper;->mDefaultValue:D

    .line 33
    return-void
.end method


# virtual methods
.method public getValue()D
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mValue:Lcom/miui/maml/data/IndexedVariable;

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mExpression:Lcom/miui/maml/data/Expression;

    .line 14
    if-eqz v0, :cond_14

    .line 16
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 19
    move-result-wide v0

    .line 20
    goto :goto_16

    .line 21
    :cond_14
    iget-wide v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mDefaultValue:D

    .line 23
    :goto_16
    return-wide v0
.end method

.method public getVelocity()D
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mVelocity:Lcom/miui/maml/data/IndexedVariable;

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    :cond_b
    const-wide/16 v0, 0x0

    .line 14
    return-wide v0
.end method

.method public init()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    .line 3
    if-eqz v0, :cond_14

    .line 5
    iget-object v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mValue:Lcom/miui/maml/data/IndexedVariable;

    .line 7
    iget-object v1, p0, Lcom/miui/maml/folme/PropertyWrapper;->mExpression:Lcom/miui/maml/data/Expression;

    .line 9
    if-eqz v1, :cond_f

    .line 11
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 14
    move-result-wide v1

    .line 15
    goto :goto_11

    .line 16
    :cond_f
    iget-wide v1, p0, Lcom/miui/maml/folme/PropertyWrapper;->mDefaultValue:D

    .line 18
    :goto_11
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 21
    :cond_14
    return-void
.end method

.method public setValue(D)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-object v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mValue:Lcom/miui/maml/data/IndexedVariable;

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 10
    goto :goto_1f

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mExpression:Lcom/miui/maml/data/Expression;

    .line 13
    if-eqz v0, :cond_18

    .line 15
    instance-of v1, v0, Lcom/miui/maml/data/Expression$NumberExpression;

    .line 17
    if-eqz v1, :cond_18

    .line 19
    check-cast v0, Lcom/miui/maml/data/Expression$NumberExpression;

    .line 21
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/Expression$NumberExpression;->setValue(D)V

    .line 24
    goto :goto_1f

    .line 25
    :cond_18
    new-instance v0, Lcom/miui/maml/data/Expression$NumberExpression;

    .line 27
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/data/Expression$NumberExpression;-><init>(D)V

    .line 30
    iput-object v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mExpression:Lcom/miui/maml/data/Expression;

    .line 32
    :goto_1f
    return-void
.end method

.method public setVelocity(D)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mVelocity:Lcom/miui/maml/data/IndexedVariable;

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 10
    :cond_9
    return-void
.end method
