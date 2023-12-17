.class public Lmiuix/hybrid/HybridChromeClient;
.super Ljava/lang/Object;
.source "HybridChromeClient.java"


# instance fields
.field private mManager:Lmiuix/internal/hybrid/HybridManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lmiuix/hybrid/GeolocationPermissions$Callback;)V
    .registers 3

    return-void
.end method

.method public onJsAlert(Lmiuix/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiuix/hybrid/JsResult;)Z
    .registers 5

    .line 1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 3
    iget-object p2, p0, Lmiuix/hybrid/HybridChromeClient;->mManager:Lmiuix/internal/hybrid/HybridManager;

    .line 5
    invoke-virtual {p2}, Lmiuix/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    .line 8
    move-result-object p2

    .line 9
    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 15
    move-result-object p1

    .line 16
    new-instance p2, Lmiuix/hybrid/HybridChromeClient$3;

    .line 18
    invoke-direct {p2, p0, p4}, Lmiuix/hybrid/HybridChromeClient$3;-><init>(Lmiuix/hybrid/HybridChromeClient;Lmiuix/hybrid/JsResult;)V

    .line 21
    const p3, 0x104000a

    .line 24
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 27
    move-result-object p1

    .line 28
    new-instance p2, Lmiuix/hybrid/HybridChromeClient$2;

    .line 30
    invoke-direct {p2, p0, p4}, Lmiuix/hybrid/HybridChromeClient$2;-><init>(Lmiuix/hybrid/HybridChromeClient;Lmiuix/hybrid/JsResult;)V

    .line 33
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 36
    move-result-object p1

    .line 37
    new-instance p2, Lmiuix/hybrid/HybridChromeClient$1;

    .line 39
    invoke-direct {p2, p0, p4}, Lmiuix/hybrid/HybridChromeClient$1;-><init>(Lmiuix/hybrid/HybridChromeClient;Lmiuix/hybrid/JsResult;)V

    .line 42
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 49
    const/4 p1, 0x1

    .line 50
    return p1
.end method

.method public onJsConfirm(Lmiuix/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiuix/hybrid/JsResult;)Z
    .registers 5

    .line 1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 3
    iget-object p2, p0, Lmiuix/hybrid/HybridChromeClient;->mManager:Lmiuix/internal/hybrid/HybridManager;

    .line 5
    invoke-virtual {p2}, Lmiuix/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    .line 8
    move-result-object p2

    .line 9
    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 15
    move-result-object p1

    .line 16
    new-instance p2, Lmiuix/hybrid/HybridChromeClient$7;

    .line 18
    invoke-direct {p2, p0, p4}, Lmiuix/hybrid/HybridChromeClient$7;-><init>(Lmiuix/hybrid/HybridChromeClient;Lmiuix/hybrid/JsResult;)V

    .line 21
    const p3, 0x104000a

    .line 24
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 27
    move-result-object p1

    .line 28
    new-instance p2, Lmiuix/hybrid/HybridChromeClient$6;

    .line 30
    invoke-direct {p2, p0, p4}, Lmiuix/hybrid/HybridChromeClient$6;-><init>(Lmiuix/hybrid/HybridChromeClient;Lmiuix/hybrid/JsResult;)V

    .line 33
    const/high16 p3, 0x1040000

    .line 35
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 38
    move-result-object p1

    .line 39
    new-instance p2, Lmiuix/hybrid/HybridChromeClient$5;

    .line 41
    invoke-direct {p2, p0, p4}, Lmiuix/hybrid/HybridChromeClient$5;-><init>(Lmiuix/hybrid/HybridChromeClient;Lmiuix/hybrid/JsResult;)V

    .line 44
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 47
    move-result-object p1

    .line 48
    new-instance p2, Lmiuix/hybrid/HybridChromeClient$4;

    .line 50
    invoke-direct {p2, p0, p4}, Lmiuix/hybrid/HybridChromeClient$4;-><init>(Lmiuix/hybrid/HybridChromeClient;Lmiuix/hybrid/JsResult;)V

    .line 53
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 60
    const/4 p1, 0x1

    .line 61
    return p1
.end method

.method public onProgressChanged(Lmiuix/hybrid/HybridView;I)V
    .registers 3

    .line 1
    invoke-virtual {p1, p2}, Lmiuix/hybrid/HybridView;->setProgress(I)V

    .line 4
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

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-interface {p1, p2}, Lmiuix/hybrid/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 5
    return-void
.end method

.method public setHybridManager(Lmiuix/internal/hybrid/HybridManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/hybrid/HybridChromeClient;->mManager:Lmiuix/internal/hybrid/HybridManager;

    .line 3
    return-void
.end method
