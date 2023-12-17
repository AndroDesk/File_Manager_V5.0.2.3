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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;Landroid/widget/TextView;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$2;->val$userName:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$2;->val$userNameInvalidFail:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3

    if-nez p2, :cond_20

    iget-object p1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$2;->val$userName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil;->access$000(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$2;->val$userNameInvalidFail:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_20

    :cond_19
    iget-object p1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$2;->val$userNameInvalidFail:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    :goto_20
    return-void
.end method
