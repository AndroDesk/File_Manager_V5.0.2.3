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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(IIZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIndex:I

    iput p2, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mVersion:I

    iput-boolean p3, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/miui/maml/data/RootExpression$VarVersion;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    check-cast p1, Lcom/miui/maml/data/RootExpression$VarVersion;

    iget-boolean v0, p1, Lcom/miui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    iget-boolean v2, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    if-ne v0, v2, :cond_14

    iget p1, p1, Lcom/miui/maml/data/RootExpression$VarVersion;->mIndex:I

    iget v0, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIndex:I

    if-ne p1, v0, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method public getVer(Lcom/miui/maml/data/Variables;)I
    .registers 4

    iget v0, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIndex:I

    iget-boolean v1, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/Variables;->getVer(IZ)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-boolean v0, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIndex:I

    goto :goto_c

    :cond_7
    iget v0, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIndex:I

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    return v0
.end method
