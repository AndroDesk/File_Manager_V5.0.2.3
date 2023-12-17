.class public Lcom/bumptech/glide/request/transition/ViewPropertyAnimationFactory;
.super Ljava/lang/Object;
.source "ViewPropertyAnimationFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/transition/TransitionFactory;


# annotations
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
.field private animation:Lcom/bumptech/glide/request/transition/ViewPropertyTransition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/transition/ViewPropertyTransition<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final animator:Lcom/bumptech/glide/request/transition/ViewPropertyTransition$Animator;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/transition/ViewPropertyTransition$Animator;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/request/transition/ViewPropertyAnimationFactory;->animator:Lcom/bumptech/glide/request/transition/ViewPropertyTransition$Animator;

    .line 6
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
    iget-object p1, p0, Lcom/bumptech/glide/request/transition/ViewPropertyAnimationFactory;->animation:Lcom/bumptech/glide/request/transition/ViewPropertyTransition;

    .line 10
    if-nez p1, :cond_14

    .line 12
    new-instance p1, Lcom/bumptech/glide/request/transition/ViewPropertyTransition;

    .line 14
    iget-object p2, p0, Lcom/bumptech/glide/request/transition/ViewPropertyAnimationFactory;->animator:Lcom/bumptech/glide/request/transition/ViewPropertyTransition$Animator;

    .line 16
    invoke-direct {p1, p2}, Lcom/bumptech/glide/request/transition/ViewPropertyTransition;-><init>(Lcom/bumptech/glide/request/transition/ViewPropertyTransition$Animator;)V

    .line 19
    iput-object p1, p0, Lcom/bumptech/glide/request/transition/ViewPropertyAnimationFactory;->animation:Lcom/bumptech/glide/request/transition/ViewPropertyTransition;

    .line 21
    :cond_14
    iget-object p1, p0, Lcom/bumptech/glide/request/transition/ViewPropertyAnimationFactory;->animation:Lcom/bumptech/glide/request/transition/ViewPropertyTransition;

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
