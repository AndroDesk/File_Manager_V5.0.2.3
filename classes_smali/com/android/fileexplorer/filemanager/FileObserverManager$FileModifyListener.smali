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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    new-instance p2, Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener$1;

    invoke-direct {p2, p0}, Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener$1;-><init>(Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;)V

    iput-object p2, p0, Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;->mScanTask:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;->mParentPath:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;->mParentPath:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvent: event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FileObserverManager"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_29

    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;->mScanTask:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/FileObserverManager;->access$000(Ljava/lang/Runnable;)V

    :cond_29
    return-void
.end method
