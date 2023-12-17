.class public final Landroidx/lifecycle/n$a;
.super Ljava/lang/Object;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroidx/lifecycle/Lifecycle$State;

.field public b:Landroidx/lifecycle/k;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/l;Landroidx/lifecycle/Lifecycle$State;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Landroidx/lifecycle/p;->a:Ljava/util/HashMap;

    .line 6
    instance-of v0, p1, Landroidx/lifecycle/k;

    .line 8
    instance-of v1, p1, Landroidx/lifecycle/e;

    .line 10
    if-eqz v0, :cond_18

    .line 12
    if-eqz v1, :cond_18

    .line 14
    new-instance v0, Landroidx/lifecycle/FullLifecycleObserverAdapter;

    .line 16
    move-object v1, p1

    .line 17
    check-cast v1, Landroidx/lifecycle/e;

    .line 19
    check-cast p1, Landroidx/lifecycle/k;

    .line 21
    invoke-direct {v0, v1, p1}, Landroidx/lifecycle/FullLifecycleObserverAdapter;-><init>(Landroidx/lifecycle/e;Landroidx/lifecycle/k;)V

    .line 24
    goto :goto_7a

    .line 25
    :cond_18
    if-eqz v1, :cond_23

    .line 27
    new-instance v0, Landroidx/lifecycle/FullLifecycleObserverAdapter;

    .line 29
    check-cast p1, Landroidx/lifecycle/e;

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/FullLifecycleObserverAdapter;-><init>(Landroidx/lifecycle/e;Landroidx/lifecycle/k;)V

    .line 35
    goto :goto_7a

    .line 36
    :cond_23
    if-eqz v0, :cond_29

    .line 38
    move-object v0, p1

    .line 39
    check-cast v0, Landroidx/lifecycle/k;

    .line 41
    goto :goto_7a

    .line 42
    :cond_29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Landroidx/lifecycle/p;->c(Ljava/lang/Class;)I

    .line 49
    move-result v1

    .line 50
    const/4 v2, 0x2

    .line 51
    if-ne v1, v2, :cond_75

    .line 53
    sget-object v1, Landroidx/lifecycle/p;->b:Ljava/util/HashMap;

    .line 55
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Ljava/util/List;

    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 64
    move-result v1

    .line 65
    const/4 v2, 0x0

    .line 66
    const/4 v3, 0x1

    .line 67
    if-ne v1, v3, :cond_54

    .line 69
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 75
    invoke-static {v0, p1}, Landroidx/lifecycle/p;->a(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Landroidx/lifecycle/f;

    .line 78
    move-result-object p1

    .line 79
    new-instance v0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;

    .line 81
    invoke-direct {v0, p1}, Landroidx/lifecycle/SingleGeneratedAdapterObserver;-><init>(Landroidx/lifecycle/f;)V

    .line 84
    goto :goto_7a

    .line 85
    :cond_54
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 88
    move-result v1

    .line 89
    new-array v1, v1, [Landroidx/lifecycle/f;

    .line 91
    :goto_5a
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 94
    move-result v3

    .line 95
    if-ge v2, v3, :cond_6f

    .line 97
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 100
    move-result-object v3

    .line 101
    check-cast v3, Ljava/lang/reflect/Constructor;

    .line 103
    invoke-static {v3, p1}, Landroidx/lifecycle/p;->a(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Landroidx/lifecycle/f;

    .line 106
    move-result-object v3

    .line 107
    aput-object v3, v1, v2

    .line 109
    add-int/lit8 v2, v2, 0x1

    .line 111
    goto :goto_5a

    .line 112
    :cond_6f
    new-instance v0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;

    .line 114
    invoke-direct {v0, v1}, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;-><init>([Landroidx/lifecycle/f;)V

    .line 117
    goto :goto_7a

    .line 118
    :cond_75
    new-instance v0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;

    .line 120
    invoke-direct {v0, p1}, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;-><init>(Ljava/lang/Object;)V

    .line 123
    :goto_7a
    iput-object v0, p0, Landroidx/lifecycle/n$a;->b:Landroidx/lifecycle/k;

    .line 125
    iput-object p2, p0, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 127
    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 6

    .line 1
    invoke-virtual {p2}, Landroidx/lifecycle/Lifecycle$Event;->getTargetState()Landroidx/lifecycle/Lifecycle$State;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 7
    if-eqz v0, :cond_f

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 12
    move-result v2

    .line 13
    if-gez v2, :cond_f

    .line 15
    move-object v1, v0

    .line 16
    :cond_f
    iput-object v1, p0, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 18
    iget-object v1, p0, Landroidx/lifecycle/n$a;->b:Landroidx/lifecycle/k;

    .line 20
    invoke-interface {v1, p1, p2}, Landroidx/lifecycle/k;->onStateChanged(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 23
    iput-object v0, p0, Landroidx/lifecycle/n$a;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 25
    return-void
.end method
