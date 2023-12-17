.class public abstract Lmiuix/internal/hybrid/provider/AbsWebChromeClient;
.super Ljava/lang/Object;
.source "AbsWebChromeClient.java"


# instance fields
.field public mHybridChromeClient:Lmiuix/hybrid/HybridChromeClient;

.field public mHybridView:Lmiuix/hybrid/HybridView;


# direct methods
.method public constructor <init>(Lmiuix/hybrid/HybridChromeClient;Lmiuix/hybrid/HybridView;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/internal/hybrid/provider/AbsWebChromeClient;->mHybridChromeClient:Lmiuix/hybrid/HybridChromeClient;

    .line 6
    iput-object p2, p0, Lmiuix/internal/hybrid/provider/AbsWebChromeClient;->mHybridView:Lmiuix/hybrid/HybridView;

    .line 8
    return-void
.end method


# virtual methods
.method public getWebChromeClient()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lmiuix/hybrid/GeolocationPermissions$Callback;)V
    .registers 3

    return-void
.end method

.method public onJsAlert(Lmiuix/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiuix/hybrid/JsResult;)Z
    .registers 5

    const/4 p1, 0x0

    return p1
.end method

.method public onJsConfirm(Lmiuix/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiuix/hybrid/JsResult;)Z
    .registers 5

    const/4 p1, 0x0

    return p1
.end method

.method public onProgressChanged(Lmiuix/hybrid/HybridView;I)V
    .registers 3

    return-void
.end method

.method public onReceivedTitle(Lmiuix/hybrid/HybridView;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onShowFileChooser(Lmiuix/hybrid/HybridView;Lmiuix/hybrid/ValueCallback;Lmiuix/hybrid/FileChooserParams;)Z
    .registers 4
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

    const/4 p1, 0x0

    return p1
.end method

.method public openFileChooser(Lmiuix/hybrid/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
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

    return-void
.end method
