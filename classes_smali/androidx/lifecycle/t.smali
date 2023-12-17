.class public final Landroidx/lifecycle/t;
.super Ljava/lang/Object;
.source "ProcessLifecycleOwner.java"

# interfaces
.implements Landroidx/lifecycle/m;


# static fields
.field public static final i:Landroidx/lifecycle/t;


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Landroid/os/Handler;

.field public final f:Landroidx/lifecycle/n;

.field public g:Landroidx/lifecycle/t$a;

.field public h:Landroidx/lifecycle/t$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/lifecycle/t;

    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/t;-><init>()V

    .line 6
    sput-object v0, Landroidx/lifecycle/t;->i:Landroidx/lifecycle/t;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/lifecycle/t;->a:I

    .line 7
    iput v0, p0, Landroidx/lifecycle/t;->b:I

    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroidx/lifecycle/t;->c:Z

    .line 12
    iput-boolean v0, p0, Landroidx/lifecycle/t;->d:Z

    .line 14
    new-instance v0, Landroidx/lifecycle/n;

    .line 16
    invoke-direct {v0, p0}, Landroidx/lifecycle/n;-><init>(Landroidx/lifecycle/m;)V

    .line 19
    iput-object v0, p0, Landroidx/lifecycle/t;->f:Landroidx/lifecycle/n;

    .line 21
    new-instance v0, Landroidx/lifecycle/t$a;

    .line 23
    invoke-direct {v0, p0}, Landroidx/lifecycle/t$a;-><init>(Landroidx/lifecycle/t;)V

    .line 26
    iput-object v0, p0, Landroidx/lifecycle/t;->g:Landroidx/lifecycle/t$a;

    .line 28
    new-instance v0, Landroidx/lifecycle/t$b;

    .line 30
    invoke-direct {v0, p0}, Landroidx/lifecycle/t$b;-><init>(Landroidx/lifecycle/t;)V

    .line 33
    iput-object v0, p0, Landroidx/lifecycle/t;->h:Landroidx/lifecycle/t$b;

    .line 35
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/lifecycle/t;->b:I

    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Landroidx/lifecycle/t;->b:I

    .line 7
    if-ne v0, v1, :cond_1e

    .line 9
    iget-boolean v0, p0, Landroidx/lifecycle/t;->c:Z

    .line 11
    if-eqz v0, :cond_17

    .line 13
    iget-object v0, p0, Landroidx/lifecycle/t;->f:Landroidx/lifecycle/n;

    .line 15
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 17
    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Landroidx/lifecycle/t;->c:Z

    .line 23
    goto :goto_1e

    .line 24
    :cond_17
    iget-object v0, p0, Landroidx/lifecycle/t;->e:Landroid/os/Handler;

    .line 26
    iget-object v1, p0, Landroidx/lifecycle/t;->g:Landroidx/lifecycle/t$a;

    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 31
    :cond_1e
    :goto_1e
    return-void
.end method

.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/t;->f:Landroidx/lifecycle/n;

    .line 3
    return-object v0
.end method
