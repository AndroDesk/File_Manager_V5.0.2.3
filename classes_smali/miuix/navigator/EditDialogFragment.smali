.class public Lmiuix/navigator/EditDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "EditDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/navigator/EditDialogFragment$EditDialogListener;
    }
.end annotation


# static fields
.field public static final ARG_HINT_RES_ID:Ljava/lang/String; = "miuix::hint_res_id"

.field public static final ARG_LAYOUT_ID:Ljava/lang/String; = "miuix::layout_id"

.field public static final ARG_MESSAGE_RES_ID:Ljava/lang/String; = "miuix::message_res_id"

.field public static final ARG_NEGA_BTN_TEXT_ID:Ljava/lang/String; = "miuix::nega_btn_text_id"

.field public static final ARG_POSI_BTN_TEXT_ID:Ljava/lang/String; = "miuix::posi_btn_text_id"

.field public static final ARG_THEME_ID:Ljava/lang/String; = "miuix::theme_id"

.field public static final ARG_TITLE_RES_ID:Ljava/lang/String; = "miuix::title_res_id"


# instance fields
.field private mEditListener:Lmiuix/navigator/EditDialogFragment$EditDialogListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$000(Lmiuix/navigator/EditDialogFragment;)Lmiuix/navigator/EditDialogFragment$EditDialogListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/EditDialogFragment;->mEditListener:Lmiuix/navigator/EditDialogFragment$EditDialogListener;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lmiuix/navigator/EditDialogFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiuix/navigator/EditDialogFragment;->lambda$onCreateDialog$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Lmiuix/navigator/EditDialogFragment;Landroid/widget/EditText;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/navigator/EditDialogFragment;->lambda$onCreateDialog$2(Landroid/widget/EditText;)V

    return-void
.end method

.method public static synthetic d(Lmiuix/navigator/EditDialogFragment;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/navigator/EditDialogFragment;->lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic e(Lmiuix/navigator/EditDialogFragment;Landroid/view/View;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiuix/navigator/EditDialogFragment;->lambda$onCreateDialog$3(Landroid/view/View;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic f(Lmiuix/navigator/EditDialogFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/navigator/EditDialogFragment;->lambda$onCreateDialog$4(Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    iget-object p2, p0, Lmiuix/navigator/EditDialogFragment;->mEditListener:Lmiuix/navigator/EditDialogFragment$EditDialogListener;

    .line 3
    if-eqz p2, :cond_b

    .line 5
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p2, p1}, Lmiuix/navigator/EditDialogFragment$EditDialogListener;->onPositiveClick(Ljava/lang/CharSequence;)V

    .line 12
    :cond_b
    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/navigator/EditDialogFragment;->mEditListener:Lmiuix/navigator/EditDialogFragment$EditDialogListener;

    .line 3
    if-eqz p1, :cond_7

    .line 5
    invoke-interface {p1}, Lmiuix/navigator/EditDialogFragment$EditDialogListener;->onNegativeClick()V

    .line 8
    :cond_7
    return-void
.end method

.method private synthetic lambda$onCreateDialog$2(Landroid/widget/EditText;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/navigator/EditDialogFragment;->showSoftInput(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method private synthetic lambda$onCreateDialog$3(Landroid/view/View;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .registers 6

    .line 1
    new-instance p3, Landroidx/appcompat/app/s;

    .line 3
    const/16 v0, 0xb

    .line 5
    invoke-direct {p3, v0, p0, p2}, Landroidx/appcompat/app/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 8
    const-wide/16 v0, 0x64

    .line 10
    invoke-virtual {p1, p3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    return-void
.end method

.method private synthetic lambda$onCreateDialog$4(Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/navigator/EditDialogFragment;->hideSoftInput(Landroid/view/View;)V

    .line 4
    return-void
.end method


# virtual methods
.method public hideSoftInput(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 4
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_8

    .line 8
    return-object v0

    .line 9
    :cond_8
    const-string v1, "miuix::theme_id"

    .line 11
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_22

    .line 17
    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 30
    move-result v1

    .line 31
    invoke-direct {v2, v3, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 34
    goto :goto_2b

    .line 35
    :cond_22
    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    :goto_2b
    const-string v1, "miuix::title_res_id"

    .line 46
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 49
    move-result v1

    .line 50
    invoke-virtual {v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 53
    const-string v1, "miuix::message_res_id"

    .line 55
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_43

    .line 61
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 64
    move-result v1

    .line 65
    invoke-virtual {v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 68
    :cond_43
    sget v1, Lmiuix/navigator/R$layout;->miuix_simple_edit_text_dialog:I

    .line 70
    const-string v3, "miuix::layout_id"

    .line 72
    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 75
    move-result v1

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 79
    move-result-object v3

    .line 80
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 87
    move-result-object v0

    .line 88
    sget v1, Lmiuix/navigator/R$id;->edit_text:I

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Landroid/widget/EditText;

    .line 96
    const-string v3, "miuix::hint_res_id"

    .line 98
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_6e

    .line 104
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 107
    move-result v3

    .line 108
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(I)V

    .line 111
    :cond_6e
    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 114
    const v3, 0x104000a

    .line 117
    const-string v4, "miuix::posi_btn_text_id"

    .line 119
    invoke-virtual {p1, v4, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 122
    move-result v3

    .line 123
    new-instance v4, Lcom/android/cloud/a;

    .line 125
    const/4 v5, 0x5

    .line 126
    invoke-direct {v4, v5, p0, v1}, Lcom/android/cloud/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 129
    invoke-virtual {v2, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 132
    const/high16 v3, 0x1040000

    .line 134
    const-string v4, "miuix::nega_btn_text_id"

    .line 136
    invoke-virtual {p1, v4, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 139
    move-result p1

    .line 140
    new-instance v3, Lmiuix/navigator/c;

    .line 142
    invoke-direct {v3, p0}, Lmiuix/navigator/c;-><init>(Lmiuix/navigator/EditDialogFragment;)V

    .line 145
    invoke-virtual {v2, p1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 148
    invoke-virtual {v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 151
    move-result-object p1

    .line 152
    new-instance v2, Lmiuix/navigator/EditDialogFragment$1;

    .line 154
    invoke-direct {v2, p0, p1}, Lmiuix/navigator/EditDialogFragment$1;-><init>(Lmiuix/navigator/EditDialogFragment;Lmiuix/appcompat/app/AlertDialog;)V

    .line 157
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 160
    new-instance v2, Lmiuix/navigator/d;

    .line 162
    invoke-direct {v2, p0, v0, v1}, Lmiuix/navigator/d;-><init>(Lmiuix/navigator/EditDialogFragment;Landroid/view/View;Landroid/widget/EditText;)V

    .line 165
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 168
    new-instance v0, Lcom/android/cloud/b;

    .line 170
    const/4 v2, 0x1

    .line 171
    invoke-direct {v0, p0, v1, v2}, Lcom/android/cloud/b;-><init>(Ljava/lang/Object;Landroid/view/KeyEvent$Callback;I)V

    .line 174
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 177
    return-object p1
.end method

.method public setEditDialogListener(Lmiuix/navigator/EditDialogFragment$EditDialogListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/EditDialogFragment;->mEditListener:Lmiuix/navigator/EditDialogFragment$EditDialogListener;

    .line 3
    return-void
.end method

.method public showSoftInput(Landroid/view/View;)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 27
    return-void
.end method
