.class public Lcom/google/android/material/animation/AnimatorSetCompat;
.super Ljava/lang/Object;
.source "AnimatorSetCompat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-wide/16 v2, 0x0

    .line 8
    move v4, v1

    .line 9
    :goto_8
    if-ge v4, v0, :cond_20

    .line 11
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v5

    .line 15
    check-cast v5, Landroid/animation/Animator;

    .line 17
    invoke-virtual {v5}, Landroid/animation/Animator;->getStartDelay()J

    .line 20
    move-result-wide v6

    .line 21
    invoke-virtual {v5}, Landroid/animation/Animator;->getDuration()J

    .line 24
    move-result-wide v8

    .line 25
    add-long/2addr v8, v6

    .line 26
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 29
    move-result-wide v2

    .line 30
    add-int/lit8 v4, v4, 0x1

    .line 32
    goto :goto_8

    .line 33
    :cond_20
    const/4 v0, 0x2

    .line 34
    new-array v0, v0, [I

    .line 36
    fill-array-data v0, :array_34

    .line 39
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 46
    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 49
    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 52
    return-void

    .line 53
    :array_34
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
