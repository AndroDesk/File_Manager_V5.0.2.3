.class public final Lmiuix/hybrid/CookieSyncManager;
.super Ljava/lang/Object;
.source "CookieSyncManager.java"


# static fields
.field private static sRef:Lmiuix/hybrid/CookieSyncManager;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lmiuix/hybrid/CookieSyncManager;
    .registers 2

    .line 1
    invoke-static {}, Lmiuix/hybrid/CookieSyncManager;->getCookieSyncManager()Lmiuix/internal/hybrid/provider/AbsCookieSyncManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lmiuix/internal/hybrid/provider/AbsCookieSyncManager;->createInstance(Landroid/content/Context;)V

    .line 8
    invoke-static {}, Lmiuix/hybrid/CookieSyncManager;->getInstance()Lmiuix/hybrid/CookieSyncManager;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private static getCookieSyncManager()Lmiuix/internal/hybrid/provider/AbsCookieSyncManager;
    .registers 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lmiuix/internal/hybrid/provider/WebViewFactory;->getProvider(Landroid/content/Context;)Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;

    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;->getCookieSyncManager()Lmiuix/internal/hybrid/provider/AbsCookieSyncManager;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public static getInstance()Lmiuix/hybrid/CookieSyncManager;
    .registers 1

    .line 1
    invoke-static {}, Lmiuix/hybrid/CookieSyncManager;->getCookieSyncManager()Lmiuix/internal/hybrid/provider/AbsCookieSyncManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/internal/hybrid/provider/AbsCookieSyncManager;->getInstance()V

    .line 8
    sget-object v0, Lmiuix/hybrid/CookieSyncManager;->sRef:Lmiuix/hybrid/CookieSyncManager;

    .line 10
    if-nez v0, :cond_12

    .line 12
    new-instance v0, Lmiuix/hybrid/CookieSyncManager;

    .line 14
    invoke-direct {v0}, Lmiuix/hybrid/CookieSyncManager;-><init>()V

    .line 17
    sput-object v0, Lmiuix/hybrid/CookieSyncManager;->sRef:Lmiuix/hybrid/CookieSyncManager;

    .line 19
    :cond_12
    sget-object v0, Lmiuix/hybrid/CookieSyncManager;->sRef:Lmiuix/hybrid/CookieSyncManager;

    .line 21
    return-object v0
.end method

.method public static sync()V
    .registers 1

    .line 1
    invoke-static {}, Lmiuix/hybrid/CookieSyncManager;->getCookieSyncManager()Lmiuix/internal/hybrid/provider/AbsCookieSyncManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/internal/hybrid/provider/AbsCookieSyncManager;->sync()V

    .line 8
    return-void
.end method
