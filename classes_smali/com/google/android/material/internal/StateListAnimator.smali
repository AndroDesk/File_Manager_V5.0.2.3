.class public final Lcom/google/android/material/internal/StateListAnimator;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/StateListAnimator$Tuple;
    }
.end annotation


# instance fields
.field private final animationListener:Landroid/animation/Animator$AnimatorListener;

.field private lastMatch:Lcom/google/android/material/internal/StateListAnimator$Tuple;

.field public runningAnimator:Landroid/animation/ValueAnimator;

.field private final tuples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/internal/StateListAnimator$Tuple;",
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
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->tuples:Ljava/util/ArrayList;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->lastMatch:Lcom/google/android/material/internal/StateListAnimator$Tuple;

    .line 14
    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 16
    new-instance v0, Lcom/google/android/material/internal/StateListAnimator$1;

    .line 18
    invoke-direct {v0, p0}, Lcom/google/android/material/internal/StateListAnimator$1;-><init>(Lcom/google/android/material/internal/StateListAnimator;)V

    .line 21
    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->animationListener:Landroid/animation/Animator$AnimatorListener;

    .line 23
    return-void
.end method

.method private cancel()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 11
    :cond_a
    return-void
.end method

.method private start(Lcom/google/android/material/internal/StateListAnimator$Tuple;)V
    .registers 2

    .line 1
    iget-object p1, p1, Lcom/google/android/material/internal/StateListAnimator$Tuple;->animator:Landroid/animation/ValueAnimator;

    .line 3
    iput-object p1, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 8
    return-void
.end method


# virtual methods
.method public addState([ILandroid/animation/ValueAnimator;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/material/internal/StateListAnimator$Tuple;

    .line 3
    invoke-direct {v0, p1, p2}, Lcom/google/android/material/internal/StateListAnimator$Tuple;-><init>([ILandroid/animation/ValueAnimator;)V

    .line 6
    iget-object p1, p0, Lcom/google/android/material/internal/StateListAnimator;->animationListener:Landroid/animation/Animator$AnimatorListener;

    .line 8
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    iget-object p1, p0, Lcom/google/android/material/internal/StateListAnimator;->tuples:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    return-void
.end method

.method public jumpToCurrentState()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 11
    :cond_a
    return-void
.end method

.method public setState([I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->tuples:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 10
    iget-object v2, p0, Lcom/google/android/material/internal/StateListAnimator;->tuples:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/google/android/material/internal/StateListAnimator$Tuple;

    .line 18
    iget-object v3, v2, Lcom/google/android/material/internal/StateListAnimator$Tuple;->specs:[I

    .line 20
    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1a

    .line 26
    goto :goto_1e

    .line 27
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_7

    .line 30
    :cond_1d
    const/4 v2, 0x0

    .line 31
    :goto_1e
    iget-object p1, p0, Lcom/google/android/material/internal/StateListAnimator;->lastMatch:Lcom/google/android/material/internal/StateListAnimator$Tuple;

    .line 33
    if-ne v2, p1, :cond_23

    .line 35
    return-void

    .line 36
    :cond_23
    if-eqz p1, :cond_28

    .line 38
    invoke-direct {p0}, Lcom/google/android/material/internal/StateListAnimator;->cancel()V

    .line 41
    :cond_28
    iput-object v2, p0, Lcom/google/android/material/internal/StateListAnimator;->lastMatch:Lcom/google/android/material/internal/StateListAnimator$Tuple;

    .line 43
    if-eqz v2, :cond_2f

    .line 45
    invoke-direct {p0, v2}, Lcom/google/android/material/internal/StateListAnimator;->start(Lcom/google/android/material/internal/StateListAnimator$Tuple;)V

    .line 48
    :cond_2f
    return-void
.end method
