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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/folme/MamlTransitionListener;)V
    .registers 3

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    if-eqz p1, :cond_c

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/maml/folme/TransitionListenerWrapper;->mRef:Ljava/lang/ref/WeakReference;

    :cond_c
    return-void
.end method


# virtual methods
.method public getListener()Lcom/miui/maml/folme/MamlTransitionListener;
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/folme/TransitionListenerWrapper;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/folme/MamlTransitionListener;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public onBegin(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0}, Lcom/miui/maml/folme/TransitionListenerWrapper;->getListener()Lcom/miui/maml/folme/MamlTransitionListener;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/miui/maml/folme/MamlTransitionListener;->onBegin(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0}, Lcom/miui/maml/folme/TransitionListenerWrapper;->getListener()Lcom/miui/maml/folme/MamlTransitionListener;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/miui/maml/folme/MamlTransitionListener;->onComplete(Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/miui/maml/folme/TransitionListenerWrapper;->getListener()Lcom/miui/maml/folme/MamlTransitionListener;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/folme/MamlTransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    :cond_9
    return-void
.end method
