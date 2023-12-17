.class public Lmiuix/internal/hybrid/webkit/WebChromeClient;
.super Lmiuix/internal/hybrid/provider/AbsWebChromeClient;
.source "WebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/hybrid/HybridChromeClient;Lmiuix/hybrid/HybridView;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/internal/hybrid/provider/AbsWebChromeClient;-><init>(Lmiuix/hybrid/HybridChromeClient;Lmiuix/hybrid/HybridView;)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/internal/hybrid/webkit/WebChromeClient;)Lmiuix/hybrid/HybridView;
    .registers 1

    iget-object p0, p0, Lmiuix/internal/hybrid/provider/AbsWebChromeClient;->mHybridView:Lmiuix/hybrid/HybridView;

    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/internal/hybrid/webkit/WebChromeClient;)Lmiuix/hybrid/HybridView;
    .registers 1

    iget-object p0, p0, Lmiuix/internal/hybrid/provider/AbsWebChromeClient;->mHybridView:Lmiuix/hybrid/HybridView;

    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/internal/hybrid/webkit/WebChromeClient;)Lmiuix/hybrid/HybridView;
    .registers 1

    iget-object p0, p0, Lmiuix/internal/hybrid/provider/AbsWebChromeClient;->mHybridView:Lmiuix/hybrid/HybridView;

    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/internal/hybrid/webkit/WebChromeClient;)Lmiuix/hybrid/HybridView;
    .registers 1

    iget-object p0, p0, Lmiuix/internal/hybrid/provider/AbsWebChromeClient;->mHybridView:Lmiuix/hybrid/HybridView;

    return-object p0
.end method

.method public static synthetic access$400(Lmiuix/internal/hybrid/webkit/WebChromeClient;)Lmiuix/hybrid/HybridView;
    .registers 1

    iget-object p0, p0, Lmiuix/internal/hybrid/provider/AbsWebChromeClient;->mHybridView:Lmiuix/hybrid/HybridView;

    return-object p0
.end method


# virtual methods
.method public getWebChromeClient()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lmiuix/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;

    invoke-direct {v0, p0}, Lmiuix/internal/hybrid/webkit/WebChromeClient$InternalWebChromeClient;-><init>(Lmiuix/internal/hybrid/webkit/WebChromeClient;)V

    return-object v0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lmiuix/hybrid/GeolocationPermissions$Callback;)V
    .registers 4

    iget-object v0, p0, Lmiuix/internal/hybrid/provider/AbsWebChromeClient;->mHybridChromeClient:Lmiuix/hybrid/HybridChromeClient;

    invoke-virtual {v0, p1, p2}, Lmiuix/hybrid/HybridChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lmiuix/hybrid/GeolocationPermissions$Callback;)V

    return-void
.end method

.method public onJsAlert(Lmiuix/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiuix/hybrid/JsResult;)Z
    .registers 6

    iget-object v0, p0, Lmiuix/internal/hybrid/provider/AbsWebChromeClient;->mHybridChromeClient:Lmiuix/hybrid/HybridChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/hybrid/HybridChromeClient;->onJsAlert(Lmiuix/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiuix/hybrid/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsConfirm(Lmiuix/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiuix/hybrid/JsResult;)Z
    .registers 6

    iget-object v0, p0, Lmiuix/internal/hybrid/provider/AbsWebChromeClient;->mHybridChromeClient:Lmiuix/hybrid/HybridChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/hybrid/HybridChromeClient;->onJsConfirm(Lmiuix/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiuix/hybrid/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Lmiuix/hybrid/HybridView;I)V
    .registers 4

    iget-object v0, p0, Lmiuix/internal/hybrid/provider/AbsWebChromeClient;->mHybridChromeClient:Lmiuix/hybrid/HybridChromeClient;

    invoke-virtual {v0, p1, p2}, Lmiuix/hybrid/HybridChromeClient;->onProgressChanged(Lmiuix/hybrid/HybridView;I)V

    return-void
.end method

.method public onReceivedTitle(Lmiuix/hybrid/HybridView;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lmiuix/internal/hybrid/provider/AbsWebChromeClient;->mHybridChromeClient:Lmiuix/hybrid/HybridChromeClient;

    invoke-virtual {v0, p1, p2}, Lmiuix/hybrid/HybridChromeClient;->onReceivedTitle(Lmiuix/hybrid/HybridView;Ljava/lang/String;)V

    return-void
.end method

.method public onShowFileChooser(Lmiuix/hybrid/HybridView;Lmiuix/hybrid/ValueCallback;Lmiuix/hybrid/FileChooserParams;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/hybrid/HybridView;",
            "Lmiuix/hybrid/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Lmiuix/hybrid/FileChooserParams;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/internal/hybrid/provider/AbsWebChromeClient;->mHybridChromeClient:Lmiuix/hybrid/HybridChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/hybrid/HybridChromeClient;->onShowFileChooser(Lmiuix/hybrid/HybridView;Lmiuix/hybrid/ValueCallback;Lmiuix/hybrid/FileChooserParams;)Z

    move-result p1

    return p1
.end method

.method public openFileChooser(Lmiuix/hybrid/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/hybrid/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/internal/hybrid/provider/AbsWebChromeClient;->mHybridChromeClient:Lmiuix/hybrid/HybridChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/hybrid/HybridChromeClient;->openFileChooser(Lmiuix/hybrid/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
