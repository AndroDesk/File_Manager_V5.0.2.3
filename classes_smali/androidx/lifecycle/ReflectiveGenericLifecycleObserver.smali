.class Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;
.super Ljava/lang/Object;
.source "ReflectiveGenericLifecycleObserver.java"

# interfaces
.implements Landroidx/lifecycle/k;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroidx/lifecycle/b$a;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->a:Ljava/lang/Object;

    .line 6
    sget-object v0, Landroidx/lifecycle/b;->c:Landroidx/lifecycle/b;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b;->b(Ljava/lang/Class;)Landroidx/lifecycle/b$a;

    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->b:Landroidx/lifecycle/b$a;

    .line 18
    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->b:Landroidx/lifecycle/b$a;

    .line 3
    iget-object v1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->a:Ljava/lang/Object;

    .line 5
    iget-object v2, v0, Landroidx/lifecycle/b$a;->a:Ljava/util/HashMap;

    .line 7
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Ljava/util/List;

    .line 13
    invoke-static {v2, p1, p2, v1}, Landroidx/lifecycle/b$a;->a(Ljava/util/List;Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V

    .line 16
    iget-object v0, v0, Landroidx/lifecycle/b$a;->a:Ljava/util/HashMap;

    .line 18
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;

    .line 20
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/util/List;

    .line 26
    invoke-static {v0, p1, p2, v1}, Landroidx/lifecycle/b$a;->a(Ljava/util/List;Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V

    .line 29
    return-void
.end method
