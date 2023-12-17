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

    :try_start_0
    sget-object v0, Lj2/a$a;->a:Lj2/b;
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_f

    if-eqz v0, :cond_7

    sput-object v0, Lj2/a;->a:Lj2/b;

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Scheduler Callable returned null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v0

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static a()Lj2/b;
    .registers 2

    sget-object v0, Lj2/a;->a:Lj2/b;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "scheduler == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
