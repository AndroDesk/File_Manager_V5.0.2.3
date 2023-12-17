.class Lcom/android/fileexplorer/service/MediaStoreChangeObserver$1;
.super Ljava/lang/Object;
.source "MediaStoreChangeObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/service/MediaStoreChangeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/service/MediaStoreChangeObserver;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/service/MediaStoreChangeObserver;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/service/MediaStoreChangeObserver$1;->this$0:Lcom/android/fileexplorer/service/MediaStoreChangeObserver;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    const-string v0, "MediaStoreChangeObserver"

    .line 3
    const-string v1, "MediaStoreChangeObserver onChange"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    .line 16
    return-void
.end method
