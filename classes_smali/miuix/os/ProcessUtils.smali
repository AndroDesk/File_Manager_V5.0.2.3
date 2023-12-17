.class public Lmiuix/os/ProcessUtils;
.super Ljava/lang/Object;
.source "ProcessUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProcessUtils"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/InstantiationException;

    .line 6
    const-string v1, "Cannot instantiate utility class"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static getProcessNameByPid(I)Ljava/lang/String;
    .registers 4

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p0

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object p0, v1, v2

    .line 13
    const-string p0, "/proc/%d/cmdline"

    .line 15
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    :try_start_12
    invoke-static {p0}, Lmiuix/core/util/FileUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_3a

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    .line 28
    move-result v1

    .line 29
    if-ltz v1, :cond_22

    .line 31
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    move-result-object v0
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_22} :catch_23

    .line 35
    :cond_22
    return-object v0

    .line 36
    :catch_23
    move-exception v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    const-string v2, "Fail to read cmdline: "

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    const-string v1, "ProcessUtils"

    .line 56
    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    :cond_3a
    const/4 p0, 0x0

    .line 60
    return-object p0
.end method
