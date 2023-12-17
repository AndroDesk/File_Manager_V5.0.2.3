.class final Lcom/bumptech/glide/ListPreloader$PreloadTarget;
.super Ljava/lang/Object;
.source "ListPreloader.java"

# interfaces
.implements Lcom/bumptech/glide/request/target/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/ListPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PreloadTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/target/Target<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public photoHeight:I

.field public photoWidth:I

.field private request:Lcom/bumptech/glide/request/Request;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequest()Lcom/bumptech/glide/request/Request;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/ListPreloader$PreloadTarget;->request:Lcom/bumptech/glide/request/Request;

    .line 3
    return-object v0
.end method

.method public getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/bumptech/glide/ListPreloader$PreloadTarget;->photoWidth:I

    .line 3
    iget v1, p0, Lcom/bumptech/glide/ListPreloader$PreloadTarget;->photoHeight:I

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    .line 8
    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStop()V
    .registers 1

    return-void
.end method

.method public removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 2

    return-void
.end method

.method public setRequest(Lcom/bumptech/glide/request/Request;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/ListPreloader$PreloadTarget;->request:Lcom/bumptech/glide/request/Request;

    .line 3
    return-void
.end method
