.class Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$3;
.super Ljava/lang/Object;
.source "AccountPreferenceDialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil;->showInputFTPAccountDialog(Landroid/content/Context;Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$listener:Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$3;->val$listener:Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$3;->val$listener:Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;

    .line 6
    if-eqz p1, :cond_b

    .line 8
    const/4 p2, 0x0

    .line 9
    invoke-interface {p1, p2}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;->onAccountChange(Z)V

    .line 12
    :cond_b
    return-void
.end method
