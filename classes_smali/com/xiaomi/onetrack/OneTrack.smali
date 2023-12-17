.class public Lcom/xiaomi/onetrack/OneTrack;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/OneTrack$Event;,
        Lcom/xiaomi/onetrack/OneTrack$Param;,
        Lcom/xiaomi/onetrack/OneTrack$NetType;,
        Lcom/xiaomi/onetrack/OneTrack$UserIdType;,
        Lcom/xiaomi/onetrack/OneTrack$Mode;,
        Lcom/xiaomi/onetrack/OneTrack$IEventHook;,
        Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Z


# instance fields
.field private c:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/xiaomi/onetrack/f/a;->a(Landroid/content/Context;)V

    .line 11
    new-instance v0, Lcom/xiaomi/onetrack/api/h;

    .line 13
    invoke-direct {v0, p1, p2}, Lcom/xiaomi/onetrack/api/h;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V

    .line 16
    iput-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->c:Lcom/xiaomi/onetrack/api/h;

    .line 18
    new-instance p1, Lcom/xiaomi/onetrack/DefaultEventHook;

    .line 20
    invoke-direct {p1}, Lcom/xiaomi/onetrack/DefaultEventHook;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/OneTrack;->setEventHook(Lcom/xiaomi/onetrack/OneTrack$IEventHook;)V

    .line 26
    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .registers 2

    .line 1
    if-eqz p0, :cond_a

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/xiaomi/onetrack/f/a;->a(Landroid/content/Context;)V

    .line 10
    return-void

    .line 11
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 13
    const-string v0, "context is null!"

    .line 15
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p0
.end method

.method public static createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;
    .registers 3

    .line 1
    new-instance v0, Lcom/xiaomi/onetrack/OneTrack;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/OneTrack;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V

    .line 6
    return-object v0
.end method

.method public static isDisable()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/xiaomi/onetrack/OneTrack;->a:Z

    .line 3
    return v0
.end method

.method public static isUseSystemNetTrafficOnly()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/xiaomi/onetrack/OneTrack;->b:Z

    .line 3
    return v0
.end method

.method public static registerCrashHook(Landroid/content/Context;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public static sdkVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "2.0.2"

    return-object v0
.end method

.method public static setAccessNetworkEnable(Landroid/content/Context;Z)V
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/xiaomi/onetrack/OneTrack;->a(Landroid/content/Context;)V

    .line 4
    new-instance p0, Lcom/xiaomi/onetrack/OneTrack$1;

    .line 6
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/OneTrack$1;-><init>(Z)V

    .line 9
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    .line 12
    return-void
.end method

.method public static setDebugMode(Z)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/p;->a(Z)V

    .line 4
    return-void
.end method

.method public static setDisable(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lcom/xiaomi/onetrack/OneTrack;->a:Z

    .line 3
    return-void
.end method

.method public static setTestMode(Z)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/p;->b(Z)V

    .line 4
    return-void
.end method

.method public static setUseSystemNetTrafficOnly()V
    .registers 1

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/xiaomi/onetrack/OneTrack;->b:Z

    .line 4
    return-void
.end method


# virtual methods
.method public adTrack(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->c:Lcom/xiaomi/onetrack/api/h;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaomi/onetrack/api/h;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public adTrack(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->c:Lcom/xiaomi/onetrack/api/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/onetrack/api/h;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public clearCommonProperty()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->c:Lcom/xiaomi/onetrack/api/h;

    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/onetrack/api/h;->a()V

    .line 6
    return-void
.end method

.method public getInstanceId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->c:Lcom/xiaomi/onetrack/api/h;

    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/onetrack/api/h;->b()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getOAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->c:Lcom/xiaomi/onetrack/api/h;

    .line 3
    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/h;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public login(Ljava/lang/String;Lcom/xiaomi/onetrack/OneTrack$UserIdType;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/onetrack/OneTrack$UserIdType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaomi/onetrack/OneTrack;->login(Ljava/lang/String;Lcom/xiaomi/onetrack/OneTrack$UserIdType;Ljava/util/Map;Z)V

    return-void
.end method

.method public login(Ljava/lang/String;Lcom/xiaomi/onetrack/OneTrack$UserIdType;Ljava/util/Map;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/onetrack/OneTrack$UserIdType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->c:Lcom/xiaomi/onetrack/api/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaomi/onetrack/api/h;->a(Ljava/lang/String;Lcom/xiaomi/onetrack/OneTrack$UserIdType;Ljava/util/Map;Z)V

    return-void
.end method

.method public logout()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/onetrack/OneTrack;->logout(Ljava/util/Map;Z)V

    return-void
.end method

.method public logout(Ljava/util/Map;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->c:Lcom/xiaomi/onetrack/api/h;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/onetrack/api/h;->a(Ljava/util/Map;Z)V

    return-void
.end method

.method public removeCommonProperty(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->c:Lcom/xiaomi/onetrack/api/h;

    .line 3
    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/h;->b(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public setBasicModeEnable(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->c:Lcom/xiaomi/onetrack/api/h;

    .line 3
    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/h;->c(Z)V

    .line 6
    return-void
.end method

.method public setCommonProperty(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->c:Lcom/xiaomi/onetrack/api/h;

    .line 3
    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/h;->c(Ljava/util/Map;)V

    .line 6
    return-void
.end method

.method public setCustomPrivacyPolicyAccepted(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->c:Lcom/xiaomi/onetrack/api/h;

    .line 3
    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/h;->b(Z)V

    .line 6
    return-void
.end method

.method public setDynamicCommonProperty(Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->c:Lcom/xiaomi/onetrack/api/h;

    .line 3
    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;)V

    .line 6
    return-void
.end method

.method public setEventHook(Lcom/xiaomi/onetrack/OneTrack$IEventHook;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->c:Lcom/xiaomi/onetrack/api/h;

    .line 3
    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/OneTrack$IEventHook;)V

    .line 6
    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->c:Lcom/xiaomi/onetrack/api/h;

    .line 3
    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/h;->c(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public setUserProfile(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->c:Lcom/xiaomi/onetrack/api/h;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/onetrack/api/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUserProfile(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->c:Lcom/xiaomi/onetrack/api/h;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/h;->a(Ljava/util/Map;)V

    return-void
.end method

.method public track(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_a

    .line 3
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 4
    :cond_a
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    :goto_19
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v1, ","

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_2e
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "exp_id"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p2, p0, Lcom/xiaomi/onetrack/OneTrack;->c:Lcom/xiaomi/onetrack/api/h;

    invoke-virtual {p2, p1, v0}, Lcom/xiaomi/onetrack/api/h;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public track(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->c:Lcom/xiaomi/onetrack/api/h;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/onetrack/api/h;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackEventFromH5(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->c:Lcom/xiaomi/onetrack/api/h;

    .line 3
    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/h;->a(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public trackPluginEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->c:Lcom/xiaomi/onetrack/api/h;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/onetrack/api/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 6
    return-void
.end method

.method public trackServiceQualityEvent(Lcom/xiaomi/onetrack/ServiceQualityEvent;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->c:Lcom/xiaomi/onetrack/api/h;

    .line 3
    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/ServiceQualityEvent;)V

    .line 6
    return-void
.end method

.method public userProfileIncrement(Ljava/lang/String;Ljava/lang/Number;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->c:Lcom/xiaomi/onetrack/api/h;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/onetrack/api/h;->a(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public userProfileIncrement(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->c:Lcom/xiaomi/onetrack/api/h;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/h;->b(Ljava/util/Map;)V

    return-void
.end method
