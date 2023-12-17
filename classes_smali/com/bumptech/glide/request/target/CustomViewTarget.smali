.class public abstract Lcom/bumptech/glide/request/target/CustomViewTarget;
.super Ljava/lang/Object;
.source "CustomViewTarget.java"

# interfaces
.implements Lcom/bumptech/glide/request/target/Target;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/target/Target<",
        "TZ;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomViewTarget"

.field private static final VIEW_TAG_ID:I


# instance fields
.field private attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

.field private isAttachStateListenerAdded:Z

.field private isClearedByUs:Z

.field private final sizeDeterminer:Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;

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
    sput v0, Lcom/bumptech/glide/request/target/CustomViewTarget;->VIEW_TAG_ID:I

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/view/View;

    .line 10
    iput-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->view:Landroid/view/View;

    .line 12
    new-instance v0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;

    .line 14
    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;-><init>(Landroid/view/View;)V

    .line 17
    iput-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;

    .line 19
    return-void
.end method

.method private getTag()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->view:Landroid/view/View;

    .line 3
    sget v1, Lcom/bumptech/glide/request/target/CustomViewTarget;->VIEW_TAG_ID:I

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
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 3
    if-eqz v0, :cond_11

    .line 5
    iget-boolean v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->isAttachStateListenerAdded:Z

    .line 7
    if-eqz v1, :cond_9

    .line 9
    goto :goto_11

    .line 10
    :cond_9
    iget-object v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->view:Landroid/view/View;

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->isAttachStateListenerAdded:Z

    .line 18
    :cond_11
    :goto_11
    return-void
.end method

.method private maybeRemoveAttachStateListener()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 3
    if-eqz v0, :cond_11

    .line 5
    iget-boolean v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->isAttachStateListenerAdded:Z

    .line 7
    if-nez v1, :cond_9

    .line 9
    goto :goto_11

    .line 10
    :cond_9
    iget-object v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->view:Landroid/view/View;

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->isAttachStateListenerAdded:Z

    .line 18
    :cond_11
    :goto_11
    return-void
.end method

.method private setTag(Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->view:Landroid/view/View;

    .line 3
    sget v1, Lcom/bumptech/glide/request/target/CustomViewTarget;->VIEW_TAG_ID:I

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 8
    return-void
.end method


# virtual methods
.method public final clearOnDetach()Lcom/bumptech/glide/request/target/CustomViewTarget;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/target/CustomViewTarget<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object p0

    .line 6
    :cond_5
    new-instance v0, Lcom/bumptech/glide/request/target/CustomViewTarget$1;

    .line 8
    invoke-direct {v0, p0}, Lcom/bumptech/glide/request/target/CustomViewTarget$1;-><init>(Lcom/bumptech/glide/request/target/CustomViewTarget;)V

    .line 11
    iput-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 13
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomViewTarget;->maybeAddAttachStateListener()V

    .line 16
    return-object p0
.end method

.method public final getRequest()Lcom/bumptech/glide/request/Request;
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomViewTarget;->getTag()Ljava/lang/Object;

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
    return-object v0

    .line 14
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 16
    const-string v1, "You must not pass non-R.id ids to setTag(id)"

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    throw v0

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method public final getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;

    .line 3
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    .line 6
    return-void
.end method

.method public final getView()Landroid/view/View;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->view:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public final onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;

    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->clearCallbacksAndListener()V

    .line 6
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/target/CustomViewTarget;->onResourceCleared(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-boolean p1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->isClearedByUs:Z

    .line 11
    if-nez p1, :cond_f

    .line 13
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomViewTarget;->maybeRemoveAttachStateListener()V

    .line 16
    :cond_f
    return-void
.end method

.method public final onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomViewTarget;->maybeAddAttachStateListener()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/target/CustomViewTarget;->onResourceLoading(Landroid/graphics/drawable/Drawable;)V

    .line 7
    return-void
.end method

.method public abstract onResourceCleared(Landroid/graphics/drawable/Drawable;)V
.end method

.method public onResourceLoading(Landroid/graphics/drawable/Drawable;)V
    .registers 2

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

.method public final pauseMyRequest()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/target/CustomViewTarget;->getRequest()Lcom/bumptech/glide/request/Request;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->isClearedByUs:Z

    .line 10
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->isClearedByUs:Z

    .line 16
    :cond_f
    return-void
.end method

.method public final removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;

    .line 3
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    .line 6
    return-void
.end method

.method public final resumeMyRequest()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/target/CustomViewTarget;->getRequest()Lcom/bumptech/glide/request/Request;

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

.method public final setRequest(Lcom/bumptech/glide/request/Request;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/CustomViewTarget;->setTag(Ljava/lang/Object;)V

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
    iget-object v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->view:Landroid/view/View;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public final useTagId(I)Lcom/bumptech/glide/request/target/CustomViewTarget;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/request/target/CustomViewTarget<",
            "TT;TZ;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public final waitForLayout()Lcom/bumptech/glide/request/target/CustomViewTarget;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/target/CustomViewTarget<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;

    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->waitForLayout:Z

    .line 6
    return-object p0
.end method
