.class public Lmiuix/internal/hybrid/webkit/WebViewClient;
.super Lmiuix/internal/hybrid/provider/AbsWebViewClient;
.source "WebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;
    }
.end annotation


# direct methods
.method public constructor <init>(Lmiuix/hybrid/HybridViewClient;Lmiuix/hybrid/HybridView;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/internal/hybrid/provider/AbsWebViewClient;-><init>(Lmiuix/hybrid/HybridViewClient;Lmiuix/hybrid/HybridView;)V

    .line 4
    return-void
.end method

.method public static synthetic access$000(Lmiuix/internal/hybrid/webkit/WebViewClient;)Lmiuix/hybrid/HybridView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/internal/hybrid/provider/AbsWebViewClient;->mHybridView:Lmiuix/hybrid/HybridView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/internal/hybrid/webkit/WebViewClient;)Lmiuix/hybrid/HybridView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/internal/hybrid/provider/AbsWebViewClient;->mHybridView:Lmiuix/hybrid/HybridView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/internal/hybrid/webkit/WebViewClient;)Lmiuix/hybrid/HybridView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/internal/hybrid/provider/AbsWebViewClient;->mHybridView:Lmiuix/hybrid/HybridView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/internal/hybrid/webkit/WebViewClient;)Lmiuix/hybrid/HybridView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/internal/hybrid/provider/AbsWebViewClient;->mHybridView:Lmiuix/hybrid/HybridView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lmiuix/internal/hybrid/webkit/WebViewClient;)Lmiuix/hybrid/HybridView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/internal/hybrid/provider/AbsWebViewClient;->mHybridView:Lmiuix/hybrid/HybridView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lmiuix/internal/hybrid/webkit/WebViewClient;)Lmiuix/hybrid/HybridView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/internal/hybrid/provider/AbsWebViewClient;->mHybridView:Lmiuix/hybrid/HybridView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lmiuix/internal/hybrid/webkit/WebViewClient;)Lmiuix/hybrid/HybridView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/internal/hybrid/provider/AbsWebViewClient;->mHybridView:Lmiuix/hybrid/HybridView;

    .line 3
    return-object p0
.end method


# virtual methods
.method public getWebViewClient()Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Lmiuix/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;

    .line 3
    invoke-direct {v0, p0}, Lmiuix/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;-><init>(Lmiuix/internal/hybrid/webkit/WebViewClient;)V

    .line 6
    return-object v0
.end method

.method public onPageFinished(Lmiuix/hybrid/HybridView;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/provider/AbsWebViewClient;->mHybridViewClient:Lmiuix/hybrid/HybridViewClient;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/hybrid/HybridViewClient;->onPageFinished(Lmiuix/hybrid/HybridView;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public onPageStarted(Lmiuix/hybrid/HybridView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/provider/AbsWebViewClient;->mHybridViewClient:Lmiuix/hybrid/HybridViewClient;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lmiuix/hybrid/HybridViewClient;->onPageStarted(Lmiuix/hybrid/HybridView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 6
    return-void
.end method

.method public onReceivedError(Lmiuix/hybrid/HybridView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/provider/AbsWebViewClient;->mHybridViewClient:Lmiuix/hybrid/HybridViewClient;

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/hybrid/HybridViewClient;->onReceivedError(Lmiuix/hybrid/HybridView;ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public onReceivedLoginRequest(Lmiuix/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/provider/AbsWebViewClient;->mHybridViewClient:Lmiuix/hybrid/HybridViewClient;

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/hybrid/HybridViewClient;->onReceivedLoginRequest(Lmiuix/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public onReceivedSslError(Lmiuix/hybrid/HybridView;Lmiuix/hybrid/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/provider/AbsWebViewClient;->mHybridViewClient:Lmiuix/hybrid/HybridViewClient;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lmiuix/hybrid/HybridViewClient;->onReceivedSslError(Lmiuix/hybrid/HybridView;Lmiuix/hybrid/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 6
    return-void
.end method

.method public shouldInterceptRequest(Lmiuix/hybrid/HybridView;Ljava/lang/String;)Lmiuix/hybrid/HybridResourceResponse;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/provider/AbsWebViewClient;->mHybridViewClient:Lmiuix/hybrid/HybridViewClient;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/hybrid/HybridViewClient;->shouldInterceptRequest(Lmiuix/hybrid/HybridView;Ljava/lang/String;)Lmiuix/hybrid/HybridResourceResponse;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public shouldOverrideUrlLoading(Lmiuix/hybrid/HybridView;Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/provider/AbsWebViewClient;->mHybridViewClient:Lmiuix/hybrid/HybridViewClient;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/hybrid/HybridViewClient;->shouldOverrideUrlLoading(Lmiuix/hybrid/HybridView;Ljava/lang/String;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method
