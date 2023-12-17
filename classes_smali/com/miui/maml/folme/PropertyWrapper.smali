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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p4, p0, Lcom/miui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    if-eqz p4, :cond_1c

    new-instance p4, Lcom/miui/maml/data/IndexedVariable;

    const/4 v0, 0x1

    invoke-direct {p4, p1, p2, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p4, p0, Lcom/miui/maml/folme/PropertyWrapper;->mValue:Lcom/miui/maml/data/IndexedVariable;

    new-instance p4, Lcom/miui/maml/data/IndexedVariable;

    const-string v1, "_v"

    invoke-static {p1, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1, p2, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p4, p0, Lcom/miui/maml/folme/PropertyWrapper;->mVelocity:Lcom/miui/maml/data/IndexedVariable;

    :cond_1c
    iput-object p3, p0, Lcom/miui/maml/folme/PropertyWrapper;->mExpression:Lcom/miui/maml/data/Expression;

    iput-wide p5, p0, Lcom/miui/maml/folme/PropertyWrapper;->mDefaultValue:D

    return-void
.end method


# virtual methods
.method public getValue()D
    .registers 3

    iget-boolean v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mValue:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide v0

    return-wide v0

    :cond_b
    iget-object v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mExpression:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_16

    :cond_14
    iget-wide v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mDefaultValue:D

    :goto_16
    return-wide v0
.end method

.method public getVelocity()D
    .registers 3

    iget-boolean v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mVelocity:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide v0

    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public init()V
    .registers 4

    iget-boolean v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mValue:Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/folme/PropertyWrapper;->mExpression:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    goto :goto_11

    :cond_f
    iget-wide v1, p0, Lcom/miui/maml/folme/PropertyWrapper;->mDefaultValue:D

    :goto_11
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_14
    return-void
.end method

.method public setValue(D)V
    .registers 5

    iget-boolean v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mValue:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    goto :goto_1f

    :cond_a
    iget-object v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mExpression:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_18

    instance-of v1, v0, Lcom/miui/maml/data/Expression$NumberExpression;

    if-eqz v1, :cond_18

    check-cast v0, Lcom/miui/maml/data/Expression$NumberExpression;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/Expression$NumberExpression;->setValue(D)V

    goto :goto_1f

    :cond_18
    new-instance v0, Lcom/miui/maml/data/Expression$NumberExpression;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/data/Expression$NumberExpression;-><init>(D)V

    iput-object v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mExpression:Lcom/miui/maml/data/Expression;

    :goto_1f
    return-void
.end method

.method public setVelocity(D)V
    .registers 4

    iget-boolean v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mVelocity:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_9
    return-void
.end method
