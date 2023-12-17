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
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;)V
    .registers 13

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 1
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

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/view/TextInputDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;)V

    .line 3
    iput-boolean p6, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mIsCloudDir:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;)V
    .registers 8

    .line 4
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mCheckFileNameLength:Z

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mCheckFileName:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mIsCloudDir:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mIsCloudRelated:Z

    .line 9
    iput-object p2, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mTitle:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mMsg:Ljava/lang/String;

    .line 11
    iput-object p6, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mListener:Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;

    .line 12
    iput-object p4, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mInputText:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mContext:Landroid/content/Context;

    .line 14
    iput-boolean p5, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mSelectAll:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/TextInputDialog;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mCheckFileNameLength:Z

    .line 3
    return p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/TextInputDialog;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mContext:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/view/TextInputDialog;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/TextInputDialog;->hideInput()V

    .line 4
    return-void
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/view/TextInputDialog;)Lcom/android/fileexplorer/view/TextInputDialog$OnCancelListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mOnCancelListener:Lcom/android/fileexplorer/view/TextInputDialog$OnCancelListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/view/TextInputDialog;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/TextInputDialog;->showSoftInput()V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/TextInputDialog;)Landroid/widget/EditText;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mFolderName:Landroid/widget/EditText;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/view/TextInputDialog;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mInputText:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/view/TextInputDialog;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mIsCloudDir:Z

    .line 3
    return p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/view/TextInputDialog;Ljava/lang/String;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/TextInputDialog;->getDotCounts(Ljava/lang/String;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/view/TextInputDialog;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mIsCloudRelated:Z

    .line 3
    return p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/view/TextInputDialog;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/TextInputDialog;->setFileName()V

    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/view/TextInputDialog;)Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mListener:Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/view/TextInputDialog;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mCheckExt:Z

    .line 3
    return p0
.end method

.method private getDotCounts(Ljava/lang/String;)I
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    :goto_8
    const/4 v0, -0x1

    .line 10
    const/16 v2, 0x2e

    .line 12
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 15
    move-result v3

    .line 16
    if-eq v0, v3, :cond_1e

    .line 18
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 21
    move-result v0

    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_8

    .line 31
    :cond_1e
    return v1
.end method

.method private hideInput()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mContext:Landroid/content/Context;

    .line 3
    instance-of v1, v0, Landroid/app/Activity;

    .line 5
    if-eqz v1, :cond_e

    .line 7
    check-cast v0, Landroid/app/Activity;

    .line 9
    const/4 v1, 0x0

    .line 10
    iget-object v2, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mFolderName:Landroid/widget/EditText;

    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/util/AppUtils;->showSoftInputRightNow(Landroid/app/Activity;ZLandroid/widget/EditText;)V

    .line 15
    :cond_e
    return-void
.end method

.method private setFileName()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mView:Landroid/view/View;

    .line 3
    const v1, 0x7f0a040b

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/EditText;

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mFolderName:Landroid/widget/EditText;

    .line 14
    iget-object v1, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mInputText:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mFolderName:Landroid/widget/EditText;

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 24
    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mInputText:Ljava/lang/String;

    .line 26
    const/16 v1, 0x2e

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 31
    move-result v0

    .line 32
    iget-boolean v1, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mSelectAll:Z

    .line 34
    if-nez v1, :cond_31

    .line 36
    const/4 v1, -0x1

    .line 37
    if-eq v0, v1, :cond_31

    .line 39
    iget-object v1, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mFolderName:Landroid/widget/EditText;

    .line 41
    invoke-virtual {v1}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 49
    goto :goto_3a

    .line 50
    :cond_31
    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mFolderName:Landroid/widget/EditText;

    .line 52
    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 59
    :goto_3a
    return-void
.end method

.method private showSoftInput()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mContext:Landroid/content/Context;

    .line 3
    instance-of v1, v0, Landroid/app/Activity;

    .line 5
    if-eqz v1, :cond_e

    .line 7
    check-cast v0, Landroid/app/Activity;

    .line 9
    const/4 v1, 0x1

    .line 10
    iget-object v2, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mFolderName:Landroid/widget/EditText;

    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/util/AppUtils;->showSoftInput(Landroid/app/Activity;ZLandroid/widget/EditText;)V

    .line 15
    :cond_e
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mFolderName:Landroid/widget/EditText;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 7
    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 10
    return-void
.end method

.method public isCheckFileName()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mCheckFileName:Z

    .line 3
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d01dd

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mView:Landroid/view/View;

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mTitle:Ljava/lang/String;

    .line 17
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 20
    invoke-direct {p0}, Lcom/android/fileexplorer/view/TextInputDialog;->setFileName()V

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mFolderName:Landroid/widget/EditText;

    .line 25
    new-instance v1, Lcom/android/fileexplorer/view/TextInputDialog$1;

    .line 27
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/TextInputDialog$1;-><init>(Lcom/android/fileexplorer/view/TextInputDialog;)V

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 33
    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mView:Landroid/view/View;

    .line 35
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 38
    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mContext:Landroid/content/Context;

    .line 40
    const v1, 0x104000a

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    const/4 v1, -0x1

    .line 48
    invoke-virtual {p0, v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mContext:Landroid/content/Context;

    .line 53
    const/high16 v1, 0x1040000

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    const/4 v1, -0x2

    .line 60
    invoke-virtual {p0, v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 63
    new-instance v0, Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 65
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/TextInputDialog$2;-><init>(Lcom/android/fileexplorer/view/TextInputDialog;)V

    .line 68
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 71
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 74
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 4
    if-eqz p1, :cond_18

    .line 6
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mIsCloudRelated:Z

    .line 8
    if-eqz v0, :cond_18

    .line 10
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/cloud/CloudDriveManager;->checkAccountIfInvalid(Landroid/content/Context;)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_18

    .line 22
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/TextInputDialog;->dismiss()V

    .line 25
    :cond_18
    if-eqz p1, :cond_24

    .line 27
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_24

    .line 33
    invoke-direct {p0}, Lcom/android/fileexplorer/view/TextInputDialog;->showSoftInput()V

    .line 36
    goto :goto_27

    .line 37
    :cond_24
    invoke-direct {p0}, Lcom/android/fileexplorer/view/TextInputDialog;->hideInput()V

    .line 40
    :goto_27
    return-void
.end method

.method public setCheckExt(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mCheckExt:Z

    .line 3
    return-void
.end method

.method public setCheckFileName(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mCheckFileName:Z

    .line 3
    return-void
.end method

.method public setCheckFileNameLength(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mCheckFileNameLength:Z

    .line 3
    return-void
.end method

.method public setIsCloudRelated(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mIsCloudRelated:Z

    .line 3
    return-void
.end method

.method public setOnCancelListener(Lcom/android/fileexplorer/view/TextInputDialog$OnCancelListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog;->mOnCancelListener:Lcom/android/fileexplorer/view/TextInputDialog$OnCancelListener;

    .line 3
    return-void
.end method
