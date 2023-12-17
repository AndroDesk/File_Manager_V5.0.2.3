.class public Lcom/micloud/midrive/utils/FlagSet;
.super Ljava/lang/Object;
.source "FlagSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ElemType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TElemType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/micloud/midrive/utils/FlagSet;->mSet:Ljava/util/Set;

    .line 11
    return-void
.end method

.method private static isEmptyChanged(II)Z
    .registers 4

    if-eq p0, p1, :cond_d

    int-to-long v0, p0

    int-to-long p0, p1

    mul-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-nez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElemType;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/utils/FlagSet;->mSet:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/utils/FlagSet;->mSet:Ljava/util/Set;

    .line 9
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p0, Lcom/micloud/midrive/utils/FlagSet;->mSet:Ljava/util/Set;

    .line 14
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 17
    move-result p1

    .line 18
    invoke-static {v0, p1}, Lcom/micloud/midrive/utils/FlagSet;->isEmptyChanged(II)Z

    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/utils/FlagSet;->mSet:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElemType;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/utils/FlagSet;->mSet:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/utils/FlagSet;->mSet:Ljava/util/Set;

    .line 9
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p0, Lcom/micloud/midrive/utils/FlagSet;->mSet:Ljava/util/Set;

    .line 14
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 17
    move-result p1

    .line 18
    invoke-static {v0, p1}, Lcom/micloud/midrive/utils/FlagSet;->isEmptyChanged(II)Z

    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/utils/FlagSet;->mSet:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
