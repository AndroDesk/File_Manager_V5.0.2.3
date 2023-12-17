.class public Lcom/android/fileexplorer/view/TextInputDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "TextInputDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/TextInputDialog$OnCancelListener;,
        Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;
    }
.end annotation


# instance fields
.field private mCheckExt:Z

.field private mCheckFileName:Z

.field private mCheckFileNameLength:Z

.field private mContext:Landroid/content/Context;

.field private mFolderName:Landroid/widget/EditText;

.field private mInputText:Ljava/lang/String;

.field private mIsCloudDir:Z

.field private mIsCloudRelated:Z

.field private mListener:Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;

.field private mMsg:Ljava/lang/String;

.field private mOnCancelListener:Lcom/android/fileexplorer/view/TextInputDialog$OnCancelListener;

.field private mSelectAll:Z

.field private mTitle:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;)V
    .registers 13

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/view/TextInputDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;Z)V
    .registers 14

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/view/TextInputDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;)V

    iput-boolean p6, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mIsCloudDir:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;)V
    .registers 8

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mCheckFileNameLength:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mCheckFileName:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mIsCloudDir:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mIsCloudRelated:Z

    iput-object p2, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mMsg:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mListener:Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;

    iput-object p4, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mInputText:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mContext:Landroid/content/Context;

    iput-boolean p5, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mSelectAll:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/TextInputDialog;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mCheckFileNameLength:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/TextInputDialog;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/view/TextInputDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/TextInputDialog;->hideInput()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/view/TextInputDialog;)Lcom/android/fileexplorer/view/TextInputDialog$OnCancelListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mOnCancelListener:Lcom/android/fileexplorer/view/TextInputDialog$OnCancelListener;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/view/TextInputDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/TextInputDialog;->showSoftInput()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/TextInputDialog;)Landroid/widget/EditText;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mFolderName:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/view/TextInputDialog;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mInputText:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/view/TextInputDialog;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mIsCloudDir:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/view/TextInputDialog;Ljava/lang/String;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/TextInputDialog;->getDotCounts(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/view/TextInputDialog;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mIsCloudRelated:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/view/TextInputDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/TextInputDialog;->setFileName()V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/view/TextInputDialog;)Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mListener:Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/view/TextInputDialog;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mCheckExt:Z

    return p0
.end method

.method private getDotCounts(Ljava/lang/String;)I
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    :goto_8
    const/4 v0, -0x1

    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v0, v3, :cond_1e

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1e
    return v1
.end method

.method private hideInput()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_e

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mFolderName:Landroid/widget/EditText;

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/util/AppUtils;->showSoftInputRightNow(Landroid/app/Activity;ZLandroid/widget/EditText;)V

    :cond_e
    return-void
.end method

.method private setFileName()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mView:Landroid/view/View;

    const v1, 0x7f03299d

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mFolderName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mInputText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mFolderName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mInputText:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mSelectAll:Z

    if-nez v1, :cond_35

    const/4 v1, -0x1

    if-eq v0, v1, :cond_35

    iget-object v1, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mFolderName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_3e

    :cond_35
    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mFolderName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    :goto_3e
    return-void
.end method

.method private showSoftInput()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_e

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mFolderName:Landroid/widget/EditText;

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/util/AppUtils;->showSoftInput(Landroid/app/Activity;ZLandroid/widget/EditText;)V

    :cond_e
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mFolderName:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public isCheckFileName()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mCheckFileName:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f042c4b

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/TextInputDialog;->setFileName()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mFolderName:Landroid/widget/EditText;

    new-instance v1, Lcom/android/fileexplorer/view/TextInputDialog$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/TextInputDialog$1;-><init>(Lcom/android/fileexplorer/view/TextInputDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mContext:Landroid/content/Context;

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mContext:Landroid/content/Context;

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {p0, v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/android/fileexplorer/view/TextInputDialog$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/TextInputDialog$2;-><init>(Lcom/android/fileexplorer/view/TextInputDialog;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_18

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mIsCloudRelated:Z

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/cloud/CloudDriveManager;->checkAccountIfInvalid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/TextInputDialog;->dismiss()V

    :cond_18
    if-eqz p1, :cond_24

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-direct {p0}, Lcom/android/fileexplorer/view/TextInputDialog;->showSoftInput()V

    goto :goto_27

    :cond_24
    invoke-direct {p0}, Lcom/android/fileexplorer/view/TextInputDialog;->hideInput()V

    :goto_27
    return-void
.end method

.method public setCheckExt(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mCheckExt:Z

    return-void
.end method

.method public setCheckFileName(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mCheckFileName:Z

    return-void
.end method

.method public setCheckFileNameLength(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mCheckFileNameLength:Z

    return-void
.end method

.method public setIsCloudRelated(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mIsCloudRelated:Z

    return-void
.end method

.method public setOnCancelListener(Lcom/android/fileexplorer/view/TextInputDialog$OnCancelListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mOnCancelListener:Lcom/android/fileexplorer/view/TextInputDialog$OnCancelListener;

    return-void
.end method
