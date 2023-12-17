.class public Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;
.super Ljava/lang/Object;
.source "MirrorInformationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$MyHandler;
    }
.end annotation


# static fields
.field private static final ID_USER:I

.field private static final LOG_TAG:Ljava/lang/String; = "InformationDialog"


# instance fields
.field private isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mActivity:Lmiuix/appcompat/app/AppCompatActivity;

.field private mCurrentPath:Ljava/lang/String;

.field private mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92df2

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->ID_USER:I

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    iput-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mCurrentPath:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Lcom/android/fileexplorer/model/FileInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mCurrentPath:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$184(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mCurrentPath:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Lmiuix/appcompat/app/AppCompatActivity;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->onSize(J)V

    return-void
.end method

.method private asyncGetSize()V
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)V

    invoke-static {v0}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onSize(J)V
    .registers 6

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "SIZE"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public show()V
    .registers 7

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    :cond_1c
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const v3, 0x7f042d7d

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/q;->setContentView(I)V

    new-instance v3, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$MyHandler;

    const v4, 0x7f032ca0

    invoke-static {v4}, Lnp/NPFog;->d(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$MyHandler;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mHandler:Landroid/os/Handler;

    const v3, 0x7f032f83

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    new-instance v4, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$1;

    invoke-direct {v4, p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$1;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;Lmiuix/appcompat/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f032f8a

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v4, v4, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v4, :cond_71

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v4, v1}, Lcom/android/fileexplorer/model/FileIconHelper;->getFolderID(Landroid/content/Context;Z)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->asyncGetSize()V

    goto :goto_7f

    :cond_71
    sget-boolean v1, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    if-eqz v1, :cond_79

    const v1, 0x7f08016a

    goto :goto_7c

    :cond_79
    const v1, 0x7f08016b

    :goto_7c
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_7f
    const v1, 0x7f0329e3

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v3, v3, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f032c6b

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-wide v3, v3, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f032c6d

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v3, v3, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$2;

    invoke-direct {v3, p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$2;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;Lmiuix/appcompat/app/AlertDialog;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f032c6a

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-wide v3, v3, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    invoke-static {v3, v4}, Lcom/android/fileexplorer/model/DateUtils;->formatDateString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f032c6e

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v3, v3, Lcom/android/fileexplorer/model/FileInfo;->canRead:Z

    const v4, 0x7f11048e

    const v5, 0x7f1102cc

    if-eqz v3, :cond_fa

    move v3, v4

    goto :goto_fb

    :cond_fa
    move v3, v5

    :goto_fb
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f032c6f

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v3, v3, Lcom/android/fileexplorer/model/FileInfo;->canWrite:Z

    if-eqz v3, :cond_113

    move v3, v4

    goto :goto_114

    :cond_113
    move v3, v5

    :goto_114
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f032c6c

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v3, v3, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    if-eqz v3, :cond_12b

    goto :goto_12c

    :cond_12b
    move v4, v5

    :goto_12c
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_13c

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    :cond_13c
    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$3;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$3;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
