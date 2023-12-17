.class Lcom/android/fileexplorer/filemanager/FileOperationManager$17;
.super Ljava/lang/Object;
.source "FileOperationManager.java"

# interfaces
.implements Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$isOverwrite:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic val$lock:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$17;->val$isOverwrite:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$17;->val$lock:Ljava/util/concurrent/CountDownLatch;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$17;->val$isOverwrite:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$17;->val$lock:Ljava/util/concurrent/CountDownLatch;

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 12
    return-void
.end method

.method public overwrite()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$17;->val$isOverwrite:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$17;->val$lock:Ljava/util/concurrent/CountDownLatch;

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 12
    return-void
.end method

.method public skip()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$17;->val$isOverwrite:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$17;->val$lock:Ljava/util/concurrent/CountDownLatch;

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 12
    return-void
.end method
