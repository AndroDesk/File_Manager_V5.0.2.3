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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lm0/m;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lm0/m;->c:Ljava/util/HashMap;

    iput-object p1, p0, Lm0/m;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a(Lm0/o;Landroidx/lifecycle/m;)V
    .registers 6

    iget-object v0, p0, Lm0/m;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lm0/m;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-interface {p2}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iget-object v0, p0, Lm0/m;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm0/m$a;

    if-eqz v0, :cond_22

    iget-object v1, v0, Lm0/m$a;->a:Landroidx/lifecycle/Lifecycle;

    iget-object v2, v0, Lm0/m$a;->b:Landroidx/lifecycle/k;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle;->c(Landroidx/lifecycle/l;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lm0/m$a;->b:Landroidx/lifecycle/k;

    :cond_22
    new-instance v0, Lm0/k;

    invoke-direct {v0, p0, p1}, Lm0/k;-><init>(Lm0/m;Lm0/o;)V

    iget-object v1, p0, Lm0/m;->c:Ljava/util/HashMap;

    new-instance v2, Lm0/m$a;

    invoke-direct {v2, p2, v0}, Lm0/m$a;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/k;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Lm0/o;Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$State;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    invoke-interface {p2}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iget-object v0, p0, Lm0/m;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm0/m$a;

    if-eqz v0, :cond_18

    iget-object v1, v0, Lm0/m$a;->a:Landroidx/lifecycle/Lifecycle;

    iget-object v2, v0, Lm0/m$a;->b:Landroidx/lifecycle/k;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle;->c(Landroidx/lifecycle/l;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lm0/m$a;->b:Landroidx/lifecycle/k;

    :cond_18
    new-instance v0, Lm0/l;

    invoke-direct {v0, p0, p3, p1}, Lm0/l;-><init>(Lm0/m;Landroidx/lifecycle/Lifecycle$State;Lm0/o;)V

    iget-object p3, p0, Lm0/m;->c:Ljava/util/HashMap;

    new-instance v1, Lm0/m$a;

    invoke-direct {v1, p2, v0}, Lm0/m$a;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/k;)V

    invoke-virtual {p3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(Lm0/o;)V
    .registers 4

    iget-object v0, p0, Lm0/m;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lm0/m;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm0/m$a;

    if-eqz p1, :cond_19

    iget-object v0, p1, Lm0/m$a;->a:Landroidx/lifecycle/Lifecycle;

    iget-object v1, p1, Lm0/m$a;->b:Landroidx/lifecycle/k;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->c(Landroidx/lifecycle/l;)V

    const/4 v0, 0x0

    iput-object v0, p1, Lm0/m$a;->b:Landroidx/lifecycle/k;

    :cond_19
    iget-object p1, p0, Lm0/m;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
