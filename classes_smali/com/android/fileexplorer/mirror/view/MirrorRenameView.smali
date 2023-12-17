.class public Lcom/android/fileexplorer/mirror/view/MirrorRenameView;
.super Landroid/widget/FrameLayout;
.source "MirrorRenameView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorRenameView::"


# instance fields
.field private mCallback:Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;

.field private mEtFileName:Landroid/widget/EditText;

.field private mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

.field private mHasEnterClick:Z

.field private mHasEscClick:Z

.field private mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->lambda$onEnterClick$4(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;Ljava/lang/String;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->lambda$onEnterClick$9(Ljava/lang/String;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->lambda$onEnterClick$5(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method private checkRename(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    invoke-static {p2, v0}, Lcom/android/fileexplorer/util/StringUtils;->isNameIllegalMirror(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    return-object v0

    :cond_d
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_18

    return-object v1

    :cond_18
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startRenameThreadMirror(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    return-object v1
.end method

.method public static synthetic d(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->lambda$onEnterClick$7(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->lambda$onEnterClick$8(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->lambda$onEnterClick$12(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->lambda$initView$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

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

.method public static synthetic h(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->lambda$onEnterClick$3(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->lambda$onEnterClick$6(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    const p2, 0x7f0d00c9

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    new-instance p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    const p1, 0x7f032cf1

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    new-instance p2, Lcom/android/fileexplorer/mirror/view/k;

    const/16 p3, 0x9

    invoke-direct {p2, p0, p3}, Lcom/android/fileexplorer/mirror/view/k;-><init>(Landroid/view/ViewGroup;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public static synthetic j(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->lambda$onEnterClick$2(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->lambda$onEnterClick$1(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->lambda$onEnterClick$11(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x42

    if-ne p2, v1, :cond_1f

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_16

    iget-boolean p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mHasEnterClick:Z

    if-nez p2, :cond_16

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mHasEnterClick:Z

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->onEnterClick()V

    goto :goto_3b

    :cond_16
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, v0, :cond_3b

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mHasEnterClick:Z

    goto :goto_3b

    :cond_1f
    const/16 v1, 0x6f

    if-ne p2, v1, :cond_3b

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_33

    iget-boolean p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mHasEscClick:Z

    if-nez p2, :cond_33

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mHasEscClick:Z

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->onEscClick()V

    goto :goto_3b

    :cond_33
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, v0, :cond_3b

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mHasEscClick:Z

    :cond_3b
    :goto_3b
    return p1
.end method

.method private synthetic lambda$onEnterClick$1(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->setFileName()V

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    return-void
.end method

.method private synthetic lambda$onEnterClick$10(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->setFileName()V

    return-void
.end method

.method private synthetic lambda$onEnterClick$11(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->setFileName()V

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    return-void
.end method

.method private synthetic lambda$onEnterClick$12(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mCallback:Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;->onDismiss()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$onEnterClick$2(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mCallback:Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;->onDismiss()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$onEnterClick$3(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->setFileName()V

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    return-void
.end method

.method private synthetic lambda$onEnterClick$4(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mCallback:Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;->onDismiss()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$onEnterClick$5(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->setFileName()V

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    return-void
.end method

.method private synthetic lambda$onEnterClick$6(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mCallback:Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;->onDismiss()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$onEnterClick$7(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->setFileName()V

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    return-void
.end method

.method private synthetic lambda$onEnterClick$8(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mCallback:Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;->onDismiss()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$onEnterClick$9(Ljava/lang/String;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 4

    iget-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    invoke-direct {p0, p3, p1}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->checkRename(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mCallback:Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;

    if-eqz p1, :cond_17

    invoke-interface {p1}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;->onDismiss()V

    goto :goto_17

    :cond_14
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->setFileName()V

    :cond_17
    :goto_17
    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    return-void
.end method

.method public static synthetic m(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->lambda$onEnterClick$10(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method private onEscClick()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mCallback:Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;->onDismiss()V

    :cond_7
    return-void
.end method

.method private setFileName()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_2e

    :cond_25
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    :goto_2e
    return-void
.end method


# virtual methods
.method public onEnterClick()V
    .registers 10

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v0, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    xor-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v4, v4, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const v8, 0x7f110391

    if-eqz v7, :cond_43

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/fileexplorer/mirror/view/h;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/fileexplorer/mirror/view/h;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;I)V

    new-instance v3, Lcom/android/fileexplorer/mirror/view/h;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lcom/android/fileexplorer/mirror/view/h;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;I)V

    invoke-static {v0, v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->createRenameDialog(Landroid/content/Context;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;)Lmiuix/appcompat/app/AlertDialog;

    return-void

    :cond_43
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c8

    const-string v7, "."

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c8

    if-eqz v0, :cond_119

    invoke-direct {p0, v4}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->getDotCounts(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v3}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->getDotCounts(Ljava/lang/String;)I

    move-result v1

    if-ne v2, v0, :cond_83

    const/16 v0, 0x2e

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_a3

    if-ne v1, v2, :cond_a3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/fileexplorer/mirror/view/h;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/android/fileexplorer/mirror/view/h;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;I)V

    new-instance v3, Lcom/android/fileexplorer/mirror/view/h;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v4}, Lcom/android/fileexplorer/mirror/view/h;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;I)V

    invoke-static {v0, v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->createRenameDialog(Landroid/content/Context;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;)Lmiuix/appcompat/app/AlertDialog;

    return-void

    :cond_83
    if-le v0, v2, :cond_a3

    if-ne v1, v2, :cond_a3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/fileexplorer/mirror/view/h;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, Lcom/android/fileexplorer/mirror/view/h;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;I)V

    new-instance v3, Lcom/android/fileexplorer/mirror/view/h;

    const/4 v4, 0x7

    invoke-direct {v3, p0, v4}, Lcom/android/fileexplorer/mirror/view/h;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;I)V

    invoke-static {v0, v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->createRenameDialog(Landroid/content/Context;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;)Lmiuix/appcompat/app/AlertDialog;

    return-void

    :cond_a3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f182e19

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/fileexplorer/mirror/view/h;

    const/16 v3, 0x8

    invoke-direct {v2, p0, v3}, Lcom/android/fileexplorer/mirror/view/h;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;I)V

    new-instance v3, Lcom/android/fileexplorer/mirror/view/h;

    const/16 v4, 0x9

    invoke-direct {v3, p0, v4}, Lcom/android/fileexplorer/mirror/view/h;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;I)V

    invoke-static {v0, v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->createRenameDialog(Landroid/content/Context;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;)Lmiuix/appcompat/app/AlertDialog;

    goto :goto_119

    :cond_c8
    const/4 v0, 0x2

    if-eqz v1, :cond_f4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f182e18

    invoke-static {v4}, Lnp/NPFog;->d(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/fileexplorer/filemanager/c;

    invoke-direct {v4, v0, p0, v3}, Lcom/android/fileexplorer/filemanager/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/fileexplorer/mirror/view/h;

    const/16 v3, 0xa

    invoke-direct {v0, p0, v3}, Lcom/android/fileexplorer/mirror/view/h;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;I)V

    invoke-static {v1, v2, v4, v0}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->createRenameDialog(Landroid/content/Context;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;)Lmiuix/appcompat/app/AlertDialog;

    goto :goto_119

    :cond_f4
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    invoke-direct {p0, v1, v3}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->checkRename(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_108

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mCallback:Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;

    if-eqz v0, :cond_119

    invoke-interface {v0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;->onDismiss()V

    goto :goto_119

    :cond_108
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/fileexplorer/mirror/view/h;

    invoke-direct {v4, p0, v2}, Lcom/android/fileexplorer/mirror/view/h;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;I)V

    new-instance v2, Lcom/android/fileexplorer/mirror/view/h;

    invoke-direct {v2, p0, v0}, Lcom/android/fileexplorer/mirror/view/h;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;I)V

    invoke-static {v3, v1, v4, v2}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->createRenameDialog(Landroid/content/Context;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;)Lmiuix/appcompat/app/AlertDialog;

    :cond_119
    :goto_119
    return-void
.end method

.method public refreshType(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-int/lit8 p1, p1, -0x10

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_3b

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/16 v0, 0x32

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    const v0, 0x24001

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setInputType(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_50

    :cond_3b
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/16 v0, 0x1e

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_50
    :goto_50
    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mHasEscClick:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mHasEnterClick:Z

    return-void
.end method

.method public setFileInfo(Lcom/android/fileexplorer/model/FileInfo;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    if-eqz v0, :cond_11

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->setFileName()V

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->refreshType(I)V

    :cond_11
    return-void
.end method

.method public setRenameCallback(Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mCallback:Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;

    return-void
.end method
