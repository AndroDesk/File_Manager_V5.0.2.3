.class public Lmiuix/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;
.super Landroid/app/DialogFragment;
.source "DefaultDeviceAccountLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/webkit/DefaultDeviceAccountLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 3

    .line 1
    new-instance p1, Lmiuix/appcompat/app/ProgressDialog;

    .line 3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    sget v0, Lmiuix/hybrid/R$string;->web_sso_login_message:I

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setIndeterminate(Z)V

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 27
    return-object p1
.end method
