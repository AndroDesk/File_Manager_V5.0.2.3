.class public final synthetic Lm0/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/k;


# instance fields
.field public final synthetic a:Lm0/m;

.field public final synthetic b:Landroidx/lifecycle/Lifecycle$State;

.field public final synthetic c:Lm0/o;


# direct methods
.method public synthetic constructor <init>(Lm0/m;Landroidx/lifecycle/Lifecycle$State;Lm0/o;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/l;->a:Lm0/m;

    iput-object p2, p0, Lm0/l;->b:Landroidx/lifecycle/Lifecycle$State;

    iput-object p3, p0, Lm0/l;->c:Lm0/o;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 6

    .line 1
    iget-object p1, p0, Lm0/l;->a:Lm0/m;

    .line 3
    iget-object v0, p0, Lm0/l;->b:Landroidx/lifecycle/Lifecycle$State;

    .line 5
    iget-object v1, p0, Lm0/l;->c:Lm0/o;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {v0}, Landroidx/lifecycle/Lifecycle$Event;->upTo(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    .line 13
    move-result-object v2

    .line 14
    if-ne p2, v2, :cond_1a

    .line 16
    iget-object p2, p1, Lm0/m;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    invoke-virtual {p2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object p1, p1, Lm0/m;->a:Ljava/lang/Runnable;

    .line 23
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 26
    goto :goto_32

    .line 27
    :cond_1a
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 29
    if-ne p2, v2, :cond_22

    .line 31
    invoke-virtual {p1, v1}, Lm0/m;->c(Lm0/o;)V

    .line 34
    goto :goto_32

    .line 35
    :cond_22
    invoke-static {v0}, Landroidx/lifecycle/Lifecycle$Event;->downFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    .line 38
    move-result-object v0

    .line 39
    if-ne p2, v0, :cond_32

    .line 41
    iget-object p2, p1, Lm0/m;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 43
    invoke-virtual {p2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 46
    iget-object p1, p1, Lm0/m;->a:Ljava/lang/Runnable;

    .line 48
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 51
    :cond_32
    :goto_32
    return-void
.end method
