.class public final Lxcrash/a;
.super Ljava/lang/Object;
.source "ActivityMonitor.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public a:I

.field public b:Z

.field public final synthetic c:Lxcrash/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    sget-object v0, Lxcrash/b;->c:Lxcrash/b;

    .line 3
    iput-object v0, p0, Lxcrash/a;->c:Lxcrash/b;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lxcrash/a;->a:I

    .line 11
    iput-boolean v0, p0, Lxcrash/a;->b:Z

    .line 13
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object p2, p0, Lxcrash/a;->c:Lxcrash/b;

    .line 3
    iget-object p2, p2, Lxcrash/b;->a:Ljava/util/LinkedList;

    .line 5
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lxcrash/a;->c:Lxcrash/b;

    .line 10
    iget-object p1, p1, Lxcrash/b;->a:Ljava/util/LinkedList;

    .line 12
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 15
    move-result p1

    .line 16
    const/16 p2, 0x64

    .line 18
    if-le p1, p2, :cond_1a

    .line 20
    iget-object p1, p0, Lxcrash/a;->c:Lxcrash/b;

    .line 22
    iget-object p1, p1, Lxcrash/b;->a:Ljava/util/LinkedList;

    .line 24
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 27
    :cond_1a
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lxcrash/a;->c:Lxcrash/b;

    .line 3
    iget-object v0, v0, Lxcrash/b;->a:Ljava/util/LinkedList;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 8
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget p1, p0, Lxcrash/a;->a:I

    .line 3
    const/4 v0, 0x1

    .line 4
    add-int/2addr p1, v0

    .line 5
    iput p1, p0, Lxcrash/a;->a:I

    .line 7
    if-ne p1, v0, :cond_10

    .line 9
    iget-boolean p1, p0, Lxcrash/a;->b:Z

    .line 11
    if-nez p1, :cond_10

    .line 13
    iget-object p1, p0, Lxcrash/a;->c:Lxcrash/b;

    .line 15
    iput-boolean v0, p1, Lxcrash/b;->b:Z

    .line 17
    :cond_10
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 4
    move-result p1

    .line 5
    iput-boolean p1, p0, Lxcrash/a;->b:Z

    .line 7
    iget v0, p0, Lxcrash/a;->a:I

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 11
    iput v0, p0, Lxcrash/a;->a:I

    .line 13
    if-nez v0, :cond_15

    .line 15
    if-nez p1, :cond_15

    .line 17
    iget-object p1, p0, Lxcrash/a;->c:Lxcrash/b;

    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p1, Lxcrash/b;->b:Z

    .line 22
    :cond_15
    return-void
.end method
