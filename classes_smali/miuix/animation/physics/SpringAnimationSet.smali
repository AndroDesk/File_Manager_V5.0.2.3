.class public Lmiuix/animation/physics/SpringAnimationSet;
.super Ljava/lang/Object;
.source "SpringAnimationSet.java"


# instance fields
.field private mAnimationContainer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/physics/SpringAnimation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    .line 11
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_25

    .line 9
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_20

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lmiuix/animation/physics/SpringAnimation;

    .line 27
    if-eqz v1, :cond_e

    .line 29
    invoke-virtual {v1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 32
    goto :goto_e

    .line 33
    :cond_20
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    .line 35
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 38
    :cond_25
    return-void
.end method

.method public endAnimation()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_25

    .line 9
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_20

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lmiuix/animation/physics/SpringAnimation;

    .line 27
    if-eqz v1, :cond_e

    .line 29
    invoke-virtual {v1}, Lmiuix/animation/physics/SpringAnimation;->skipToEnd()V

    .line 32
    goto :goto_e

    .line 33
    :cond_20
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    .line 35
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 38
    :cond_25
    return-void
.end method

.method public play(Lmiuix/animation/physics/SpringAnimation;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_7

    .line 3
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_7
    return-void
.end method

.method public varargs playTogether([Lmiuix/animation/physics/SpringAnimation;)V
    .registers 6

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_2
    if-ge v1, v0, :cond_10

    .line 5
    aget-object v2, p1, v1

    .line 7
    if-eqz v2, :cond_d

    .line 9
    iget-object v3, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    .line 11
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_d
    add-int/lit8 v1, v1, 0x1

    .line 16
    goto :goto_2

    .line 17
    :cond_10
    return-void
.end method

.method public start()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_20

    .line 9
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_20

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lmiuix/animation/physics/SpringAnimation;

    .line 27
    if-eqz v1, :cond_e

    .line 29
    invoke-virtual {v1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 32
    goto :goto_e

    .line 33
    :cond_20
    return-void
.end method
