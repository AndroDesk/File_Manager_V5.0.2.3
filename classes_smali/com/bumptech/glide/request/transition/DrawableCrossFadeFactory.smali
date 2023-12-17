.class public Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/transition/TransitionFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/transition/TransitionFactory<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final duration:I

.field private final isCrossFadeEnabled:Z

.field private resourceTransition:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;


# direct methods
.method public constructor <init>(IZ)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->duration:I

    .line 6
    iput-boolean p2, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->isCrossFadeEnabled:Z

    .line 8
    return-void
.end method

.method private getResourceTransition()Lcom/bumptech/glide/request/transition/Transition;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->resourceTransition:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    .line 3
    if-nez v0, :cond_f

    .line 5
    new-instance v0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    .line 7
    iget v1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->duration:I

    .line 9
    iget-boolean v2, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->isCrossFadeEnabled:Z

    .line 11
    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;-><init>(IZ)V

    .line 14
    iput-object v0, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->resourceTransition:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->resourceTransition:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    .line 18
    return-object v0
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/transition/Transition;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p2, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    .line 3
    if-ne p1, p2, :cond_9

    .line 5
    invoke-static {}, Lcom/bumptech/glide/request/transition/NoTransition;->get()Lcom/bumptech/glide/request/transition/Transition;

    .line 8
    move-result-object p1

    .line 9
    goto :goto_d

    .line 10
    :cond_9
    invoke-direct {p0}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->getResourceTransition()Lcom/bumptech/glide/request/transition/Transition;

    .line 13
    move-result-object p1

    .line 14
    :goto_d
    return-object p1
.end method
