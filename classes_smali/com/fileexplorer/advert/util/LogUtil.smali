.class public Lcom/fileexplorer/advert/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field public static IS_DEBUG_AD:Z = false

.field public static IS_DEBUG_CLOSE_AD:Z = false

.field public static IS_DEBUG_PF:Z = false

.field private static IS_LOG_DEBUG:Z = false

.field private static IS_OPEN_IGNORE:Z = false

.field private static final TAG:Ljava/lang/String; = "FE_LOG"

.field public static final TAG_AD:Ljava/lang/String; = "FE_AD_LOG"

.field private static final TAG_DEBUG_AD:Ljava/lang/String; = "FE_AD"

.field private static final TAG_DEBUG_CLOSE_AD:Ljava/lang/String; = "FE_CLOSE_AD"

.field private static final TAG_DEBUG_PF:Ljava/lang/String; = "FE_PF"

.field private static final TAG_EXCEPTION:Ljava/lang/String; = "FE_EXCEPION"

.field private static final TAG_IGNORE:Ljava/lang/String; = "FE_IGNORE"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "FE_LOG"

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/fileexplorer/advert/util/LogUtil;->IS_LOG_DEBUG:Z

    .line 10
    const-string v0, "FE_IGNORE"

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 15
    move-result v0

    .line 16
    sput-boolean v0, Lcom/fileexplorer/advert/util/LogUtil;->IS_OPEN_IGNORE:Z

    .line 18
    const-string v0, "FE_AD"

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 23
    move-result v0

    .line 24
    sput-boolean v0, Lcom/fileexplorer/advert/util/LogUtil;->IS_DEBUG_AD:Z

    .line 26
    const-string v0, "FE_CLOSE_AD"

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 31
    move-result v0

    .line 32
    sput-boolean v0, Lcom/fileexplorer/advert/util/LogUtil;->IS_DEBUG_CLOSE_AD:Z

    .line 34
    const-string v0, "FE_PF"

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 39
    move-result v0

    .line 40
    sput-boolean v0, Lcom/fileexplorer/advert/util/LogUtil;->IS_DEBUG_PF:Z

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    const-string v0, ""

    .line 1
    invoke-static {v0, p0}, Lcom/fileexplorer/advert/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FE_AD_LOG"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 3

    .line 2
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string p0, ""

    const-string v1, "FE_EXCEPION"

    invoke-static {p0, v1, v0}, Lcom/fileexplorer/advert/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FE_LOG"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FE_LOG"

    invoke-static {p1, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, ""

    .line 4
    invoke-static {p0, v0, p1}, Lcom/fileexplorer/advert/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, ""

    const-string v1, "FE_EXCEPION"

    .line 3
    invoke-static {v0, v1, p0}, Lcom/fileexplorer/advert/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, ": "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    const-string v0, "FE_AD_LOG"

    .line 20
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method

.method public static ignore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 1
    sget-boolean v0, Lcom/fileexplorer/advert/util/LogUtil;->IS_OPEN_IGNORE:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string p0, ": "

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    const-string p1, "FE_LOG"

    .line 28
    invoke-static {p1, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    return-void
.end method

.method public static isDebug()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/fileexplorer/advert/util/LogUtil;->IS_LOG_DEBUG:Z

    .line 3
    return v0
.end method

.method public static setDebug(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lcom/fileexplorer/advert/util/LogUtil;->IS_LOG_DEBUG:Z

    .line 3
    const-string p0, "setDebug true"

    .line 5
    invoke-static {p0}, Lcom/fileexplorer/advert/util/LogUtil;->d(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 2

    const-string v0, "FE_AD_LOG"

    .line 2
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FE_LOG"

    invoke-static {p1, p0}, Lcom/fileexplorer/advert/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
