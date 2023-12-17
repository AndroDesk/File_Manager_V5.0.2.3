.class public Lcom/miui/maml/folme/TransitionListenerWrapper;
.super Lmiuix/animation/listener/TransitionListener;
.source "TransitionListenerWrapper.java"


# instance fields
.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/folme/MamlTransitionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/maml/folme/MamlTransitionListener;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 4
    if-eqz p1, :cond_c

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    iput-object v0, p0, Lcom/miui/maml/folme/TransitionListenerWrapper;->mRef:Ljava/lang/ref/WeakReference;

    .line 13
    :cond_c
    return-void
.end method


# virtual methods
.method public getListener()Lcom/miui/maml/folme/MamlTransitionListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/folme/TransitionListenerWrapper;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/miui/maml/folme/MamlTransitionListener;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return-object v0
.end method

.method public onBegin(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/folme/TransitionListenerWrapper;->getListener()Lcom/miui/maml/folme/MamlTransitionListener;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0, p1}, Lcom/miui/maml/folme/MamlTransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 10
    :cond_9
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/folme/TransitionListenerWrapper;->getListener()Lcom/miui/maml/folme/MamlTransitionListener;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0, p1}, Lcom/miui/maml/folme/MamlTransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 10
    :cond_9
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/folme/TransitionListenerWrapper;->getListener()Lcom/miui/maml/folme/MamlTransitionListener;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/folme/MamlTransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 10
    :cond_9
    return-void
.end method
