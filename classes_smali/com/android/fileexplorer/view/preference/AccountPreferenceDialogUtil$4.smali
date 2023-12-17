.class Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$4;
.super Ljava/lang/Object;
.source "AccountPreferenceDialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil;->showInputFTPAccountDialog(Landroid/content/Context;Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p2, v0, :cond_e

    .line 4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 7
    move-result p2

    .line 8
    const/4 p3, 0x1

    .line 9
    if-ne p2, p3, :cond_e

    .line 11
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 14
    return p3

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    return p1
.end method
