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
.field private static final ID_USER:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "InformationDialog"


# instance fields
.field private isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mActivity:Lmiuix/appcompat/app/AppCompatActivity;

.field private mCurrentPath:Ljava/lang/String;

.field private mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 14
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 16
    iput-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mCurrentPath:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Lcom/android/fileexplorer/model/FileInfo;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mCurrentPath:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$184(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mCurrentPath:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mCurrentPath:Ljava/lang/String;

    .line 20
    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Lmiuix/appcompat/app/AppCompatActivity;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;J)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->onSize(J)V

    .line 4
    return-void
.end method

.method private asyncGetSize()V
    .registers 2

    .line 1
    new-instance v0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)V

    .line 6
    invoke-static {v0}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method private onSize(J)V
    .registers 6

    .line 1
    new-instance v0, Landroid/os/Message;

    .line 3
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 6
    const/16 v1, 0x64

    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 10
    new-instance v1, Landroid/os/Bundle;

    .line 12
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 15
    const-string v2, "SIZE"

    .line 17
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 23
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mHandler:Landroid/os/Handler;

    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 28
    return-void
.end method


# virtual methods
.method public show()V
    .registers 7

    .line 1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 5
    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 15
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_1c

    .line 22
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 29
    :cond_1c
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 33
    const v3, 0x7f0d00eb

    .line 36
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/q;->setContentView(I)V

    .line 39
    new-instance v3, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$MyHandler;

    .line 41
    const v4, 0x7f0a0136

    .line 44
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v4

    .line 48
    invoke-direct {v3, v4}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$MyHandler;-><init>(Landroid/view/View;)V

    .line 51
    iput-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mHandler:Landroid/os/Handler;

    .line 53
    const v3, 0x7f0a0215

    .line 56
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Landroid/widget/ImageView;

    .line 62
    new-instance v4, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$1;

    .line 64
    invoke-direct {v4, p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$1;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;Lmiuix/appcompat/app/AlertDialog;)V

    .line 67
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v3, 0x7f0a021c

    .line 73
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Landroid/widget/ImageView;

    .line 79
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 81
    iget-boolean v4, v4, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 83
    if-eqz v4, :cond_61

    .line 85
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 87
    invoke-static {v4, v1}, Lcom/android/fileexplorer/model/FileIconHelper;->getFolderID(Landroid/content/Context;Z)I

    .line 90
    move-result v1

    .line 91
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->asyncGetSize()V

    .line 97
    goto :goto_6f

    .line 98
    :cond_61
    sget-boolean v1, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 100
    if-eqz v1, :cond_69

    .line 102
    const v1, 0x7f08016a

    .line 105
    goto :goto_6c

    .line 106
    :cond_69
    const v1, 0x7f08016b

    .line 109
    :goto_6c
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    :goto_6f
    const v1, 0x7f0a0475

    .line 115
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Landroid/widget/TextView;

    .line 121
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 123
    iget-object v3, v3, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 125
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    const v1, 0x7f0a01fd

    .line 131
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Landroid/widget/TextView;

    .line 137
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 139
    iget-wide v3, v3, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 141
    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const v1, 0x7f0a01fb

    .line 151
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 154
    move-result-object v1

    .line 155
    check-cast v1, Landroid/widget/TextView;

    .line 157
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 159
    iget-object v3, v3, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 161
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    new-instance v3, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$2;

    .line 166
    invoke-direct {v3, p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$2;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;Lmiuix/appcompat/app/AlertDialog;)V

    .line 169
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v1, 0x7f0a01fc

    .line 175
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 178
    move-result-object v1

    .line 179
    check-cast v1, Landroid/widget/TextView;

    .line 181
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 183
    iget-wide v3, v3, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 185
    invoke-static {v3, v4}, Lcom/android/fileexplorer/model/DateUtils;->formatDateString(J)Ljava/lang/String;

    .line 188
    move-result-object v3

    .line 189
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    const v1, 0x7f0a01f8

    .line 195
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 198
    move-result-object v1

    .line 199
    check-cast v1, Landroid/widget/TextView;

    .line 201
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 203
    iget-boolean v3, v3, Lcom/android/fileexplorer/model/FileInfo;->canRead:Z

    .line 205
    const v4, 0x7f11048e

    .line 208
    const v5, 0x7f1102cc

    .line 211
    if-eqz v3, :cond_d6

    .line 213
    move v3, v4

    .line 214
    goto :goto_d7

    .line 215
    :cond_d6
    move v3, v5

    .line 216
    :goto_d7
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 219
    const v1, 0x7f0a01f9

    .line 222
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 225
    move-result-object v1

    .line 226
    check-cast v1, Landroid/widget/TextView;

    .line 228
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 230
    iget-boolean v3, v3, Lcom/android/fileexplorer/model/FileInfo;->canWrite:Z

    .line 232
    if-eqz v3, :cond_eb

    .line 234
    move v3, v4

    .line 235
    goto :goto_ec

    .line 236
    :cond_eb
    move v3, v5

    .line 237
    :goto_ec
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 240
    const v1, 0x7f0a01fa

    .line 243
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 246
    move-result-object v1

    .line 247
    check-cast v1, Landroid/widget/TextView;

    .line 249
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 251
    iget-boolean v3, v3, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    .line 253
    if-eqz v3, :cond_ff

    .line 255
    goto :goto_100

    .line 256
    :cond_ff
    move v4, v5

    .line 257
    :goto_100
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 260
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 263
    move-result-object v1

    .line 264
    if-eqz v1, :cond_110

    .line 266
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 269
    move-result-object v1

    .line 270
    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 273
    :cond_110
    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$3;

    .line 275
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$3;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)V

    .line 278
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 281
    return-void
.end method
