.class public Lorg/greenrobot/eventbus/Logger$AndroidLogger;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Lorg/greenrobot/eventbus/Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/eventbus/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidLogger"
.end annotation


# static fields
.field public static final ANDROID_LOG_AVAILABLE:Z


# instance fields
.field private final tag:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    :try_start_0
    const-string v0, "android.util.Log"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_8

    .line 8
    :catch_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    sput-boolean v0, Lorg/greenrobot/eventbus/Logger$AndroidLogger;->ANDROID_LOG_AVAILABLE:Z

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/greenrobot/eventbus/Logger$AndroidLogger;->tag:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static isAndroidLogAvailable()Z
    .registers 1

    .line 1
    sget-boolean v0, Lorg/greenrobot/eventbus/Logger$AndroidLogger;->ANDROID_LOG_AVAILABLE:Z

    .line 3
    return v0
.end method


# virtual methods
.method public log(Ljava/util/logging/Level;Ljava/lang/String;)V
    .registers 4

    .line 1
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    if-eq p1, v0, :cond_d

    .line 2
    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/Logger$AndroidLogger;->mapLevel(Ljava/util/logging/Level;)I

    move-result p1

    iget-object v0, p0, Lorg/greenrobot/eventbus/Logger$AndroidLogger;->tag:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 3
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    if-eq p1, v0, :cond_1e

    .line 4
    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/Logger$AndroidLogger;->mapLevel(Ljava/util/logging/Level;)I

    move-result p1

    iget-object v0, p0, Lorg/greenrobot/eventbus/Logger$AndroidLogger;->tag:Ljava/lang/String;

    const-string v1, "\n"

    .line 5
    invoke-static {p2, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 6
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return-void
.end method

.method public mapLevel(Ljava/util/logging/Level;)I
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x320

    .line 7
    if-ge p1, v0, :cond_10

    .line 9
    const/16 v0, 0x1f4

    .line 11
    if-ge p1, v0, :cond_e

    .line 13
    const/4 p1, 0x2

    .line 14
    return p1

    .line 15
    :cond_e
    const/4 p1, 0x3

    .line 16
    return p1

    .line 17
    :cond_10
    const/16 v0, 0x384

    .line 19
    if-ge p1, v0, :cond_16

    .line 21
    const/4 p1, 0x4

    .line 22
    return p1

    .line 23
    :cond_16
    const/16 v0, 0x3e8

    .line 25
    if-ge p1, v0, :cond_1c

    .line 27
    const/4 p1, 0x5

    .line 28
    return p1

    .line 29
    :cond_1c
    const/4 p1, 0x6

    .line 30
    return p1
.end method
