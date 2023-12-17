.class Lcom/android/fileexplorer/util/MediaScanUtil$1;
.super Ljava/lang/Object;
.source "MediaScanUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/util/MediaScanUtil;->scanReal([Ljava/lang/String;[Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$list:[Ljava/lang/String;

.field public final synthetic val$mimeType:[Ljava/lang/String;

.field public final synthetic val$needInsert:Z

.field public final synthetic val$needNotify:Z


# direct methods
.method public constructor <init>([Ljava/lang/String;Z[Ljava/lang/String;Z)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/util/MediaScanUtil$1;->val$list:[Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lcom/android/fileexplorer/util/MediaScanUtil$1;->val$needInsert:Z

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/util/MediaScanUtil$1;->val$mimeType:[Ljava/lang/String;

    .line 7
    iput-boolean p4, p0, Lcom/android/fileexplorer/util/MediaScanUtil$1;->val$needNotify:Z

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/util/MediaScanUtil$1;->val$list:[Ljava/lang/String;

    .line 5
    array-length v1, v1

    .line 6
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 9
    iget-boolean v1, p0, Lcom/android/fileexplorer/util/MediaScanUtil$1;->val$needInsert:Z

    .line 11
    if-eqz v1, :cond_2a

    .line 13
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isAndroidQAndLater()Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_2a

    .line 19
    const-string v1, "MediaScanUtil"

    .line 21
    const-string v2, "run: inserts"

    .line 23
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    move-result-object v1

    .line 38
    iget-object v2, p0, Lcom/android/fileexplorer/util/MediaScanUtil$1;->val$list:[Ljava/lang/String;

    .line 40
    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/MediaScanUtil;->access$000(Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 43
    :cond_2a
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 46
    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/android/fileexplorer/util/MediaScanUtil$1;->val$list:[Ljava/lang/String;

    .line 49
    iget-object v3, p0, Lcom/android/fileexplorer/util/MediaScanUtil$1;->val$mimeType:[Ljava/lang/String;

    .line 51
    new-instance v4, Lcom/android/fileexplorer/util/MediaScanUtil$1$1;

    .line 53
    invoke-direct {v4, p0, v0}, Lcom/android/fileexplorer/util/MediaScanUtil$1$1;-><init>(Lcom/android/fileexplorer/util/MediaScanUtil$1;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 56
    invoke-static {v1, v2, v3, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 59
    return-void
.end method
