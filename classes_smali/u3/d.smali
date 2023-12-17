.class public final Lu3/d;
.super Ljava/lang/Object;
.source "Concurrent.kt"


# static fields
.field public static final a:Ljava/lang/reflect/Method;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 1
    :try_start_0
    const-class v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 3
    const-string v1, "setRemoveOnCancelPolicy"

    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v2, v2, [Ljava/lang/Class;

    .line 8
    const/4 v3, 0x0

    .line 9
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 11
    aput-object v4, v2, v3

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    move-result-object v0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    .line 17
    goto :goto_12

    .line 18
    :catchall_11
    const/4 v0, 0x0

    .line 19
    :goto_12
    sput-object v0, Lu3/d;->a:Ljava/lang/reflect/Method;

    .line 21
    return-void
.end method
