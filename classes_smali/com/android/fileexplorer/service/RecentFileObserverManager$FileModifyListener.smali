.class Lcom/android/fileexplorer/service/RecentFileObserverManager$FileModifyListener;
.super Landroid/os/FileObserver;
.source "RecentFileObserverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/service/RecentFileObserverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileModifyListener"
.end annotation


# instance fields
.field private mParentPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/service/RecentFileObserverManager$FileModifyListener;->mParentPath:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/service/RecentFileObserverManager;->access$000()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v2, "onEvent: event = "

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_26

    .line 31
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 34
    move-result-object p1

    .line 35
    const/4 p2, 0x0

    .line 36
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    .line 39
    :cond_26
    return-void
.end method
