.class public Lmiuix/internal/hybrid/webkit/WebkitFactoryProvider;
.super Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;
.source "WebkitFactoryProvider.java"


# instance fields
.field private mCookieManager:Lmiuix/hybrid/CookieManager;

.field private mCookieSyncManager:Lmiuix/internal/hybrid/provider/AbsCookieSyncManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createWebChromeClient(Lmiuix/hybrid/HybridChromeClient;Lmiuix/hybrid/HybridView;)Lmiuix/internal/hybrid/provider/AbsWebChromeClient;
    .registers 4

    new-instance v0, Lmiuix/internal/hybrid/webkit/WebChromeClient;

    invoke-direct {v0, p1, p2}, Lmiuix/internal/hybrid/webkit/WebChromeClient;-><init>(Lmiuix/hybrid/HybridChromeClient;Lmiuix/hybrid/HybridView;)V

    return-object v0
.end method

.method public createWebView(Landroid/content/Context;Lmiuix/hybrid/HybridView;)Lmiuix/internal/hybrid/provider/AbsWebView;
    .registers 4

    new-instance v0, Lmiuix/internal/hybrid/webkit/WebView;

    invoke-direct {v0, p1, p2}, Lmiuix/internal/hybrid/webkit/WebView;-><init>(Landroid/content/Context;Lmiuix/hybrid/HybridView;)V

    return-object v0
.end method

.method public createWebViewClient(Lmiuix/hybrid/HybridViewClient;Lmiuix/hybrid/HybridView;)Lmiuix/internal/hybrid/provider/AbsWebViewClient;
    .registers 4

    new-instance v0, Lmiuix/internal/hybrid/webkit/WebViewClient;

    invoke-direct {v0, p1, p2}, Lmiuix/internal/hybrid/webkit/WebViewClient;-><init>(Lmiuix/hybrid/HybridViewClient;Lmiuix/hybrid/HybridView;)V

    return-object v0
.end method

.method public getCookieManager()Lmiuix/hybrid/CookieManager;
    .registers 3

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebkitFactoryProvider;->mCookieManager:Lmiuix/hybrid/CookieManager;

    if-nez v0, :cond_f

    new-instance v0, Lmiuix/internal/hybrid/webkit/CookieManagerAdapter;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/internal/hybrid/webkit/CookieManagerAdapter;-><init>(Landroid/webkit/CookieManager;)V

    iput-object v0, p0, Lmiuix/internal/hybrid/webkit/WebkitFactoryProvider;->mCookieManager:Lmiuix/hybrid/CookieManager;

    :cond_f
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebkitFactoryProvider;->mCookieManager:Lmiuix/hybrid/CookieManager;

    return-object v0
.end method

.method public getCookieSyncManager()Lmiuix/internal/hybrid/provider/AbsCookieSyncManager;
    .registers 2

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebkitFactoryProvider;->mCookieSyncManager:Lmiuix/internal/hybrid/provider/AbsCookieSyncManager;

    if-nez v0, :cond_b

    new-instance v0, Lmiuix/internal/hybrid/webkit/CookieSyncManagerDelegate;

    invoke-direct {v0}, Lmiuix/internal/hybrid/webkit/CookieSyncManagerDelegate;-><init>()V

    iput-object v0, p0, Lmiuix/internal/hybrid/webkit/WebkitFactoryProvider;->mCookieSyncManager:Lmiuix/internal/hybrid/provider/AbsCookieSyncManager;

    :cond_b
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebkitFactoryProvider;->mCookieSyncManager:Lmiuix/internal/hybrid/provider/AbsCookieSyncManager;

    return-object v0
.end method
