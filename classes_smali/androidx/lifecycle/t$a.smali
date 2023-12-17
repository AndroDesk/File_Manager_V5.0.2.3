.class public final Landroidx/lifecycle/t$a;
.super Ljava/lang/Object;
.source "ProcessLifecycleOwner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/lifecycle/t;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/t;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/t$a;->a:Landroidx/lifecycle/t;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/t$a;->a:Landroidx/lifecycle/t;

    .line 3
    iget v1, v0, Landroidx/lifecycle/t;->b:I

    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_10

    .line 8
    iput-boolean v2, v0, Landroidx/lifecycle/t;->c:Z

    .line 10
    iget-object v0, v0, Landroidx/lifecycle/t;->f:Landroidx/lifecycle/n;

    .line 12
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 14
    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/lifecycle/t$a;->a:Landroidx/lifecycle/t;

    .line 19
    iget v1, v0, Landroidx/lifecycle/t;->a:I

    .line 21
    if-nez v1, :cond_23

    .line 23
    iget-boolean v1, v0, Landroidx/lifecycle/t;->c:Z

    .line 25
    if-eqz v1, :cond_23

    .line 27
    iget-object v1, v0, Landroidx/lifecycle/t;->f:Landroidx/lifecycle/n;

    .line 29
    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 31
    invoke-virtual {v1, v3}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 34
    iput-boolean v2, v0, Landroidx/lifecycle/t;->d:Z

    .line 36
    :cond_23
    return-void
.end method
