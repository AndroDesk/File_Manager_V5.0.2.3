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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/EditText;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$1;->val$pwdType:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$1;->val$userPwd:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object p1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$1;->val$pwdType:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$1;->val$pwdType:Landroid/widget/ImageView;

    if-eqz p1, :cond_10

    const v2, 0x7f11011c

    goto :goto_13

    :cond_10
    const v2, 0x7f11011b

    :goto_13
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$1;->val$pwdType:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$1;->val$pwdType:Landroid/widget/ImageView;

    if-eqz p1, :cond_27

    const v2, 0x7f080282

    goto :goto_2a

    :cond_27
    const v2, 0x7f080239

    :goto_2a
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p1, :cond_32

    const/16 p1, 0x90

    goto :goto_34

    :cond_32
    const/16 p1, 0x80

    :goto_34
    or-int/2addr p1, v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$1;->val$userPwd:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setInputType(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$1;->val$userPwd:Landroid/widget/EditText;

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$1;->val$userPwd:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
