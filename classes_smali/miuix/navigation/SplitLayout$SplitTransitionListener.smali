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
.method public constructor <init>(Lmiuix/navigation/SplitLayout;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lmiuix/navigation/SplitLayout$SplitTransitionListener;->mView:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigation/SplitLayout$SplitTransitionListener;->mView:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/navigation/SplitLayout;

    .line 9
    if-eqz v0, :cond_1d

    .line 11
    invoke-static {v0}, Lmiuix/navigation/SplitLayout;->access$500(Lmiuix/navigation/SplitLayout;)Lmiuix/navigation/SplitLayout$SplitListener;

    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_1d

    .line 17
    if-eqz p1, :cond_1d

    .line 19
    invoke-static {v0}, Lmiuix/navigation/SplitLayout;->access$500(Lmiuix/navigation/SplitLayout;)Lmiuix/navigation/SplitLayout$SplitListener;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    invoke-interface {v0, p1}, Lmiuix/navigation/SplitLayout$SplitListener;->onSplitStart(Ljava/lang/String;)V

    .line 30
    :cond_1d
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigation/SplitLayout$SplitTransitionListener;->mView:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/navigation/SplitLayout;

    .line 9
    if-eqz v0, :cond_42

    .line 11
    if-eqz p1, :cond_42

    .line 13
    invoke-static {v0}, Lmiuix/navigation/SplitLayout;->access$500(Lmiuix/navigation/SplitLayout;)Lmiuix/navigation/SplitLayout$SplitListener;

    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_42

    .line 19
    invoke-static {v0}, Lmiuix/navigation/SplitLayout;->access$500(Lmiuix/navigation/SplitLayout;)Lmiuix/navigation/SplitLayout$SplitListener;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v1, v2}, Lmiuix/navigation/SplitLayout$SplitListener;->onSplitEnd(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    const-string v2, "open"

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_31

    .line 42
    invoke-static {v0}, Lmiuix/navigation/SplitLayout;->access$500(Lmiuix/navigation/SplitLayout;)Lmiuix/navigation/SplitLayout$SplitListener;

    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1}, Lmiuix/navigation/SplitLayout$SplitListener;->onSplitOpen()V

    .line 49
    goto :goto_42

    .line 50
    :cond_31
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_42

    .line 60
    invoke-static {v0}, Lmiuix/navigation/SplitLayout;->access$500(Lmiuix/navigation/SplitLayout;)Lmiuix/navigation/SplitLayout$SplitListener;

    .line 63
    move-result-object p1

    .line 64
    invoke-interface {p1}, Lmiuix/navigation/SplitLayout$SplitListener;->onSplitClose()V

    .line 67
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

    .line 1
    iget-object p1, p0, Lmiuix/navigation/SplitLayout$SplitTransitionListener;->mView:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lmiuix/navigation/SplitLayout;

    .line 9
    if-eqz p1, :cond_2e

    .line 11
    invoke-static {p1}, Lmiuix/navigation/SplitLayout;->access$500(Lmiuix/navigation/SplitLayout;)Lmiuix/navigation/SplitLayout$SplitListener;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_2e

    .line 17
    instance-of v0, p2, Ljava/util/List;

    .line 19
    if-eqz v0, :cond_2e

    .line 21
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 24
    move-result v0

    .line 25
    if-lez v0, :cond_2e

    .line 27
    check-cast p2, Ljava/util/List;

    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object p2

    .line 34
    check-cast p2, Lmiuix/animation/listener/UpdateInfo;

    .line 36
    invoke-static {p1}, Lmiuix/navigation/SplitLayout;->access$500(Lmiuix/navigation/SplitLayout;)Lmiuix/navigation/SplitLayout$SplitListener;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 43
    move-result p2

    .line 44
    invoke-interface {p1, p2}, Lmiuix/navigation/SplitLayout$SplitListener;->onSplitProgress(F)V

    .line 47
    :cond_2e
    return-void
.end method
