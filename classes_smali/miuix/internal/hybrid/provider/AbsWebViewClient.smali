.class public abstract Lmiuix/internal/hybrid/provider/AbsWebViewClient;
.super Ljava/lang/Object;
.source "AbsWebViewClient.java"


# instance fields
.field public mHybridView:Lmiuix/hybrid/HybridView;

.field public mHybridViewClient:Lmiuix/hybrid/HybridViewClient;


# direct methods
.method public constructor <init>(Lmiuix/hybrid/HybridViewClient;Lmiuix/hybrid/HybridView;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/internal/hybrid/provider/AbsWebViewClient;->mHybridViewClient:Lmiuix/hybrid/HybridViewClient;

    .line 6
    iput-object p2, p0, Lmiuix/internal/hybrid/provider/AbsWebViewClient;->mHybridView:Lmiuix/hybrid/HybridView;

    .line 8
    return-void
.end method


# virtual methods
.method public getWebViewClient()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onPageFinished(Lmiuix/hybrid/HybridView;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onPageStarted(Lmiuix/hybrid/HybridView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    return-void
.end method

.method public onReceivedError(Lmiuix/hybrid/HybridView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public onReceivedLoginRequest(Lmiuix/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public onReceivedSslError(Lmiuix/hybrid/HybridView;Lmiuix/hybrid/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    return-void
.end method

.method public shouldInterceptRequest(Lmiuix/hybrid/HybridView;Ljava/lang/String;)Lmiuix/hybrid/HybridResourceResponse;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Lmiuix/hybrid/HybridView;Ljava/lang/String;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
