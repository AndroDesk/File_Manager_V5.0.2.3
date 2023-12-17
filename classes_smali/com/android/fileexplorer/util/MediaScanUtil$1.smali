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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z[Ljava/lang/String;Z)V
    .registers 5

    iput-object p1, p0, Lcom/android/fileexplorer/util/MediaScanUtil$1;->val$list:[Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/fileexplorer/util/MediaScanUtil$1;->val$needInsert:Z

    iput-object p3, p0, Lcom/android/fileexplorer/util/MediaScanUtil$1;->val$mimeType:[Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/fileexplorer/util/MediaScanUtil$1;->val$needNotify:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/android/fileexplorer/util/MediaScanUtil$1;->val$list:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iget-boolean v1, p0, Lcom/android/fileexplorer/util/MediaScanUtil$1;->val$needInsert:Z

    if-eqz v1, :cond_2a

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isAndroidQAndLater()Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "MediaScanUtil"

    const-string v2, "run: inserts"

    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/util/MediaScanUtil$1;->val$list:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/MediaScanUtil;->access$000(Landroid/content/ContentResolver;[Ljava/lang/String;)V

    :cond_2a
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/util/MediaScanUtil$1;->val$list:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/fileexplorer/util/MediaScanUtil$1;->val$mimeType:[Ljava/lang/String;

    new-instance v4, Lcom/android/fileexplorer/util/MediaScanUtil$1$1;

    invoke-direct {v4, p0, v0}, Lcom/android/fileexplorer/util/MediaScanUtil$1$1;-><init>(Lcom/android/fileexplorer/util/MediaScanUtil$1;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-static {v1, v2, v3, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method
