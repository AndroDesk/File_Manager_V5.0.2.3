.class Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener$1;
.super Ljava/lang/Object;
.source "FileObserverManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener$1;->this$0:Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    const-string v0, "FileObserverManager"

    .line 3
    const-string v1, "FileModifyListener.run"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener$1;->this$0:Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;

    .line 10
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;->access$100(Lcom/android/fileexplorer/filemanager/FileObserverManager$FileModifyListener;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MediaScanUtil;->scanFolder(Ljava/lang/String;Z)V

    .line 18
    return-void
.end method
