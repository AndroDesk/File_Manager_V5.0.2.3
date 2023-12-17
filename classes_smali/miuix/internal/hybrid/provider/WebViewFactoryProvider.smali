.class public Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;
.super Ljava/lang/Object;
.source "WebViewFactoryProvider.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createWebChromeClient(Lmiuix/hybrid/HybridChromeClient;Lmiuix/hybrid/HybridView;)Lmiuix/internal/hybrid/provider/AbsWebChromeClient;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public createWebView(Landroid/content/Context;Lmiuix/hybrid/HybridView;)Lmiuix/internal/hybrid/provider/AbsWebView;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public createWebViewClient(Lmiuix/hybrid/HybridViewClient;Lmiuix/hybrid/HybridView;)Lmiuix/internal/hybrid/provider/AbsWebViewClient;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCookieManager()Lmiuix/hybrid/CookieManager;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCookieSyncManager()Lmiuix/internal/hybrid/provider/AbsCookieSyncManager;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
