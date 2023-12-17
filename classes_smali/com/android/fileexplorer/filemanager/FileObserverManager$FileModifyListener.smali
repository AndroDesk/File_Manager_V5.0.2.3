.class Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;
.super Landroid/os/FileObserver;
.source "FileObserverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/filemanager/FileObserverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileModifyListener"
.end annotation


# instance fields
.field private mParentPath:Ljava/lang/String;

.field private mScanTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 4
    new-instance p2, Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener$1;

    .line 6
    invoke-direct {p2, p0}, Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener$1;-><init>(Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;)V

    .line 9
    iput-object p2, p0, Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;->mScanTask:Ljava/lang/Runnable;

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;->mParentPath:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;->mParentPath:Ljava/lang/String;

    .line 3
    return-object p0
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "onEvent: event = "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string p1, " "

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    const-string v0, "FileObserverManager"

    .line 28
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_29

    .line 37
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;->mScanTask:Ljava/lang/Runnable;

    .line 39
    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/FileObserverManager;->access$000(Ljava/lang/Runnable;)V

    .line 42
    :cond_29
    return-void
.end method
