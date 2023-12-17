.class public Lmiuix/hybrid/HybridChromeClient;
.super Ljava/lang/Object;
.source "HybridChromeClient.java"


# instance fields
.field private mManager:Lmiuix/internal/hybrid/HybridManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lmiuix/hybrid/HybridChromeClient;->mManager:Lmiuix/internal/hybrid/HybridManager;

    invoke-virtual {p2}, Lmiuix/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lmiuix/hybrid/HybridChromeClient$3;

    invoke-direct {p2, p0, p4}, Lmiuix/hybrid/HybridChromeClient$3;-><init>(Lmiuix/hybrid/HybridChromeClient;Lmiuix/hybrid/JsResult;)V

    const p3, 0x104000a

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lmiuix/hybrid/HybridChromeClient$2;

    invoke-direct {p2, p0, p4}, Lmiuix/hybrid/HybridChromeClient$2;-><init>(Lmiuix/hybrid/HybridChromeClient;Lmiuix/hybrid/JsResult;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lmiuix/hybrid/HybridChromeClient$1;

    invoke-direct {p2, p0, p4}, Lmiuix/hybrid/HybridChromeClient$1;-><init>(Lmiuix/hybrid/HybridChromeClient;Lmiuix/hybrid/JsResult;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p1, 0x1

    return p1
.end method

.method public onJsConfirm(Lmiuix/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiuix/hybrid/JsResult;)Z
    .registers 5

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lmiuix/hybrid/HybridChromeClient;->mManager:Lmiuix/internal/hybrid/HybridManager;

    invoke-virtual {p2}, Lmiuix/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lmiuix/hybrid/HybridChromeClient$7;

    invoke-direct {p2, p0, p4}, Lmiuix/hybrid/HybridChromeClient$7;-><init>(Lmiuix/hybrid/HybridChromeClient;Lmiuix/hybrid/JsResult;)V

    const p3, 0x104000a

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lmiuix/hybrid/HybridChromeClient$6;

    invoke-direct {p2, p0, p4}, Lmiuix/hybrid/HybridChromeClient$6;-><init>(Lmiuix/hybrid/HybridChromeClient;Lmiuix/hybrid/JsResult;)V

    const/high16 p3, 0x1040000

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lmiuix/hybrid/HybridChromeClient$5;

    invoke-direct {p2, p0, p4}, Lmiuix/hybrid/HybridChromeClient$5;-><init>(Lmiuix/hybrid/HybridChromeClient;Lmiuix/hybrid/JsResult;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lmiuix/hybrid/HybridChromeClient$4;

    invoke-direct {p2, p0, p4}, Lmiuix/hybrid/HybridChromeClient$4;-><init>(Lmiuix/hybrid/HybridChromeClient;Lmiuix/hybrid/JsResult;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p1, 0x1

    return p1
.end method

.method public onProgressChanged(Lmiuix/hybrid/HybridView;I)V
    .registers 3

    invoke-virtual {p1, p2}, Lmiuix/hybrid/HybridView;->setProgress(I)V

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

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lmiuix/hybrid/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setHybridManager(Lmiuix/internal/hybrid/HybridManager;)V
    .registers 2

    iput-object p1, p0, Lmiuix/hybrid/HybridChromeClient;->mManager:Lmiuix/internal/hybrid/HybridManager;

    return-void
.end method
