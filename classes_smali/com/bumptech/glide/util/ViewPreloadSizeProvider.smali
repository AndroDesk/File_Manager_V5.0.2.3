.class public Lcom/bumptech/glide/util/ViewPreloadSizeProvider;
.super Ljava/lang/Object;
.source "ViewPreloadSizeProvider.java"

# interfaces
.implements Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;
.implements Lcom/bumptech/glide/request/target/SizeReadyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider<",
        "TT;>;",
        "Lcom/bumptech/glide/request/target/SizeReadyCallback;"
    }
.end annotation


# instance fields
.field private size:[I

.field private viewTarget:Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->viewTarget:Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/target/CustomViewTarget;->getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    return-void
.end method


# virtual methods
.method public getPreloadSize(Ljava/lang/Object;II)[I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)[I"
        }
    .end annotation

    iget-object p1, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->size:[I

    if-nez p1, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    return-object p1
.end method

.method public onSizeReady(II)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    iput-object v0, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->size:[I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->viewTarget:Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->size:[I

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->viewTarget:Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    if-eqz v0, :cond_9

    goto :goto_13

    :cond_9
    new-instance v0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->viewTarget:Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/target/CustomViewTarget;->getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    :cond_13
    :goto_13
    return-void
.end method
