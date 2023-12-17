.class Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;
.super Ljava/lang/Object;
.source "CompositeGeneratedAdaptersObserver.java"

# interfaces
.implements Landroidx/lifecycle/k;


# instance fields
.field public final a:[Landroidx/lifecycle/f;


# direct methods
.method public constructor <init>([Landroidx/lifecycle/f;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->a:[Landroidx/lifecycle/f;

    .line 6
    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 6

    .line 1
    new-instance p1, Ljava/util/HashMap;

    .line 3
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object p1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->a:[Landroidx/lifecycle/f;

    .line 8
    array-length p2, p1

    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    :goto_a
    if-ge v1, p2, :cond_14

    .line 13
    aget-object v2, p1, v1

    .line 15
    invoke-interface {v2}, Landroidx/lifecycle/f;->a()V

    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 20
    goto :goto_a

    .line 21
    :cond_14
    iget-object p1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->a:[Landroidx/lifecycle/f;

    .line 23
    array-length p2, p1

    .line 24
    :goto_17
    if-ge v0, p2, :cond_21

    .line 26
    aget-object v1, p1, v0

    .line 28
    invoke-interface {v1}, Landroidx/lifecycle/f;->a()V

    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 33
    goto :goto_17

    .line 34
    :cond_21
    return-void
.end method
