.class Lmiuix/navigation/SplitLayout$SplitTransitionListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "SplitLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigation/SplitLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitTransitionListener"
.end annotation


# instance fields
.field public mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/navigation/SplitLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigation/SplitLayout;)V
    .registers 3

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/navigation/SplitLayout$SplitTransitionListener;->mView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigation/SplitLayout$SplitTransitionListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/navigation/SplitLayout;

    if-eqz v0, :cond_1d

    invoke-static {v0}, Lmiuix/navigation/SplitLayout;->access$500(Lmiuix/navigation/SplitLayout;)Lmiuix/navigation/SplitLayout$SplitListener;

    move-result-object v1

    if-eqz v1, :cond_1d

    if-eqz p1, :cond_1d

    invoke-static {v0}, Lmiuix/navigation/SplitLayout;->access$500(Lmiuix/navigation/SplitLayout;)Lmiuix/navigation/SplitLayout$SplitListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lmiuix/navigation/SplitLayout$SplitListener;->onSplitStart(Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lmiuix/navigation/SplitLayout$SplitTransitionListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/navigation/SplitLayout;

    if-eqz v0, :cond_42

    if-eqz p1, :cond_42

    invoke-static {v0}, Lmiuix/navigation/SplitLayout;->access$500(Lmiuix/navigation/SplitLayout;)Lmiuix/navigation/SplitLayout$SplitListener;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-static {v0}, Lmiuix/navigation/SplitLayout;->access$500(Lmiuix/navigation/SplitLayout;)Lmiuix/navigation/SplitLayout$SplitListener;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lmiuix/navigation/SplitLayout$SplitListener;->onSplitEnd(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "open"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-static {v0}, Lmiuix/navigation/SplitLayout;->access$500(Lmiuix/navigation/SplitLayout;)Lmiuix/navigation/SplitLayout$SplitListener;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/navigation/SplitLayout$SplitListener;->onSplitOpen()V

    goto :goto_42

    :cond_31
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    invoke-static {v0}, Lmiuix/navigation/SplitLayout;->access$500(Lmiuix/navigation/SplitLayout;)Lmiuix/navigation/SplitLayout$SplitListener;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/navigation/SplitLayout$SplitListener;->onSplitClose()V

    :cond_42
    :goto_42
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

    iget-object p1, p0, Lmiuix/navigation/SplitLayout$SplitTransitionListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/navigation/SplitLayout;

    if-eqz p1, :cond_2e

    invoke-static {p1}, Lmiuix/navigation/SplitLayout;->access$500(Lmiuix/navigation/SplitLayout;)Lmiuix/navigation/SplitLayout$SplitListener;

    move-result-object v0

    if-eqz v0, :cond_2e

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_2e

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_2e

    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiuix/animation/listener/UpdateInfo;

    invoke-static {p1}, Lmiuix/navigation/SplitLayout;->access$500(Lmiuix/navigation/SplitLayout;)Lmiuix/navigation/SplitLayout$SplitListener;

    move-result-object p1

    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lmiuix/navigation/SplitLayout$SplitListener;->onSplitProgress(F)V

    :cond_2e
    return-void
.end method
