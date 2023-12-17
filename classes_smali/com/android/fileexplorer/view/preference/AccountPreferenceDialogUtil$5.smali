.class Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$5;
.super Ljava/lang/Object;
.source "AccountPreferenceDialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil;->showInputFTPAccountDialog(Landroid/content/Context;Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$dialog:Lmiuix/appcompat/app/AlertDialog;

.field public final synthetic val$listener:Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;

.field public final synthetic val$userName:Landroid/widget/EditText;

.field public final synthetic val$userPwd:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;Lmiuix/appcompat/app/AlertDialog;Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$5;->val$userName:Landroid/widget/EditText;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$5;->val$userPwd:Landroid/widget/EditText;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$5;->val$dialog:Lmiuix/appcompat/app/AlertDialog;

    .line 7
    iput-object p4, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$5;->val$listener:Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$5;->val$userName:Landroid/widget/EditText;

    .line 3
    if-eqz p1, :cond_38

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$5;->val$userPwd:Landroid/widget/EditText;

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_38

    .line 10
    :cond_9
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$5;->val$userPwd:Landroid/widget/EditText;

    .line 16
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil;->ftpAccountValid(Landroid/text/Editable;Landroid/text/Editable;)Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_32

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil;->saveFTPAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$5;->val$dialog:Lmiuix/appcompat/app/AlertDialog;

    .line 39
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 42
    iget-object p1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$5;->val$listener:Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;

    .line 44
    if-eqz p1, :cond_38

    .line 46
    const/4 v0, 0x1

    .line 47
    invoke-interface {p1, v0}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;->onAccountChange(Z)V

    .line 50
    goto :goto_38

    .line 51
    :cond_32
    const p1, 0x7f1101c4

    .line 54
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 57
    :cond_38
    :goto_38
    return-void
.end method
