.class public abstract Lcom/bumptech/glide/request/target/ViewTarget;
.super Lcom/bumptech/glide/request/target/BaseTarget;
.source "ViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/target/BaseTarget<",
        "TZ;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewTarget"

.field private static isTagUsedAtLeastOnce:Z

.field private static tagId:I


# instance fields
.field private attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

.field private isAttachStateListenerAdded:Z

.field private isClearedByUs:Z

.field private final sizeDeterminer:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

.field public final view:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    sget v0, Lcom/bumptech/glide/R$id;->glide_custom_view_target_tag:I

    .line 3
    sput v0, Lcom/bumptech/glide/request/target/ViewTarget;->tagId:I

    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/BaseTarget;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    .line 3
    new-instance v0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/ViewTarget;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_8

    .line 5
    invoke-virtual {p0}, Lcom/bumptech/glide/request/target/ViewTarget;->waitForLayout()Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_8
    return-void
.end method

.method private getTag()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    .line 3
    sget v1, Lcom/bumptech/glide/request/target/ViewTarget;->tagId:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private maybeAddAttachStateListener()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 3
    if-eqz v0, :cond_11

    .line 5
    iget-boolean v1, p0, Lcom/bumptech/glide/request/target/ViewTarget;->isAttachStateListenerAdded:Z

    .line 7
    if-eqz v1, :cond_9

    .line 9
    goto :goto_11

    .line 10
    :cond_9
    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->isAttachStateListenerAdded:Z

    .line 18
    :cond_11
    :goto_11
    return-void
.end method

.method private maybeRemoveAttachStateListener()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 3
    if-eqz v0, :cond_11

    .line 5
    iget-boolean v1, p0, Lcom/bumptech/glide/request/target/ViewTarget;->isAttachStateListenerAdded:Z

    .line 7
    if-nez v1, :cond_9

    .line 9
    goto :goto_11

    .line 10
    :cond_9
    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->isAttachStateListenerAdded:Z

    .line 18
    :cond_11
    :goto_11
    return-void
.end method

.method private setTag(Ljava/lang/Object;)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/bumptech/glide/request/target/ViewTarget;->isTagUsedAtLeastOnce:Z

    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    .line 6
    sget v1, Lcom/bumptech/glide/request/target/ViewTarget;->tagId:I

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 11
    return-void
.end method

.method public static setTagId(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-boolean v0, Lcom/bumptech/glide/request/target/ViewTarget;->isTagUsedAtLeastOnce:Z

    .line 3
    if-nez v0, :cond_7

    .line 5
    sput p0, Lcom/bumptech/glide/request/target/ViewTarget;->tagId:I

    .line 7
    return-void

    .line 8
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 10
    const-string v0, "You cannot set the tag id more than once or change the tag id after the first request has been made"

    .line 12
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p0
.end method


# virtual methods
.method public final clearOnDetach()Lcom/bumptech/glide/request/target/ViewTarget;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/target/ViewTarget<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object p0

    .line 6
    :cond_5
    new-instance v0, Lcom/bumptech/glide/request/target/ViewTarget$1;

    .line 8
    invoke-direct {v0, p0}, Lcom/bumptech/glide/request/target/ViewTarget$1;-><init>(Lcom/bumptech/glide/request/target/ViewTarget;)V

    .line 11
    iput-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 13
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget;->maybeAddAttachStateListener()V

    .line 16
    return-object p0
.end method

.method public getRequest()Lcom/bumptech/glide/request/Request;
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget;->getTag()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_15

    .line 7
    instance-of v1, v0, Lcom/bumptech/glide/request/Request;

    .line 9
    if-eqz v1, :cond_d

    .line 11
    check-cast v0, Lcom/bumptech/glide/request/Request;

    .line 13
    goto :goto_16

    .line 14
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 16
    const-string v1, "You must not call setTag() on a view Glide is targeting"

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    throw v0

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    :goto_16
    return-object v0
.end method

.method public getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    .line 3
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    .line 6
    return-void
.end method

.method public getView()Landroid/view/View;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/BaseTarget;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Lcom/bumptech/glide/request/target/ViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    .line 6
    invoke-virtual {p1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->clearCallbacksAndListener()V

    .line 9
    iget-boolean p1, p0, Lcom/bumptech/glide/request/target/ViewTarget;->isClearedByUs:Z

    .line 11
    if-nez p1, :cond_f

    .line 13
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget;->maybeRemoveAttachStateListener()V

    .line 16
    :cond_f
    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/BaseTarget;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget;->maybeAddAttachStateListener()V

    .line 7
    return-void
.end method

.method public pauseMyRequest()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/target/ViewTarget;->getRequest()Lcom/bumptech/glide/request/Request;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/bumptech/glide/request/target/ViewTarget;->isClearedByUs:Z

    .line 10
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->isClearedByUs:Z

    .line 16
    :cond_f
    return-void
.end method

.method public removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    .line 3
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    .line 6
    return-void
.end method

.method public resumeMyRequest()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/target/ViewTarget;->getRequest()Lcom/bumptech/glide/request/Request;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isCleared()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_f

    .line 13
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->begin()V

    .line 16
    :cond_f
    return-void
.end method

.method public setRequest(Lcom/bumptech/glide/request/Request;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/ViewTarget;->setTag(Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "Target for: "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public final waitForLayout()Lcom/bumptech/glide/request/target/ViewTarget;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/target/ViewTarget<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->waitForLayout:Z

    .line 6
    return-object p0
.end method
