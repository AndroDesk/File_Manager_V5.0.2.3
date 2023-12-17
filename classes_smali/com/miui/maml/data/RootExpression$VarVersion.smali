.class public Lcom/miui/maml/data/RootExpression$VarVersion;
.super Ljava/lang/Object;
.source "RootExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/RootExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VarVersion"
.end annotation


# instance fields
.field public mIndex:I

.field private mIsNumber:Z

.field public mVersion:I


# direct methods
.method public constructor <init>(IIZ)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIndex:I

    .line 6
    iput p2, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mVersion:I

    .line 8
    iput-boolean p3, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    .line 10
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_14

    .line 6
    check-cast p1, Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 8
    iget-boolean v0, p1, Lcom/miui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    .line 10
    iget-boolean v2, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    .line 12
    if-ne v0, v2, :cond_14

    .line 14
    iget p1, p1, Lcom/miui/maml/data/RootExpression$VarVersion;->mIndex:I

    .line 16
    iget v0, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIndex:I

    .line 18
    if-ne p1, v0, :cond_14

    .line 20
    const/4 v1, 0x1

    .line 21
    :cond_14
    return v1
.end method

.method public getVer(Lcom/miui/maml/data/Variables;)I
    .registers 4

    .line 1
    iget v0, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIndex:I

    .line 3
    iget-boolean v1, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/Variables;->getVer(IZ)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget v0, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIndex:I

    .line 7
    goto :goto_c

    .line 8
    :cond_7
    iget v0, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIndex:I

    .line 10
    neg-int v0, v0

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 13
    :goto_c
    return v0
.end method
