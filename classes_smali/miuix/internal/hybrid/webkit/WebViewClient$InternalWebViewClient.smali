.class Lmiuix/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/hybrid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalWebViewClient"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/internal/hybrid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/internal/hybrid/webkit/WebViewClient;)V
    .registers 2

    iput-object p1, p0, Lmiuix/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->this$0:Lmiuix/internal/hybrid/webkit/WebViewClient;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    iget-object p1, p0, Lmiuix/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->this$0:Lmiuix/internal/hybrid/webkit/WebViewClient;

    invoke-static {p1}, Lmiuix/internal/hybrid/webkit/WebViewClient;->access$100(Lmiuix/internal/hybrid/webkit/WebViewClient;)Lmiuix/hybrid/HybridView;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lmiuix/internal/hybrid/webkit/WebViewClient;->onPageFinished(Lmiuix/hybrid/HybridView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    iget-object p1, p0, Lmiuix/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->this$0:Lmiuix/internal/hybrid/webkit/WebViewClient;

    invoke-static {p1}, Lmiuix/internal/hybrid/webkit/WebViewClient;->access$000(Lmiuix/internal/hybrid/webkit/WebViewClient;)Lmiuix/hybrid/HybridView;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lmiuix/internal/hybrid/webkit/WebViewClient;->onPageStarted(Lmiuix/hybrid/HybridView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object p1, p0, Lmiuix/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->this$0:Lmiuix/internal/hybrid/webkit/WebViewClient;

    invoke-static {p1}, Lmiuix/internal/hybrid/webkit/WebViewClient;->access$500(Lmiuix/internal/hybrid/webkit/WebViewClient;)Lmiuix/hybrid/HybridView;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, p4}, Lmiuix/internal/hybrid/webkit/WebViewClient;->onReceivedError(Lmiuix/hybrid/HybridView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object p1, p0, Lmiuix/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->this$0:Lmiuix/internal/hybrid/webkit/WebViewClient;

    invoke-static {p1}, Lmiuix/internal/hybrid/webkit/WebViewClient;->access$600(Lmiuix/internal/hybrid/webkit/WebViewClient;)Lmiuix/hybrid/HybridView;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, p4}, Lmiuix/internal/hybrid/webkit/WebViewClient;->onReceivedLoginRequest(Lmiuix/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 5

    new-instance p1, Lmiuix/internal/hybrid/webkit/SslErrorHandler;

    invoke-direct {p1, p2}, Lmiuix/internal/hybrid/webkit/SslErrorHandler;-><init>(Landroid/webkit/SslErrorHandler;)V

    iget-object p2, p0, Lmiuix/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->this$0:Lmiuix/internal/hybrid/webkit/WebViewClient;

    invoke-static {p2}, Lmiuix/internal/hybrid/webkit/WebViewClient;->access$400(Lmiuix/internal/hybrid/webkit/WebViewClient;)Lmiuix/hybrid/HybridView;

    move-result-object v0

    invoke-virtual {p2, v0, p1, p3}, Lmiuix/internal/hybrid/webkit/WebViewClient;->onReceivedSslError(Lmiuix/hybrid/HybridView;Lmiuix/hybrid/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 4

    iget-object p1, p0, Lmiuix/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->this$0:Lmiuix/internal/hybrid/webkit/WebViewClient;

    invoke-static {p1}, Lmiuix/internal/hybrid/webkit/WebViewClient;->access$200(Lmiuix/internal/hybrid/webkit/WebViewClient;)Lmiuix/hybrid/HybridView;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lmiuix/internal/hybrid/webkit/WebViewClient;->shouldInterceptRequest(Lmiuix/hybrid/HybridView;Ljava/lang/String;)Lmiuix/hybrid/HybridResourceResponse;

    move-result-object p1

    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_14

    :cond_e
    new-instance p2, Lmiuix/internal/hybrid/webkit/WebResourceResponce;

    invoke-direct {p2, p1}, Lmiuix/internal/hybrid/webkit/WebResourceResponce;-><init>(Lmiuix/hybrid/HybridResourceResponse;)V

    move-object p1, p2

    :goto_14
    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    iget-object p1, p0, Lmiuix/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->this$0:Lmiuix/internal/hybrid/webkit/WebViewClient;

    invoke-static {p1}, Lmiuix/internal/hybrid/webkit/WebViewClient;->access$300(Lmiuix/internal/hybrid/webkit/WebViewClient;)Lmiuix/hybrid/HybridView;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lmiuix/internal/hybrid/webkit/WebViewClient;->shouldOverrideUrlLoading(Lmiuix/hybrid/HybridView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
