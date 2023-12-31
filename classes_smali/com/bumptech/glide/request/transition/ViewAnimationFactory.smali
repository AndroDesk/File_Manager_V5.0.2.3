.class public Lcom/bumptech/glide/request/transition/ViewAnimationFactory;
.super Ljava/lang/Object;
.source "ViewAnimationFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/transition/TransitionFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/transition/ViewAnimationFactory$ResourceViewTransitionAnimationFactory;,
        Lcom/bumptech/glide/request/transition/ViewAnimationFactory$ConcreteViewTransitionAnimationFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/transition/TransitionFactory<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private transition:Lcom/bumptech/glide/request/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/transition/Transition<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final viewTransitionAnimationFactory:Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 2
    new-instance v0, Lcom/bumptech/glide/request/transition/ViewAnimationFactory$ResourceViewTransitionAnimationFactory;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/transition/ViewAnimationFactory$ResourceViewTransitionAnimationFactory;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/transition/ViewAnimationFactory;-><init>(Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/bumptech/glide/request/transition/ViewAnimationFactory$ConcreteViewTransitionAnimationFactory;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/transition/ViewAnimationFactory$ConcreteViewTransitionAnimationFactory;-><init>(Landroid/view/animation/Animation;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/transition/ViewAnimationFactory;-><init>(Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/request/transition/ViewAnimationFactory;->viewTransitionAnimationFactory:Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;

    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/transition/Transition;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "TR;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    .line 3
    if-eq p1, v0, :cond_17

    .line 5
    if-nez p2, :cond_7

    .line 7
    goto :goto_17

    .line 8
    :cond_7
    iget-object p1, p0, Lcom/bumptech/glide/request/transition/ViewAnimationFactory;->transition:Lcom/bumptech/glide/request/transition/Transition;

    .line 10
    if-nez p1, :cond_14

    .line 12
    new-instance p1, Lcom/bumptech/glide/request/transition/ViewTransition;

    .line 14
    iget-object p2, p0, Lcom/bumptech/glide/request/transition/ViewAnimationFactory;->viewTransitionAnimationFactory:Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;

    .line 16
    invoke-direct {p1, p2}, Lcom/bumptech/glide/request/transition/ViewTransition;-><init>(Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;)V

    .line 19
    iput-object p1, p0, Lcom/bumptech/glide/request/transition/ViewAnimationFactory;->transition:Lcom/bumptech/glide/request/transition/Transition;

    .line 21
    :cond_14
    iget-object p1, p0, Lcom/bumptech/glide/request/transition/ViewAnimationFactory;->transition:Lcom/bumptech/glide/request/transition/Transition;

    .line 23
    return-object p1

    .line 24
    :cond_17
    :goto_17
    invoke-static {}, Lcom/bumptech/glide/request/transition/NoTransition;->get()Lcom/bumptech/glide/request/transition/Transition;

    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method
