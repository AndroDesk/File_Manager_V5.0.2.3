.class public Lmiuix/webkit/WebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebViewClient.java"


# static fields
.field public static final FEATURE_AUTO_LOGIN:I = 0x2

.field public static final FEATURE_DEEP_LINK:I = 0x1


# instance fields
.field private mDelegate:Lmiuix/internal/webkit/WebViewClientDelegate;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 2
    new-instance v0, Lmiuix/internal/webkit/WebViewClientDelegate;

    invoke-direct {v0}, Lmiuix/internal/webkit/WebViewClientDelegate;-><init>()V

    iput-object v0, p0, Lmiuix/webkit/WebViewClient;->mDelegate:Lmiuix/internal/webkit/WebViewClientDelegate;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    new-instance v0, Lmiuix/internal/webkit/WebViewClientDelegate;

    invoke-direct {v0, p1}, Lmiuix/internal/webkit/WebViewClientDelegate;-><init>(I)V

    iput-object v0, p0, Lmiuix/webkit/WebViewClient;->mDelegate:Lmiuix/internal/webkit/WebViewClientDelegate;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 5
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 6
    new-instance v0, Lmiuix/internal/webkit/WebViewClientDelegate;

    invoke-direct {v0, p1, p2}, Lmiuix/internal/webkit/WebViewClientDelegate;-><init>(II)V

    iput-object v0, p0, Lmiuix/webkit/WebViewClient;->mDelegate:Lmiuix/internal/webkit/WebViewClientDelegate;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/webkit/WebViewClient;->mDelegate:Lmiuix/internal/webkit/WebViewClientDelegate;

    .line 3
    new-instance v1, Lmiuix/internal/webkit/WebViewWrapper;

    .line 5
    invoke-direct {v1, p1}, Lmiuix/internal/webkit/WebViewWrapper;-><init>(Landroid/webkit/WebView;)V

    .line 8
    invoke-virtual {v0, v1, p2}, Lmiuix/internal/webkit/WebViewClientDelegate;->onPageFinished(Lmiuix/internal/hybrid/provider/AbsWebView;Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/webkit/WebViewClient;->mDelegate:Lmiuix/internal/webkit/WebViewClientDelegate;

    .line 3
    new-instance v1, Lmiuix/internal/webkit/WebViewWrapper;

    .line 5
    invoke-direct {v1, p1}, Lmiuix/internal/webkit/WebViewWrapper;-><init>(Landroid/webkit/WebView;)V

    .line 8
    invoke-virtual {v0, v1, p2, p3}, Lmiuix/internal/webkit/WebViewClientDelegate;->onPageStarted(Lmiuix/internal/hybrid/provider/AbsWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 11
    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/webkit/WebViewClient;->mDelegate:Lmiuix/internal/webkit/WebViewClientDelegate;

    .line 3
    new-instance v1, Lmiuix/internal/webkit/WebViewWrapper;

    .line 5
    invoke-direct {v1, p1}, Lmiuix/internal/webkit/WebViewWrapper;-><init>(Landroid/webkit/WebView;)V

    .line 8
    invoke-virtual {v0, v1, p2, p3, p4}, Lmiuix/internal/webkit/WebViewClientDelegate;->onReceivedLoginRequest(Lmiuix/internal/hybrid/provider/AbsWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/webkit/WebViewClient;->mDelegate:Lmiuix/internal/webkit/WebViewClientDelegate;

    .line 3
    new-instance v1, Lmiuix/internal/webkit/WebViewWrapper;

    .line 5
    invoke-direct {v1, p1}, Lmiuix/internal/webkit/WebViewWrapper;-><init>(Landroid/webkit/WebView;)V

    .line 8
    invoke-virtual {v0, v1, p2}, Lmiuix/internal/webkit/WebViewClientDelegate;->shouldOverrideUrlLoading(Lmiuix/internal/hybrid/provider/AbsWebView;Ljava/lang/String;)Z

    .line 11
    move-result p1

    .line 12
    return p1
.end method
