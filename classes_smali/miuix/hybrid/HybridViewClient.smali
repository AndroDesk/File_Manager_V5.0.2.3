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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lmiuix/internal/webkit/WebViewClientDelegate;

    .line 6
    invoke-direct {v0}, Lmiuix/internal/webkit/WebViewClientDelegate;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/hybrid/HybridViewClient;->mWebViewClientDelegate:Lmiuix/internal/webkit/WebViewClientDelegate;

    .line 11
    return-void
.end method


# virtual methods
.method public onPageFinished(Lmiuix/hybrid/HybridView;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/HybridViewClient;->mManager:Lmiuix/internal/hybrid/HybridManager;

    .line 3
    invoke-virtual {v0}, Lmiuix/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1d

    .line 13
    iget-object v0, p0, Lmiuix/hybrid/HybridViewClient;->mManager:Lmiuix/internal/hybrid/HybridManager;

    .line 15
    invoke-virtual {v0}, Lmiuix/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1}, Lmiuix/hybrid/HybridView;->getTitle()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 30
    :cond_1d
    iget-object v0, p0, Lmiuix/hybrid/HybridViewClient;->mWebViewClientDelegate:Lmiuix/internal/webkit/WebViewClientDelegate;

    .line 32
    invoke-virtual {p1}, Lmiuix/hybrid/HybridView;->getWebView()Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p1, p2}, Lmiuix/internal/webkit/WebViewClientDelegate;->onPageFinished(Lmiuix/internal/hybrid/provider/AbsWebView;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public onPageStarted(Lmiuix/hybrid/HybridView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    .line 1
    new-instance v0, Lmiuix/hybrid/PageContext;

    .line 3
    invoke-direct {v0}, Lmiuix/hybrid/PageContext;-><init>()V

    .line 6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lmiuix/hybrid/PageContext;->setId(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p2}, Lmiuix/hybrid/PageContext;->setUrl(Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lmiuix/hybrid/HybridViewClient;->mManager:Lmiuix/internal/hybrid/HybridManager;

    .line 22
    invoke-virtual {v1, v0}, Lmiuix/internal/hybrid/HybridManager;->setPageContext(Lmiuix/hybrid/PageContext;)V

    .line 25
    iget-object v0, p0, Lmiuix/hybrid/HybridViewClient;->mManager:Lmiuix/internal/hybrid/HybridManager;

    .line 27
    invoke-virtual {v0}, Lmiuix/internal/hybrid/HybridManager;->onPageChange()V

    .line 30
    invoke-virtual {p1, p2}, Lmiuix/hybrid/HybridView;->setWebProvider(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Lmiuix/hybrid/HybridView;->setLoadingError(Z)V

    .line 37
    iget-object v0, p0, Lmiuix/hybrid/HybridViewClient;->mWebViewClientDelegate:Lmiuix/internal/webkit/WebViewClientDelegate;

    .line 39
    invoke-virtual {p1}, Lmiuix/hybrid/HybridView;->getWebView()Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, p1, p2, p3}, Lmiuix/internal/webkit/WebViewClientDelegate;->onPageStarted(Lmiuix/internal/hybrid/provider/AbsWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 46
    return-void
.end method

.method public onReceivedError(Lmiuix/hybrid/HybridView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    const/4 p2, 0x1

    .line 2
    invoke-virtual {p1, p2}, Lmiuix/hybrid/HybridView;->setLoadingError(Z)V

    .line 5
    invoke-virtual {p1}, Lmiuix/hybrid/HybridView;->showReloadView()V

    .line 8
    return-void
.end method

.method public onReceivedLoginRequest(Lmiuix/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/HybridViewClient;->mWebViewClientDelegate:Lmiuix/internal/webkit/WebViewClientDelegate;

    .line 3
    invoke-virtual {p1}, Lmiuix/hybrid/HybridView;->getWebView()Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/internal/webkit/WebViewClientDelegate;->onReceivedLoginRequest(Lmiuix/internal/hybrid/provider/AbsWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public onReceivedSslError(Lmiuix/hybrid/HybridView;Lmiuix/hybrid/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    .line 1
    invoke-virtual {p2}, Lmiuix/hybrid/SslErrorHandler;->cancel()V

    .line 4
    return-void
.end method

.method public setHybridManager(Lmiuix/internal/hybrid/HybridManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/hybrid/HybridViewClient;->mManager:Lmiuix/internal/hybrid/HybridManager;

    .line 3
    return-void
.end method

.method public shouldInterceptRequest(Lmiuix/hybrid/HybridView;Ljava/lang/String;)Lmiuix/hybrid/HybridResourceResponse;
    .registers 7

    .line 1
    const/4 p1, 0x0

    .line 2
    if-eqz p2, :cond_44

    .line 4
    const-string v0, "http"

    .line 6
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_44

    .line 12
    const-string v0, "android_asset/hybrid/"

    .line 14
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 17
    move-result v0

    .line 18
    if-ltz v0, :cond_44

    .line 20
    add-int/lit8 v0, v0, 0x15

    .line 22
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 25
    move-result v1

    .line 26
    if-ge v0, v1, :cond_44

    .line 28
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 32
    :try_start_1f
    new-instance v0, Lmiuix/hybrid/HybridResourceResponse;

    .line 34
    iget-object v1, p0, Lmiuix/hybrid/HybridViewClient;->mManager:Lmiuix/internal/hybrid/HybridManager;

    .line 36
    invoke-virtual {v1}, Lmiuix/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 43
    move-result-object v1

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    const-string v3, "hybrid/"

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 64
    move-result-object p2

    .line 65
    invoke-direct {v0, p1, p1, p2}, Lmiuix/hybrid/HybridResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_43} :catch_44

    .line 68
    move-object p1, v0

    .line 69
    :catch_44
    :cond_44
    return-object p1
.end method

.method public shouldOverrideUrlLoading(Lmiuix/hybrid/HybridView;Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/HybridViewClient;->mWebViewClientDelegate:Lmiuix/internal/webkit/WebViewClientDelegate;

    .line 3
    invoke-virtual {p1}, Lmiuix/hybrid/HybridView;->getWebView()Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1, p2}, Lmiuix/internal/webkit/WebViewClientDelegate;->shouldOverrideUrlLoading(Lmiuix/internal/hybrid/provider/AbsWebView;Ljava/lang/String;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method
