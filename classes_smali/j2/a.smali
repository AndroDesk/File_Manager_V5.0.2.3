.class public final Lj2/a;
.super Ljava/lang/Object;
.source "AndroidSchedulers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj2/a$a;
    }
.end annotation


# static fields
.field public static final a:Lj2/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    :try_start_0
    sget-object v0, Lj2/a$a;->a:Lj2/b;
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_f

    .line 3
    if-eqz v0, :cond_7

    .line 5
    sput-object v0, Lj2/a;->a:Lj2/b;

    .line 7
    return-void

    .line 8
    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/NullPointerException;

    .line 10
    const-string v1, "Scheduler Callable returned null"

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 15
    throw v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_f

    .line 16
    :catchall_f
    move-exception v0

    .line 17
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 20
    move-result-object v0

    .line 21
    throw v0
.end method

.method public static a()Lj2/b;
    .registers 2

    .line 1
    sget-object v0, Lj2/a;->a:Lj2/b;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    .line 8
    const-string v1, "scheduler == null"

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 13
    throw v0
.end method
