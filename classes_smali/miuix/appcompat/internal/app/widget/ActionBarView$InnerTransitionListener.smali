.class Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InnerTransitionListener"
.end annotation


# instance fields
.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/internal/app/widget/ActionBarView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;->mRef:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method public onCancel(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;->mRef:Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    .line 9
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;->mRef:Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    .line 9
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 3
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
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 4
    const-string p1, "actionbar_state_change"

    .line 6
    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;->mRef:Ljava/lang/ref/WeakReference;

    .line 15
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 21
    if-nez p2, :cond_17

    .line 23
    return-void

    .line 24
    :cond_17
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 27
    move-result p1

    .line 28
    invoke-static {p2, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$3002(Lmiuix/appcompat/internal/app/widget/ActionBarView;I)I

    .line 31
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 34
    return-void
.end method
