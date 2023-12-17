.class public final Lj0/o;
.super Ljava/lang/Object;
.source "RequestExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:Ll0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lj0/i;Lj0/j;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lj0/o;->a:Ljava/util/concurrent/Callable;

    .line 6
    iput-object p3, p0, Lj0/o;->b:Ll0/a;

    .line 8
    iput-object p1, p0, Lj0/o;->c:Landroid/os/Handler;

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lj0/o;->a:Ljava/util/concurrent/Callable;

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 6
    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 7
    goto :goto_8

    .line 8
    :catch_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    iget-object v1, p0, Lj0/o;->b:Ll0/a;

    .line 11
    iget-object v2, p0, Lj0/o;->c:Landroid/os/Handler;

    .line 13
    new-instance v3, Lj0/o$a;

    .line 15
    invoke-direct {v3, v1, v0}, Lj0/o$a;-><init>(Ll0/a;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    return-void
.end method
