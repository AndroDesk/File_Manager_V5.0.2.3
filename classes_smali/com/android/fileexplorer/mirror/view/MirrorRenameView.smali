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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
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

    .line 1
    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 3
    invoke-static {p2, v0}, Lcom/android/fileexplorer/util/StringUtils;->isNameIllegalMirror(Ljava/lang/String;Z)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_d

    .line 13
    return-object v0

    .line 14
    :cond_d
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    const-string v1, ""

    .line 22
    if-eqz v0, :cond_18

    .line 24
    return-object v1

    .line 25
    :cond_18
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 27
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startRenameThreadMirror(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    .line 30
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

    .line 1
    const p2, 0x7f0d00c9

    .line 4
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 7
    new-instance p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 15
    invoke-direct {p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    .line 18
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 20
    const p1, 0x7f0a0167

    .line 23
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/widget/EditText;

    .line 29
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    .line 31
    new-instance p2, Lcom/android/fileexplorer/mirror/view/k;

    .line 33
    const/16 p3, 0x9

    .line 35
    invoke-direct {p2, p0, p3}, Lcom/android/fileexplorer/mirror/view/k;-><init>(Landroid/view/ViewGroup;I)V

    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 41
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

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    const/16 v1, 0x42

    .line 5
    if-ne p2, v1, :cond_1f

    .line 7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_16

    .line 13
    iget-boolean p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mHasEnterClick:Z

    .line 15
    if-nez p2, :cond_16

    .line 17
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mHasEnterClick:Z

    .line 19
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->onEnterClick()V

    .line 22
    goto :goto_3b

    .line 23
    :cond_16
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 26
    move-result p2

    .line 27
    if-ne p2, v0, :cond_3b

    .line 29
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mHasEnterClick:Z

    .line 31
    goto :goto_3b

    .line 32
    :cond_1f
    const/16 v1, 0x6f

    .line 34
    if-ne p2, v1, :cond_3b

    .line 36
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 39
    move-result p2

    .line 40
    if-nez p2, :cond_33

    .line 42
    iget-boolean p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mHasEscClick:Z

    .line 44
    if-nez p2, :cond_33

    .line 46
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mHasEscClick:Z

    .line 48
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->onEscClick()V

    .line 51
    goto :goto_3b

    .line 52
    :cond_33
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 55
    move-result p2

    .line 56
    if-ne p2, v0, :cond_3b

    .line 58
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mHasEscClick:Z

    .line 60
    :cond_3b
    :goto_3b
    return p1
.end method

.method private synthetic lambda$onEnterClick$1(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->setFileName()V

    .line 4
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    .line 7
    return-void
.end method

.method private synthetic lambda$onEnterClick$10(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->setFileName()V

    .line 4
    return-void
.end method

.method private synthetic lambda$onEnterClick$11(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->setFileName()V

    .line 4
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    .line 7
    return-void
.end method

.method private synthetic lambda$onEnterClick$12(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mCallback:Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;

    .line 3
    if-eqz p1, :cond_7

    .line 5
    invoke-interface {p1}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;->onDismiss()V

    .line 8
    :cond_7
    return-void
.end method

.method private synthetic lambda$onEnterClick$2(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mCallback:Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;

    .line 3
    if-eqz p1, :cond_7

    .line 5
    invoke-interface {p1}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;->onDismiss()V

    .line 8
    :cond_7
    return-void
.end method

.method private synthetic lambda$onEnterClick$3(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->setFileName()V

    .line 4
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    .line 7
    return-void
.end method

.method private synthetic lambda$onEnterClick$4(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mCallback:Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;

    .line 3
    if-eqz p1, :cond_7

    .line 5
    invoke-interface {p1}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;->onDismiss()V

    .line 8
    :cond_7
    return-void
.end method

.method private synthetic lambda$onEnterClick$5(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->setFileName()V

    .line 4
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    .line 7
    return-void
.end method

.method private synthetic lambda$onEnterClick$6(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mCallback:Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;

    .line 3
    if-eqz p1, :cond_7

    .line 5
    invoke-interface {p1}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;->onDismiss()V

    .line 8
    :cond_7
    return-void
.end method

.method private synthetic lambda$onEnterClick$7(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->setFileName()V

    .line 4
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    .line 7
    return-void
.end method

.method private synthetic lambda$onEnterClick$8(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mCallback:Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;

    .line 3
    if-eqz p1, :cond_7

    .line 5
    invoke-interface {p1}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;->onDismiss()V

    .line 8
    :cond_7
    return-void
.end method

.method private synthetic lambda$onEnterClick$9(Ljava/lang/String;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    invoke-direct {p0, p3, p1}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->checkRename(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_14

    .line 13
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mCallback:Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;

    .line 15
    if-eqz p1, :cond_17

    .line 17
    invoke-interface {p1}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;->onDismiss()V

    .line 20
    goto :goto_17

    .line 21
    :cond_14
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->setFileName()V

    .line 24
    :cond_17
    :goto_17
    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    .line 27
    return-void
.end method

.method public static synthetic m(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->lambda$onEnterClick$10(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method private onEscClick()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mCallback:Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;->onDismiss()V

    .line 8
    :cond_7
    return-void
.end method

.method private setFileName()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 8
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 18
    const/16 v0, 0x2e

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 23
    move-result v0

    .line 24
    const/4 v1, -0x1

    .line 25
    if-eq v0, v1, :cond_25

    .line 27
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    .line 29
    invoke-virtual {v1}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 37
    goto :goto_2e

    .line 38
    :cond_25
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    .line 40
    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 47
    :goto_2e
    return-void
.end method


# virtual methods
.method public onEnterClick()V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    iget-boolean v0, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 5
    xor-int/lit8 v1, v0, 0x1

    .line 7
    const/4 v2, 0x1

    .line 8
    xor-int/2addr v0, v2

    .line 9
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    .line 11
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    move-result-object v3

    .line 19
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 21
    iget-object v4, v4, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 23
    invoke-static {v4}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v5

    .line 27
    invoke-static {v3}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v6

    .line 31
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    move-result v7

    .line 35
    const v8, 0x7f110391

    .line 38
    if-eqz v7, :cond_43

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    new-instance v2, Lcom/android/fileexplorer/mirror/view/h;

    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-direct {v2, p0, v3}, Lcom/android/fileexplorer/mirror/view/h;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;I)V

    .line 58
    new-instance v3, Lcom/android/fileexplorer/mirror/view/h;

    .line 60
    const/4 v4, 0x3

    .line 61
    invoke-direct {v3, p0, v4}, Lcom/android/fileexplorer/mirror/view/h;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;I)V

    .line 64
    invoke-static {v0, v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->createRenameDialog(Landroid/content/Context;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;)Lmiuix/appcompat/app/AlertDialog;

    .line 67
    return-void

    .line 68
    :cond_43
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    move-result v7

    .line 72
    if-nez v7, :cond_c4

    .line 74
    const-string v7, "."

    .line 76
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 79
    move-result v7

    .line 80
    if-eqz v7, :cond_c4

    .line 82
    if-eqz v0, :cond_111

    .line 84
    invoke-direct {p0, v4}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->getDotCounts(Ljava/lang/String;)I

    .line 87
    move-result v0

    .line 88
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->getDotCounts(Ljava/lang/String;)I

    .line 91
    move-result v1

    .line 92
    if-ne v2, v0, :cond_83

    .line 94
    const/16 v0, 0x2e

    .line 96
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    .line 99
    move-result v0

    .line 100
    if-lez v0, :cond_a3

    .line 102
    if-ne v1, v2, :cond_a3

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 115
    move-result-object v1

    .line 116
    new-instance v2, Lcom/android/fileexplorer/mirror/view/h;

    .line 118
    const/4 v3, 0x4

    .line 119
    invoke-direct {v2, p0, v3}, Lcom/android/fileexplorer/mirror/view/h;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;I)V

    .line 122
    new-instance v3, Lcom/android/fileexplorer/mirror/view/h;

    .line 124
    const/4 v4, 0x5

    .line 125
    invoke-direct {v3, p0, v4}, Lcom/android/fileexplorer/mirror/view/h;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;I)V

    .line 128
    invoke-static {v0, v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->createRenameDialog(Landroid/content/Context;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;)Lmiuix/appcompat/app/AlertDialog;

    .line 131
    return-void

    .line 132
    :cond_83
    if-le v0, v2, :cond_a3

    .line 134
    if-ne v1, v2, :cond_a3

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 147
    move-result-object v1

    .line 148
    new-instance v2, Lcom/android/fileexplorer/mirror/view/h;

    .line 150
    const/4 v3, 0x6

    .line 151
    invoke-direct {v2, p0, v3}, Lcom/android/fileexplorer/mirror/view/h;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;I)V

    .line 154
    new-instance v3, Lcom/android/fileexplorer/mirror/view/h;

    .line 156
    const/4 v4, 0x7

    .line 157
    invoke-direct {v3, p0, v4}, Lcom/android/fileexplorer/mirror/view/h;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;I)V

    .line 160
    invoke-static {v0, v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->createRenameDialog(Landroid/content/Context;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;)Lmiuix/appcompat/app/AlertDialog;

    .line 163
    return-void

    .line 164
    :cond_a3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 171
    move-result-object v1

    .line 172
    const v2, 0x7f11038f

    .line 175
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 178
    move-result-object v1

    .line 179
    new-instance v2, Lcom/android/fileexplorer/mirror/view/h;

    .line 181
    const/16 v3, 0x8

    .line 183
    invoke-direct {v2, p0, v3}, Lcom/android/fileexplorer/mirror/view/h;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;I)V

    .line 186
    new-instance v3, Lcom/android/fileexplorer/mirror/view/h;

    .line 188
    const/16 v4, 0x9

    .line 190
    invoke-direct {v3, p0, v4}, Lcom/android/fileexplorer/mirror/view/h;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;I)V

    .line 193
    invoke-static {v0, v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->createRenameDialog(Landroid/content/Context;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;)Lmiuix/appcompat/app/AlertDialog;

    .line 196
    goto :goto_111

    .line 197
    :cond_c4
    const/4 v0, 0x2

    .line 198
    if-eqz v1, :cond_ec

    .line 200
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 203
    move-result v1

    .line 204
    if-nez v1, :cond_ec

    .line 206
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 213
    move-result-object v2

    .line 214
    const v4, 0x7f11038e

    .line 217
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 220
    move-result-object v2

    .line 221
    new-instance v4, Lcom/android/fileexplorer/filemanager/c;

    .line 223
    invoke-direct {v4, v0, p0, v3}, Lcom/android/fileexplorer/filemanager/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 226
    new-instance v0, Lcom/android/fileexplorer/mirror/view/h;

    .line 228
    const/16 v3, 0xa

    .line 230
    invoke-direct {v0, p0, v3}, Lcom/android/fileexplorer/mirror/view/h;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;I)V

    .line 233
    invoke-static {v1, v2, v4, v0}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->createRenameDialog(Landroid/content/Context;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;)Lmiuix/appcompat/app/AlertDialog;

    .line 236
    goto :goto_111

    .line 237
    :cond_ec
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 239
    invoke-direct {p0, v1, v3}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->checkRename(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    move-result-object v1

    .line 243
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 246
    move-result v3

    .line 247
    if-eqz v3, :cond_100

    .line 249
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mCallback:Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;

    .line 251
    if-eqz v0, :cond_111

    .line 253
    invoke-interface {v0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;->onDismiss()V

    .line 256
    goto :goto_111

    .line 257
    :cond_100
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 260
    move-result-object v3

    .line 261
    new-instance v4, Lcom/android/fileexplorer/mirror/view/h;

    .line 263
    invoke-direct {v4, p0, v2}, Lcom/android/fileexplorer/mirror/view/h;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;I)V

    .line 266
    new-instance v2, Lcom/android/fileexplorer/mirror/view/h;

    .line 268
    invoke-direct {v2, p0, v0}, Lcom/android/fileexplorer/mirror/view/h;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;I)V

    .line 271
    invoke-static {v3, v1, v4, v2}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->createRenameDialog(Landroid/content/Context;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;)Lmiuix/appcompat/app/AlertDialog;

    .line 274
    :cond_111
    :goto_111
    return-void
.end method

.method public refreshType(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    .line 3
    if-eqz v0, :cond_50

    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    .line 11
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 22
    move-result v0

    .line 23
    add-int/lit8 p1, p1, -0x10

    .line 25
    int-to-float p1, p1

    .line 26
    cmpl-float p1, v0, p1

    .line 28
    if-lez p1, :cond_3b

    .line 30
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    move-result-object p1

    .line 36
    const/16 v0, 0x32

    .line 38
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    .line 42
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    .line 47
    const v0, 0x24001

    .line 50
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 53
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    .line 55
    const/4 v0, 0x2

    .line 56
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 59
    goto :goto_50

    .line 60
    :cond_3b
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    .line 62
    const/4 v0, 0x1

    .line 63
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 66
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 71
    move-result-object p1

    .line 72
    const/16 v0, 0x1e

    .line 74
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 76
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    .line 78
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    :cond_50
    :goto_50
    return-void
.end method

.method public reset()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mHasEscClick:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mHasEnterClick:Z

    .line 6
    return-void
.end method

.method public setFileInfo(Lcom/android/fileexplorer/model/FileInfo;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mEtFileName:Landroid/widget/EditText;

    .line 5
    if-eqz v0, :cond_11

    .line 7
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->setFileName()V

    .line 15
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->refreshType(I)V

    .line 18
    :cond_11
    return-void
.end method

.method public setRenameCallback(Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->mCallback:Lcom/android/fileexplorer/mirror/view/MirrorRenameView$onRenameViewCallback;

    .line 3
    return-void
.end method
