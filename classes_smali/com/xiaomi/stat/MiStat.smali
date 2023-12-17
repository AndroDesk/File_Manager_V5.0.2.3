.class public Lcom/xiaomi/stat/MiStat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stat/MiStat$NetworkType;,
        Lcom/xiaomi/stat/MiStat$UserProperty;,
        Lcom/xiaomi/stat/MiStat$Event;,
        Lcom/xiaomi/stat/MiStat$Param;
    }
.end annotation


# static fields
.field private static a:Lcom/xiaomi/stat/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    const-string v1, "must init sdk before use!"

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    throw v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 4
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    .line 6
    invoke-virtual {v0}, Lcom/xiaomi/stat/e;->c()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public static getUploadInterval()I
    .registers 1

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 4
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    .line 6
    invoke-virtual {v0}, Lcom/xiaomi/stat/e;->b()I

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public static getUploadNetworkType()I
    .registers 1

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 4
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    .line 6
    invoke-virtual {v0}, Lcom/xiaomi/stat/e;->a()I

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 1
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    if-nez v0, :cond_c

    .line 2
    new-instance v0, Lcom/xiaomi/stat/e;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaomi/stat/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    return-void

    .line 3
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "duplicate sdk init!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 12

    .line 4
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    if-nez v0, :cond_12

    .line 5
    new-instance v0, Lcom/xiaomi/stat/e;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/stat/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    return-void

    .line 6
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "duplicate sdk init!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setCustomPrivacyState(Z)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 4
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    .line 6
    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->d(Z)V

    .line 9
    return-void
.end method

.method public static setDebugModeEnabled(Z)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 4
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    .line 6
    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->f(Z)V

    .line 9
    return-void
.end method

.method public static setExceptionCatcherEnabled(Z)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 4
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    .line 6
    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->c(Z)V

    .line 9
    return-void
.end method

.method public static setIdentifiedUserProperty(Lcom/xiaomi/stat/MiStatParams;)V
    .registers 2

    .line 3
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 4
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->b(Lcom/xiaomi/stat/MiStatParams;)V

    return-void
.end method

.method public static setIdentifiedUserProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 2
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/stat/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setInternationalRegion(ZLjava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 4
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    .line 6
    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/stat/e;->a(ZLjava/lang/String;)V

    .line 9
    return-void
.end method

.method public static setNetworkAccessEnabled(Z)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 4
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    .line 6
    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->b(Z)V

    .line 9
    return-void
.end method

.method public static setStatisticEnabled(Z)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 4
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    .line 6
    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->a(Z)V

    .line 9
    return-void
.end method

.method public static setUploadInterval(I)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 4
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    .line 6
    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->b(I)V

    .line 9
    return-void
.end method

.method public static setUploadNetworkType(I)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 4
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    .line 6
    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->a(I)V

    .line 9
    return-void
.end method

.method public static setUseSystemUploadingService(Z)Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 2
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->e(Z)Z

    move-result p0

    return p0
.end method

.method public static setUseSystemUploadingService(ZZ)Z
    .registers 3

    .line 3
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 4
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/stat/e;->a(ZZ)Z

    move-result p0

    return p0
.end method

.method public static setUserId(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 4
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    .line 6
    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->e(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static setUserProperty(Lcom/xiaomi/stat/MiStatParams;)V
    .registers 2

    .line 3
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 4
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/MiStatParams;)V

    return-void
.end method

.method public static setUserProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 2
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/stat/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 2
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .registers 3

    .line 5
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 6
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/stat/e;->b(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 3
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 4
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/stat/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .registers 4

    .line 7
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 8
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/stat/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    return-void
.end method

.method public static trackException(Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 2
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static trackException(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    .line 3
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 4
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/stat/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static trackHttpEvent(Lcom/xiaomi/stat/HttpEvent;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 4
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    .line 6
    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/HttpEvent;)V

    .line 9
    return-void
.end method

.method public static trackIdentifiedEvent(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 2
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static trackIdentifiedEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .registers 3

    .line 5
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 6
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/stat/e;->b(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    return-void
.end method

.method public static trackIdentifiedEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 3
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 4
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/stat/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackIdentifiedEvent(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .registers 4

    .line 7
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 8
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/stat/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    return-void
.end method

.method public static trackNetAvaliable(Lcom/xiaomi/stat/NetAvailableEvent;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 4
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    .line 6
    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/NetAvailableEvent;)V

    .line 9
    return-void
.end method

.method public static trackPageEnd(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 2
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static trackPageEnd(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .registers 3

    .line 3
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 4
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/stat/e;->a(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    return-void
.end method

.method public static trackPageStart(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 4
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    .line 6
    invoke-virtual {v0, p0}, Lcom/xiaomi/stat/e;->a(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static trackPlainTextEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/MiStat;->a()V

    .line 4
    sget-object v0, Lcom/xiaomi/stat/MiStat;->a:Lcom/xiaomi/stat/e;

    .line 6
    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/stat/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    return-void
.end method
