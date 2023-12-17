.class public Lmiuix/hybrid/HybridViewClient;
.super Ljava/lang/Object;
.source "HybridViewClient.java"


# static fields
.field private static final ASSET_PATH:Ljava/lang/String; = "hybrid/"

.field private static final VIRTUAL_PATH:Ljava/lang/String; = "android_asset/hybrid/"


# instance fields
.field private mManager:Lmiuix/internal/hybrid/HybridManager;

.field private mWebViewClientDelegate:Lmiuix/internal/webkit/WebViewClientDelegate;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiuix/internal/webkit/WebViewClientDelegate;

    invoke-direct {v0}, Lmiuix/internal/webkit/WebViewClientDelegate;-><init>()V

    iput-object v0, p0, Lmiuix/hybrid/HybridViewClient;->mWebViewClientDelegate:Lmiuix/internal/webkit/WebViewClientDelegate;

    return-void
.end method


# virtual methods
.method public onPageFinished(Lmiuix/hybrid/HybridView;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lmiuix/hybrid/HybridViewClient;->mManager:Lmiuix/internal/hybrid/HybridManager;

    invoke-virtual {v0}, Lmiuix/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lmiuix/hybrid/HybridViewClient;->mManager:Lmiuix/internal/hybrid/HybridManager;

    invoke-virtual {v0}, Lmiuix/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p1}, Lmiuix/hybrid/HybridView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1d
    iget-object v0, p0, Lmiuix/hybrid/HybridViewClient;->mWebViewClientDelegate:Lmiuix/internal/webkit/WebViewClientDelegate;

    invoke-virtual {p1}, Lmiuix/hybrid/HybridView;->getWebView()Lmiuix/internal/hybrid/provider/AbsWebView;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lmiuix/internal/webkit/WebViewClientDelegate;->onPageFinished(Lmiuix/internal/hybrid/provider/AbsWebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Lmiuix/hybrid/HybridView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    new-instance v0, Lmiuix/hybrid/PageContext;

    invoke-direct {v0}, Lmiuix/hybrid/PageContext;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/hybrid/PageContext;->setId(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lmiuix/hybrid/PageContext;->setUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lmiuix/hybrid/HybridViewClient;->mManager:Lmiuix/internal/hybrid/HybridManager;

    invoke-virtual {v1, v0}, Lmiuix/internal/hybrid/HybridManager;->setPageContext(Lmiuix/hybrid/PageContext;)V

    iget-object v0, p0, Lmiuix/hybrid/HybridViewClient;->mManager:Lmiuix/internal/hybrid/HybridManager;

    invoke-virtual {v0}, Lmiuix/internal/hybrid/HybridManager;->onPageChange()V

    invoke-virtual {p1, p2}, Lmiuix/hybrid/HybridView;->setWebProvider(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/hybrid/HybridView;->setLoadingError(Z)V

    iget-object v0, p0, Lmiuix/hybrid/HybridViewClient;->mWebViewClientDelegate:Lmiuix/internal/webkit/WebViewClientDelegate;

    invoke-virtual {p1}, Lmiuix/hybrid/HybridView;->getWebView()Lmiuix/internal/hybrid/provider/AbsWebView;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/internal/webkit/WebViewClientDelegate;->onPageStarted(Lmiuix/internal/hybrid/provider/AbsWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Lmiuix/hybrid/HybridView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lmiuix/hybrid/HybridView;->setLoadingError(Z)V

    invoke-virtual {p1}, Lmiuix/hybrid/HybridView;->showReloadView()V

    return-void
.end method

.method public onReceivedLoginRequest(Lmiuix/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lmiuix/hybrid/HybridViewClient;->mWebViewClientDelegate:Lmiuix/internal/webkit/WebViewClientDelegate;

    invoke-virtual {p1}, Lmiuix/hybrid/HybridView;->getWebView()Lmiuix/internal/hybrid/provider/AbsWebView;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/internal/webkit/WebViewClientDelegate;->onReceivedLoginRequest(Lmiuix/internal/hybrid/provider/AbsWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Lmiuix/hybrid/HybridView;Lmiuix/hybrid/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    invoke-virtual {p2}, Lmiuix/hybrid/SslErrorHandler;->cancel()V

    return-void
.end method

.method public setHybridManager(Lmiuix/internal/hybrid/HybridManager;)V
    .registers 2

    iput-object p1, p0, Lmiuix/hybrid/HybridViewClient;->mManager:Lmiuix/internal/hybrid/HybridManager;

    return-void
.end method

.method public shouldInterceptRequest(Lmiuix/hybrid/HybridView;Ljava/lang/String;)Lmiuix/hybrid/HybridResourceResponse;
    .registers 7

    const/4 p1, 0x0

    if-eqz p2, :cond_44

    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "android_asset/hybrid/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_44

    add-int/lit8 v0, v0, 0x15

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_44

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :try_start_1f
    new-instance v0, Lmiuix/hybrid/HybridResourceResponse;

    iget-object v1, p0, Lmiuix/hybrid/HybridViewClient;->mManager:Lmiuix/internal/hybrid/HybridManager;

    invoke-virtual {v1}, Lmiuix/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hybrid/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {v0, p1, p1, p2}, Lmiuix/hybrid/HybridResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_43} :catch_44

    move-object p1, v0

    :catch_44
    :cond_44
    return-object p1
.end method

.method public shouldOverrideUrlLoading(Lmiuix/hybrid/HybridView;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lmiuix/hybrid/HybridViewClient;->mWebViewClientDelegate:Lmiuix/internal/webkit/WebViewClientDelegate;

    invoke-virtual {p1}, Lmiuix/hybrid/HybridView;->getWebView()Lmiuix/internal/hybrid/provider/AbsWebView;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lmiuix/internal/webkit/WebViewClientDelegate;->shouldOverrideUrlLoading(Lmiuix/internal/hybrid/provider/AbsWebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
