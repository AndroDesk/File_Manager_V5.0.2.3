.class public final Lm0/m;
.super Ljava/lang/Object;
.source "MenuHostHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0/m$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lm0/o;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lm0/m;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lm0/m;->c:Ljava/util/HashMap;

    .line 18
    iput-object p1, p0, Lm0/m;->a:Ljava/lang/Runnable;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Lm0/o;Landroidx/lifecycle/m;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lm0/m;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lm0/m;->a:Ljava/lang/Runnable;

    .line 8
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 11
    invoke-interface {p2}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 14
    move-result-object p2

    .line 15
    iget-object v0, p0, Lm0/m;->c:Ljava/util/HashMap;

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lm0/m$a;

    .line 23
    if-eqz v0, :cond_22

    .line 25
    iget-object v1, v0, Lm0/m$a;->a:Landroidx/lifecycle/Lifecycle;

    .line 27
    iget-object v2, v0, Lm0/m$a;->b:Landroidx/lifecycle/k;

    .line 29
    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle;->c(Landroidx/lifecycle/l;)V

    .line 32
    const/4 v1, 0x0

    .line 33
    iput-object v1, v0, Lm0/m$a;->b:Landroidx/lifecycle/k;

    .line 35
    :cond_22
    new-instance v0, Lm0/k;

    .line 37
    invoke-direct {v0, p0, p1}, Lm0/k;-><init>(Lm0/m;Lm0/o;)V

    .line 40
    iget-object v1, p0, Lm0/m;->c:Ljava/util/HashMap;

    .line 42
    new-instance v2, Lm0/m$a;

    .line 44
    invoke-direct {v2, p2, v0}, Lm0/m$a;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/k;)V

    .line 47
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public final b(Lm0/o;Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$State;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lm0/m;->c:Ljava/util/HashMap;

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lm0/m$a;

    .line 13
    if-eqz v0, :cond_18

    .line 15
    iget-object v1, v0, Lm0/m$a;->a:Landroidx/lifecycle/Lifecycle;

    .line 17
    iget-object v2, v0, Lm0/m$a;->b:Landroidx/lifecycle/k;

    .line 19
    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle;->c(Landroidx/lifecycle/l;)V

    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, v0, Lm0/m$a;->b:Landroidx/lifecycle/k;

    .line 25
    :cond_18
    new-instance v0, Lm0/l;

    .line 27
    invoke-direct {v0, p0, p3, p1}, Lm0/l;-><init>(Lm0/m;Landroidx/lifecycle/Lifecycle$State;Lm0/o;)V

    .line 30
    iget-object p3, p0, Lm0/m;->c:Ljava/util/HashMap;

    .line 32
    new-instance v1, Lm0/m$a;

    .line 34
    invoke-direct {v1, p2, v0}, Lm0/m$a;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/k;)V

    .line 37
    invoke-virtual {p3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public final c(Lm0/o;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lm0/m;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lm0/m;->c:Ljava/util/HashMap;

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lm0/m$a;

    .line 14
    if-eqz p1, :cond_19

    .line 16
    iget-object v0, p1, Lm0/m$a;->a:Landroidx/lifecycle/Lifecycle;

    .line 18
    iget-object v1, p1, Lm0/m$a;->b:Landroidx/lifecycle/k;

    .line 20
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->c(Landroidx/lifecycle/l;)V

    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p1, Lm0/m$a;->b:Landroidx/lifecycle/k;

    .line 26
    :cond_19
    iget-object p1, p0, Lm0/m;->a:Ljava/lang/Runnable;

    .line 28
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 31
    return-void
.end method
