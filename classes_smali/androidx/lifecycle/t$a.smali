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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/t;)V
    .registers 2

    iput-object p1, p0, Landroidx/lifecycle/t$a;->a:Landroidx/lifecycle/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroidx/lifecycle/t$a;->a:Landroidx/lifecycle/t;

    iget v1, v0, Landroidx/lifecycle/t;->b:I

    const/4 v2, 0x1

    if-nez v1, :cond_10

    iput-boolean v2, v0, Landroidx/lifecycle/t;->c:Z

    iget-object v0, v0, Landroidx/lifecycle/t;->f:Landroidx/lifecycle/n;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_10
    iget-object v0, p0, Landroidx/lifecycle/t$a;->a:Landroidx/lifecycle/t;

    iget v1, v0, Landroidx/lifecycle/t;->a:I

    if-nez v1, :cond_23

    iget-boolean v1, v0, Landroidx/lifecycle/t;->c:Z

    if-eqz v1, :cond_23

    iget-object v1, v0, Landroidx/lifecycle/t;->f:Landroidx/lifecycle/n;

    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    iput-boolean v2, v0, Landroidx/lifecycle/t;->d:Z

    :cond_23
    return-void
.end method
