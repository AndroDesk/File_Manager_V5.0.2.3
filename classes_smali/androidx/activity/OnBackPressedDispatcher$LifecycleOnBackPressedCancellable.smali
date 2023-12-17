.class Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;
.super Ljava/lang/Object;
.source "OnBackPressedDispatcher.java"

# interfaces
.implements Landroidx/lifecycle/k;
.implements Landroidx/activity/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/OnBackPressedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LifecycleOnBackPressedCancellable"
.end annotation


# instance fields
.field public final a:Landroidx/lifecycle/Lifecycle;

.field public final b:Landroidx/activity/h;

.field public c:Landroidx/activity/OnBackPressedDispatcher$b;

.field public final synthetic d:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method public constructor <init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/Lifecycle;Landroidx/activity/h;)V
    .registers 4

    .line 1
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Landroidx/activity/OnBackPressedDispatcher;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->a:Landroidx/lifecycle/Lifecycle;

    .line 8
    iput-object p3, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b:Landroidx/activity/h;

    .line 10
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/l;)V

    .line 13
    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->a:Landroidx/lifecycle/Lifecycle;

    .line 3
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->c(Landroidx/lifecycle/l;)V

    .line 6
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b:Landroidx/activity/h;

    .line 8
    invoke-virtual {v0, p0}, Landroidx/activity/h;->removeCancellable(Landroidx/activity/a;)V

    .line 11
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Landroidx/activity/OnBackPressedDispatcher$b;

    .line 13
    if-eqz v0, :cond_14

    .line 15
    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher$b;->cancel()V

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Landroidx/activity/OnBackPressedDispatcher$b;

    .line 21
    :cond_14
    return-void
.end method

.method public final onStateChanged(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 5

    .line 1
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 3
    if-ne p2, p1, :cond_26

    .line 5
    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Landroidx/activity/OnBackPressedDispatcher;

    .line 7
    iget-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b:Landroidx/activity/h;

    .line 9
    iget-object v0, p1, Landroidx/activity/OnBackPressedDispatcher;->b:Ljava/util/ArrayDeque;

    .line 11
    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$b;

    .line 16
    invoke-direct {v0, p1, p2}, Landroidx/activity/OnBackPressedDispatcher$b;-><init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/activity/h;)V

    .line 19
    invoke-virtual {p2, v0}, Landroidx/activity/h;->addCancellable(Landroidx/activity/a;)V

    .line 22
    invoke-static {}, Li0/a;->a()Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_23

    .line 28
    invoke-virtual {p1}, Landroidx/activity/OnBackPressedDispatcher;->c()V

    .line 31
    iget-object p1, p1, Landroidx/activity/OnBackPressedDispatcher;->c:Landroidx/fragment/app/l;

    .line 33
    invoke-virtual {p2, p1}, Landroidx/activity/h;->setIsEnabledConsumer(Ll0/a;)V

    .line 36
    :cond_23
    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Landroidx/activity/OnBackPressedDispatcher$b;

    .line 38
    goto :goto_39

    .line 39
    :cond_26
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 41
    if-ne p2, p1, :cond_32

    .line 43
    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Landroidx/activity/OnBackPressedDispatcher$b;

    .line 45
    if-eqz p1, :cond_39

    .line 47
    invoke-virtual {p1}, Landroidx/activity/OnBackPressedDispatcher$b;->cancel()V

    .line 50
    goto :goto_39

    .line 51
    :cond_32
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 53
    if-ne p2, p1, :cond_39

    .line 55
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->cancel()V

    .line 58
    :cond_39
    :goto_39
    return-void
.end method
