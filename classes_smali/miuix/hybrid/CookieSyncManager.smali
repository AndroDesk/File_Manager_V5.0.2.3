.class public final Lmiuix/hybrid/CookieSyncManager;
.super Ljava/lang/Object;
.source "CookieSyncManager.java"


# static fields
.field private static sRef:Lmiuix/hybrid/CookieSyncManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lmiuix/hybrid/CookieSyncManager;
    .registers 2

    invoke-static {}, Lmiuix/hybrid/CookieSyncManager;->getCookieSyncManager()Lmiuix/internal/hybrid/provider/AbsCookieSyncManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiuix/internal/hybrid/provider/AbsCookieSyncManager;->createInstance(Landroid/content/Context;)V

    invoke-static {}, Lmiuix/hybrid/CookieSyncManager;->getInstance()Lmiuix/hybrid/CookieSyncManager;

    move-result-object p0

    return-object p0
.end method

.method private static getCookieSyncManager()Lmiuix/internal/hybrid/provider/AbsCookieSyncManager;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lmiuix/internal/hybrid/provider/WebViewFactory;->getProvider(Landroid/content/Context;)Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;->getCookieSyncManager()Lmiuix/internal/hybrid/provider/AbsCookieSyncManager;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lmiuix/hybrid/CookieSyncManager;
    .registers 1

    invoke-static {}, Lmiuix/hybrid/CookieSyncManager;->getCookieSyncManager()Lmiuix/internal/hybrid/provider/AbsCookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/internal/hybrid/provider/AbsCookieSyncManager;->getInstance()V

    sget-object v0, Lmiuix/hybrid/CookieSyncManager;->sRef:Lmiuix/hybrid/CookieSyncManager;

    if-nez v0, :cond_12

    new-instance v0, Lmiuix/hybrid/CookieSyncManager;

    invoke-direct {v0}, Lmiuix/hybrid/CookieSyncManager;-><init>()V

    sput-object v0, Lmiuix/hybrid/CookieSyncManager;->sRef:Lmiuix/hybrid/CookieSyncManager;

    :cond_12
    sget-object v0, Lmiuix/hybrid/CookieSyncManager;->sRef:Lmiuix/hybrid/CookieSyncManager;

    return-object v0
.end method

.method public static sync()V
    .registers 1

    invoke-static {}, Lmiuix/hybrid/CookieSyncManager;->getCookieSyncManager()Lmiuix/internal/hybrid/provider/AbsCookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/internal/hybrid/provider/AbsCookieSyncManager;->sync()V

    return-void
.end method
