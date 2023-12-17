.class Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$2;
.super Ljava/lang/Object;
.source "AccountPreferenceDialogUtil.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil;->showInputFTPAccountDialog(Landroid/content/Context;Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$userName:Landroid/widget/EditText;

.field public final synthetic val$userNameInvalidFail:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Landroid/widget/TextView;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$2;->val$userName:Landroid/widget/EditText;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$2;->val$userNameInvalidFail:Landroid/widget/TextView;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3

    .line 1
    if-nez p2, :cond_20

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$2;->val$userName:Landroid/widget/EditText;

    .line 5
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil;->access$000(Ljava/lang/String;)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_19

    .line 19
    iget-object p1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$2;->val$userNameInvalidFail:Landroid/widget/TextView;

    .line 21
    const/4 p2, 0x0

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    goto :goto_20

    .line 26
    :cond_19
    iget-object p1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$2;->val$userNameInvalidFail:Landroid/widget/TextView;

    .line 28
    const/16 p2, 0x8

    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    :cond_20
    :goto_20
    return-void
.end method
