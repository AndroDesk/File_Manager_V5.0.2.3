.class Lmiuix/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/hybrid/webkit/WebChromeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalWebChromeClient"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/internal/hybrid/webkit/WebChromeClient;


# direct methods
.method public constructor <init>(Lmiuix/internal/hybrid/webkit/WebChromeClient;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->this$0:Lmiuix/internal/hybrid/webkit/WebChromeClient;

    .line 3
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->this$0:Lmiuix/internal/hybrid/webkit/WebChromeClient;

    .line 3
    new-instance v1, Lmiuix/internal/hybrid/webkit/GeolocationPermissionsCallback;

    .line 5
    invoke-direct {v1, p2}, Lmiuix/internal/hybrid/webkit/GeolocationPermissionsCallback;-><init>(Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 8
    invoke-virtual {v0, p1, v1}, Lmiuix/internal/hybrid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lmiuix/hybrid/GeolocationPermissions$Callback;)V

    .line 11
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6

    .line 1
    new-instance p1, Lmiuix/internal/hybrid/webkit/JsResult;

    .line 3
    invoke-direct {p1, p4}, Lmiuix/internal/hybrid/webkit/JsResult;-><init>(Landroid/webkit/JsResult;)V

    .line 6
    iget-object p4, p0, Lmiuix/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->this$0:Lmiuix/internal/hybrid/webkit/WebChromeClient;

    .line 8
    invoke-static {p4}, Lmiuix/internal/hybrid/webkit/WebChromeClient;->access$000(Lmiuix/internal/hybrid/webkit/WebChromeClient;)Lmiuix/hybrid/HybridView;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p4, v0, p2, p3, p1}, Lmiuix/internal/hybrid/webkit/WebChromeClient;->onJsAlert(Lmiuix/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiuix/hybrid/JsResult;)Z

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6

    .line 1
    new-instance p1, Lmiuix/internal/hybrid/webkit/JsResult;

    .line 3
    invoke-direct {p1, p4}, Lmiuix/internal/hybrid/webkit/JsResult;-><init>(Landroid/webkit/JsResult;)V

    .line 6
    iget-object p4, p0, Lmiuix/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->this$0:Lmiuix/internal/hybrid/webkit/WebChromeClient;

    .line 8
    invoke-static {p4}, Lmiuix/internal/hybrid/webkit/WebChromeClient;->access$100(Lmiuix/internal/hybrid/webkit/WebChromeClient;)Lmiuix/hybrid/HybridView;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p4, v0, p2, p3, p1}, Lmiuix/internal/hybrid/webkit/WebChromeClient;->onJsConfirm(Lmiuix/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiuix/hybrid/JsResult;)Z

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 4

    .line 1
    iget-object p1, p0, Lmiuix/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->this$0:Lmiuix/internal/hybrid/webkit/WebChromeClient;

    .line 3
    invoke-static {p1}, Lmiuix/internal/hybrid/webkit/WebChromeClient;->access$200(Lmiuix/internal/hybrid/webkit/WebChromeClient;)Lmiuix/hybrid/HybridView;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0, p2}, Lmiuix/internal/hybrid/webkit/WebChromeClient;->onProgressChanged(Lmiuix/hybrid/HybridView;I)V

    .line 10
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lmiuix/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->this$0:Lmiuix/internal/hybrid/webkit/WebChromeClient;

    .line 3
    invoke-static {p1}, Lmiuix/internal/hybrid/webkit/WebChromeClient;->access$300(Lmiuix/internal/hybrid/webkit/WebChromeClient;)Lmiuix/hybrid/HybridView;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0, p2}, Lmiuix/internal/hybrid/webkit/WebChromeClient;->onReceivedTitle(Lmiuix/hybrid/HybridView;Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 1
    new-instance p1, Lmiuix/internal/hybrid/webkit/ValueCallback;

    .line 3
    invoke-direct {p1, p2}, Lmiuix/internal/hybrid/webkit/ValueCallback;-><init>(Landroid/webkit/ValueCallback;)V

    .line 6
    new-instance p2, Lmiuix/internal/hybrid/webkit/FileChooserParams;

    .line 8
    invoke-direct {p2, p3}, Lmiuix/internal/hybrid/webkit/FileChooserParams;-><init>(Landroid/webkit/WebChromeClient$FileChooserParams;)V

    .line 11
    iget-object p3, p0, Lmiuix/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->this$0:Lmiuix/internal/hybrid/webkit/WebChromeClient;

    .line 13
    invoke-static {p3}, Lmiuix/internal/hybrid/webkit/WebChromeClient;->access$400(Lmiuix/internal/hybrid/webkit/WebChromeClient;)Lmiuix/hybrid/HybridView;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p3, v0, p1, p2}, Lmiuix/internal/hybrid/webkit/WebChromeClient;->onShowFileChooser(Lmiuix/hybrid/HybridView;Lmiuix/hybrid/ValueCallback;Lmiuix/hybrid/FileChooserParams;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lmiuix/internal/hybrid/webkit/ValueCallback;

    .line 3
    invoke-direct {v0, p1}, Lmiuix/internal/hybrid/webkit/ValueCallback;-><init>(Landroid/webkit/ValueCallback;)V

    .line 6
    iget-object p1, p0, Lmiuix/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;->this$0:Lmiuix/internal/hybrid/webkit/WebChromeClient;

    .line 8
    invoke-virtual {p1, v0, p2, p3}, Lmiuix/internal/hybrid/webkit/WebChromeClient;->openFileChooser(Lmiuix/hybrid/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return-void
.end method
