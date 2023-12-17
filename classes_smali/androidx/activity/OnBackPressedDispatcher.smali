.class public final Landroidx/activity/OnBackPressedDispatcher;
.super Ljava/lang/Object;
.source "OnBackPressedDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/OnBackPressedDispatcher$a;,
        Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;,
        Landroidx/activity/OnBackPressedDispatcher$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/activity/h;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroidx/fragment/app/l;

.field public d:Landroid/window/OnBackInvokedCallback;

.field public e:Landroid/window/OnBackInvokedDispatcher;

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->b:Ljava/util/ArrayDeque;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroidx/activity/OnBackPressedDispatcher;->f:Z

    .line 14
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->a:Ljava/lang/Runnable;

    .line 16
    invoke-static {}, Li0/a;->a()Z

    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_28

    .line 22
    new-instance p1, Landroidx/fragment/app/l;

    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-direct {p1, p0, v0}, Landroidx/fragment/app/l;-><init>(Ljava/lang/Object;I)V

    .line 28
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->c:Landroidx/fragment/app/l;

    .line 30
    new-instance p1, Landroidx/activity/b;

    .line 32
    invoke-direct {p1, p0, v0}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 35
    invoke-static {p1}, Landroidx/activity/OnBackPressedDispatcher$a;->a(Ljava/lang/Runnable;)Landroid/window/OnBackInvokedCallback;

    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->d:Landroid/window/OnBackInvokedCallback;

    .line 41
    :cond_28
    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/m;Landroidx/activity/h;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 11
    if-ne v0, v1, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    .line 16
    invoke-direct {v0, p0, p1, p2}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/Lifecycle;Landroidx/activity/h;)V

    .line 19
    invoke-virtual {p2, v0}, Landroidx/activity/h;->addCancellable(Landroidx/activity/a;)V

    .line 22
    invoke-static {}, Li0/a;->a()Z

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_23

    .line 28
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->c()V

    .line 31
    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->c:Landroidx/fragment/app/l;

    .line 33
    invoke-virtual {p2, p1}, Landroidx/activity/h;->setIsEnabledConsumer(Ll0/a;)V

    .line 36
    :cond_23
    return-void
.end method

.method public final b()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->b:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1c

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/activity/h;

    .line 19
    invoke-virtual {v1}, Landroidx/activity/h;->isEnabled()Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_6

    .line 25
    invoke-virtual {v1}, Landroidx/activity/h;->handleOnBackPressed()V

    .line 28
    return-void

    .line 29
    :cond_1c
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->a:Ljava/lang/Runnable;

    .line 31
    if-eqz v0, :cond_23

    .line 33
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 36
    :cond_23
    return-void
.end method

.method public final c()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->b:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_1c

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/activity/h;

    .line 21
    invoke-virtual {v1}, Landroidx/activity/h;->isEnabled()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_6

    .line 27
    move v0, v2

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move v0, v3

    .line 30
    :goto_1d
    iget-object v1, p0, Landroidx/activity/OnBackPressedDispatcher;->e:Landroid/window/OnBackInvokedDispatcher;

    .line 32
    if-eqz v1, :cond_3c

    .line 34
    if-eqz v0, :cond_2f

    .line 36
    iget-boolean v4, p0, Landroidx/activity/OnBackPressedDispatcher;->f:Z

    .line 38
    if-nez v4, :cond_2f

    .line 40
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->d:Landroid/window/OnBackInvokedCallback;

    .line 42
    invoke-static {v1, v3, v0}, Landroidx/activity/OnBackPressedDispatcher$a;->b(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 45
    iput-boolean v2, p0, Landroidx/activity/OnBackPressedDispatcher;->f:Z

    .line 47
    goto :goto_3c

    .line 48
    :cond_2f
    if-nez v0, :cond_3c

    .line 50
    iget-boolean v0, p0, Landroidx/activity/OnBackPressedDispatcher;->f:Z

    .line 52
    if-eqz v0, :cond_3c

    .line 54
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->d:Landroid/window/OnBackInvokedCallback;

    .line 56
    invoke-static {v1, v0}, Landroidx/activity/OnBackPressedDispatcher$a;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    iput-boolean v3, p0, Landroidx/activity/OnBackPressedDispatcher;->f:Z

    .line 61
    :cond_3c
    :goto_3c
    return-void
.end method
