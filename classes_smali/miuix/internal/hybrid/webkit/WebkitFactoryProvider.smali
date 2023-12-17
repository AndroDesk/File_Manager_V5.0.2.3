.class public Lmiuix/internal/hybrid/webkit/WebkitFactoryProvider;
.super Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;
.source "WebkitFactoryProvider.java"


# instance fields
.field private mCookieManager:Lmiuix/hybrid/CookieManager;

.field private mCookieSyncManager:Lmiuix/internal/hybrid/provider/AbsCookieSyncManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public createWebChromeClient(Lmiuix/hybrid/HybridChromeClient;Lmiuix/hybrid/HybridView;)Lmiuix/internal/hybrid/provider/AbsWebChromeClient;
    .registers 4

    .line 1
    new-instance v0, Lmiuix/internal/hybrid/webkit/WebChromeClient;

    .line 3
    invoke-direct {v0, p1, p2}, Lmiuix/internal/hybrid/webkit/WebChromeClient;-><init>(Lmiuix/hybrid/HybridChromeClient;Lmiuix/hybrid/HybridView;)V

    .line 6
    return-object v0
.end method

.method public createWebView(Landroid/content/Context;Lmiuix/hybrid/HybridView;)Lmiuix/internal/hybrid/provider/AbsWebView;
    .registers 4

    .line 1
    new-instance v0, Lmiuix/internal/hybrid/webkit/WebView;

    .line 3
    invoke-direct {v0, p1, p2}, Lmiuix/internal/hybrid/webkit/WebView;-><init>(Landroid/content/Context;Lmiuix/hybrid/HybridView;)V

    .line 6
    return-object v0
.end method

.method public createWebViewClient(Lmiuix/hybrid/HybridViewClient;Lmiuix/hybrid/HybridView;)Lmiuix/internal/hybrid/provider/AbsWebViewClient;
    .registers 4

    .line 1
    new-instance v0, Lmiuix/internal/hybrid/webkit/WebViewClient;

    .line 3
    invoke-direct {v0, p1, p2}, Lmiuix/internal/hybrid/webkit/WebViewClient;-><init>(Lmiuix/hybrid/HybridViewClient;Lmiuix/hybrid/HybridView;)V

    .line 6
    return-object v0
.end method

.method public getCookieManager()Lmiuix/hybrid/CookieManager;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebkitFactoryProvider;->mCookieManager:Lmiuix/hybrid/CookieManager;

    .line 3
    if-nez v0, :cond_f

    .line 5
    new-instance v0, Lmiuix/internal/hybrid/webkit/CookieManagerAdapter;

    .line 7
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lmiuix/internal/hybrid/webkit/CookieManagerAdapter;-><init>(Landroid/webkit/CookieManager;)V

    .line 14
    iput-object v0, p0, Lmiuix/internal/hybrid/webkit/WebkitFactoryProvider;->mCookieManager:Lmiuix/hybrid/CookieManager;

    .line 16
    :cond_f
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebkitFactoryProvider;->mCookieManager:Lmiuix/hybrid/CookieManager;

    .line 18
    return-object v0
.end method

.method public getCookieSyncManager()Lmiuix/internal/hybrid/provider/AbsCookieSyncManager;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebkitFactoryProvider;->mCookieSyncManager:Lmiuix/internal/hybrid/provider/AbsCookieSyncManager;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lmiuix/internal/hybrid/webkit/CookieSyncManagerDelegate;

    .line 7
    invoke-direct {v0}, Lmiuix/internal/hybrid/webkit/CookieSyncManagerDelegate;-><init>()V

    .line 10
    iput-object v0, p0, Lmiuix/internal/hybrid/webkit/WebkitFactoryProvider;->mCookieSyncManager:Lmiuix/internal/hybrid/provider/AbsCookieSyncManager;

    .line 12
    :cond_b
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebkitFactoryProvider;->mCookieSyncManager:Lmiuix/internal/hybrid/provider/AbsCookieSyncManager;

    .line 14
    return-object v0
.end method
