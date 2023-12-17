.class Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$1;
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
.field public final synthetic val$pwdType:Landroid/widget/ImageView;

.field public final synthetic val$userPwd:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/EditText;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$1;->val$pwdType:Landroid/widget/ImageView;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$1;->val$userPwd:Landroid/widget/EditText;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$1;->val$pwdType:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    xor-int/2addr p1, v0

    .line 9
    iget-object v1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$1;->val$pwdType:Landroid/widget/ImageView;

    .line 11
    if-eqz p1, :cond_10

    .line 13
    const v2, 0x7f11011c

    .line 16
    goto :goto_13

    .line 17
    :cond_10
    const v2, 0x7f11011b

    .line 20
    :goto_13
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$1;->val$pwdType:Landroid/widget/ImageView;

    .line 29
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 32
    iget-object v1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$1;->val$pwdType:Landroid/widget/ImageView;

    .line 34
    if-eqz p1, :cond_27

    .line 36
    const v2, 0x7f080282

    .line 39
    goto :goto_2a

    .line 40
    :cond_27
    const v2, 0x7f080239

    .line 43
    :goto_2a
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    if-eqz p1, :cond_32

    .line 48
    const/16 p1, 0x90

    .line 50
    goto :goto_34

    .line 51
    :cond_32
    const/16 p1, 0x80

    .line 53
    :goto_34
    or-int/2addr p1, v0

    .line 54
    iget-object v1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$1;->val$userPwd:Landroid/widget/EditText;

    .line 56
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setInputType(I)V

    .line 59
    iget-object p1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$1;->val$userPwd:Landroid/widget/EditText;

    .line 61
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 68
    iget-object p1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$1;->val$userPwd:Landroid/widget/EditText;

    .line 70
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 73
    move-result-object v0

    .line 74
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 77
    move-result v0

    .line 78
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 81
    return-void
.end method
