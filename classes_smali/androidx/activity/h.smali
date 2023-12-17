.class public abstract Landroidx/activity/h;
.super Ljava/lang/Object;
.source "OnBackPressedCallback.java"


# instance fields
.field private mCancellables:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/activity/a;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mEnabledConsumer:Ll0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/activity/h;->mCancellables:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    iput-boolean p1, p0, Landroidx/activity/h;->mEnabled:Z

    .line 13
    return-void
.end method


# virtual methods
.method public addCancellable(Landroidx/activity/a;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/activity/h;->mCancellables:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public abstract handleOnBackPressed()V
.end method

.method public final isEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/activity/h;->mEnabled:Z

    .line 3
    return v0
.end method

.method public final remove()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/activity/h;->mCancellables:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/activity/a;

    .line 19
    invoke-interface {v1}, Landroidx/activity/a;->cancel()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public removeCancellable(Landroidx/activity/a;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/activity/h;->mCancellables:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public final setEnabled(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Landroidx/activity/h;->mEnabled:Z

    .line 3
    iget-object v0, p0, Landroidx/activity/h;->mEnabledConsumer:Ll0/a;

    .line 5
    if-eqz v0, :cond_d

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    move-result-object p1

    .line 11
    invoke-interface {v0, p1}, Ll0/a;->accept(Ljava/lang/Object;)V

    .line 14
    :cond_d
    return-void
.end method

.method public setIsEnabledConsumer(Ll0/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/activity/h;->mEnabledConsumer:Ll0/a;

    .line 3
    return-void
.end method
