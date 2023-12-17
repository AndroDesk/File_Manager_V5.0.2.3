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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/navigator/EditDialogFragment;)Lmiuix/navigator/EditDialogFragment$EditDialogListener;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/EditDialogFragment;->mEditListener:Lmiuix/navigator/EditDialogFragment$EditDialogListener;

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

    iget-object p2, p0, Lmiuix/navigator/EditDialogFragment;->mEditListener:Lmiuix/navigator/EditDialogFragment$EditDialogListener;

    if-eqz p2, :cond_b

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p2, p1}, Lmiuix/navigator/EditDialogFragment$EditDialogListener;->onPositiveClick(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lmiuix/navigator/EditDialogFragment;->mEditListener:Lmiuix/navigator/EditDialogFragment$EditDialogListener;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lmiuix/navigator/EditDialogFragment$EditDialogListener;->onNegativeClick()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$onCreateDialog$2(Landroid/widget/EditText;)V
    .registers 2

    invoke-virtual {p0, p1}, Lmiuix/navigator/EditDialogFragment;->showSoftInput(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$3(Landroid/view/View;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .registers 6

    new-instance p3, Landroidx/appcompat/app/s;

    const/16 v0, 0xb

    invoke-direct {p3, v0, p0, p2}, Landroidx/appcompat/app/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$onCreateDialog$4(Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .registers 3

    invoke-virtual {p0, p1}, Lmiuix/navigator/EditDialogFragment;->hideSoftInput(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public hideSoftInput(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    :cond_8
    const-string v1, "miuix::theme_id"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v2, v3, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_2b

    :cond_22
    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :goto_2b
    const-string v1, "miuix::title_res_id"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const-string v1, "miuix::message_res_id"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    :cond_43
    sget v1, Lmiuix/navigator/R$layout;->miuix_simple_edit_text_dialog:I

    const-string v3, "miuix::layout_id"

    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lmiuix/navigator/R$id;->edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v3, "miuix::hint_res_id"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(I)V

    :cond_6e
    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v3, 0x104000a

    const-string v4, "miuix::posi_btn_text_id"

    invoke-virtual {p1, v4, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Lcom/android/cloud/a;

    const/4 v5, 0x5

    invoke-direct {v4, v5, p0, v1}, Lcom/android/cloud/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/high16 v3, 0x1040000

    const-string v4, "miuix::nega_btn_text_id"

    invoke-virtual {p1, v4, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    new-instance v3, Lmiuix/navigator/c;

    invoke-direct {v3, p0}, Lmiuix/navigator/c;-><init>(Lmiuix/navigator/EditDialogFragment;)V

    invoke-virtual {v2, p1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    new-instance v2, Lmiuix/navigator/EditDialogFragment$1;

    invoke-direct {v2, p0, p1}, Lmiuix/navigator/EditDialogFragment$1;-><init>(Lmiuix/navigator/EditDialogFragment;Lmiuix/appcompat/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v2, Lmiuix/navigator/d;

    invoke-direct {v2, p0, v0, v1}, Lmiuix/navigator/d;-><init>(Lmiuix/navigator/EditDialogFragment;Landroid/view/View;Landroid/widget/EditText;)V

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v0, Lcom/android/cloud/b;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/cloud/b;-><init>(Ljava/lang/Object;Landroid/view/KeyEvent$Callback;I)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object p1
.end method

.method public setEditDialogListener(Lmiuix/navigator/EditDialogFragment$EditDialogListener;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/EditDialogFragment;->mEditListener:Lmiuix/navigator/EditDialogFragment$EditDialogListener;

    return-void
.end method

.method public showSoftInput(Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
