.class public Lmiuix/animation/utils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static final COMMA:Ljava/lang/String; = ", "

.field public static final MORE_LOG_ENABLE:Z = false

.field private static volatile sIsLogEnabled:Z

.field private static final sLogHandler:Landroid/os/Handler;

.field private static final sTag:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThread:Landroid/os/HandlerThread;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 3
    const-string v1, "LogThread"

    .line 5
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lmiuix/animation/utils/LogUtils;->sThread:Landroid/os/HandlerThread;

    .line 10
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 15
    sput-object v1, Lmiuix/animation/utils/LogUtils;->sTag:Ljava/util/Map;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 20
    new-instance v1, Lmiuix/animation/utils/LogUtils$1;

    .line 22
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 25
    move-result-object v0

    .line 26
    invoke-direct {v1, v0}, Lmiuix/animation/utils/LogUtils$1;-><init>(Landroid/os/Looper;)V

    .line 29
    sput-object v1, Lmiuix/animation/utils/LogUtils;->sLogHandler:Landroid/os/Handler;

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/util/Map;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/animation/utils/LogUtils;->sTag:Ljava/util/Map;

    .line 3
    return-object v0
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 10

    .line 1
    sget-boolean v0, Lmiuix/animation/utils/LogUtils;->sIsLogEnabled:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    array-length v0, p1

    .line 7
    const-string v1, "miuix_anim"

    .line 9
    if-lez v0, :cond_3d

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string v2, ", "

    .line 15
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 21
    move-result v3

    .line 22
    array-length v4, p1

    .line 23
    const/4 v5, 0x0

    .line 24
    :goto_17
    if-ge v5, v4, :cond_2a

    .line 26
    aget-object v6, p1, v5

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 31
    move-result v7

    .line 32
    if-le v7, v3, :cond_24

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_24
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    add-int/lit8 v5, v5, 0x1

    .line 42
    goto :goto_17

    .line 43
    :cond_2a
    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    goto :goto_40

    .line 62
    :cond_3d
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_40
    return-void
.end method

.method public static getLogEnableInfo()V
    .registers 4

    .line 1
    const-string v0, ""

    .line 3
    :try_start_2
    const-string v1, "log.tag.folme.level"

    .line 5
    invoke-static {v1}, Lmiuix/animation/utils/CommonUtils;->readProp(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_d

    .line 9
    if-nez v1, :cond_b

    .line 11
    goto :goto_15

    .line 12
    :cond_b
    move-object v0, v1

    .line 13
    goto :goto_15

    .line 14
    :catch_d
    move-exception v1

    .line 15
    const-string v2, "miuix_anim"

    .line 17
    const-string v3, "can not access property log.tag.folme.level, no log"

    .line 19
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    :goto_15
    const-string v1, "D"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 28
    sput-boolean v0, Lmiuix/animation/utils/LogUtils;->sIsLogEnabled:Z

    .line 30
    return-void
.end method

.method public static getStackTrace(I)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 8
    move-result-object v0

    .line 9
    array-length v1, v0

    .line 10
    add-int/lit8 p0, p0, 0x4

    .line 12
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    .line 15
    move-result p0

    .line 16
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x3

    .line 21
    invoke-interface {v0, v1, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public static isLogEnabled()Z
    .registers 1

    .line 1
    sget-boolean v0, Lmiuix/animation/utils/LogUtils;->sIsLogEnabled:Z

    .line 3
    return v0
.end method

.method public static logThread(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    sget-object v0, Lmiuix/animation/utils/LogUtils;->sLogHandler:Landroid/os/Handler;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 7
    move-result-object v0

    .line 8
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 13
    move-result p1

    .line 14
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 16
    sget-object v1, Lmiuix/animation/utils/LogUtils;->sTag:Ljava/util/Map;

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object p1

    .line 22
    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28
    return-void
.end method
