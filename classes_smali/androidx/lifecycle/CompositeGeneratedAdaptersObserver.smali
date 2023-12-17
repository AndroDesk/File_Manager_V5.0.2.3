.class Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;
.super Ljava/lang/Object;
.source "CompositeGeneratedAdaptersObserver.java"

# interfaces
.implements Landroidx/lifecycle/k;


# instance fields
.field public final a:[Landroidx/lifecycle/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>([Landroidx/lifecycle/f;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->a:[Landroidx/lifecycle/f;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 6

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object p1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->a:[Landroidx/lifecycle/f;

    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, p2, :cond_14

    aget-object v2, p1, v1

    invoke-interface {v2}, Landroidx/lifecycle/f;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_14
    iget-object p1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->a:[Landroidx/lifecycle/f;

    array-length p2, p1

    :goto_17
    if-ge v0, p2, :cond_21

    aget-object v1, p1, v0

    invoke-interface {v1}, Landroidx/lifecycle/f;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_21
    return-void
.end method
