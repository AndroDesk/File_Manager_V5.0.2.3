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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;Lmiuix/appcompat/app/AlertDialog;Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;)V
    .registers 5

    iput-object p1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$5;->val$userName:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$5;->val$userPwd:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$5;->val$dialog:Lmiuix/appcompat/app/AlertDialog;

    iput-object p4, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$5;->val$listener:Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$5;->val$userName:Landroid/widget/EditText;

    if-eqz p1, :cond_38

    iget-object v0, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$5;->val$userPwd:Landroid/widget/EditText;

    if-nez v0, :cond_9

    goto :goto_38

    :cond_9
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$5;->val$userPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil;->ftpAccountValid(Landroid/text/Editable;Landroid/text/Editable;)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil;->saveFTPAccount(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$5;->val$dialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    iget-object p1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$5;->val$listener:Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;

    if-eqz p1, :cond_38

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;->onAccountChange(Z)V

    goto :goto_38

    :cond_32
    const p1, 0x7f1101c4

    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    :cond_38
    :goto_38
    return-void
.end method
