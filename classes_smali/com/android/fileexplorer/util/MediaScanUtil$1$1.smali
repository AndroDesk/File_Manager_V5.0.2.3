.class Lcom/android/fileexplorer/util/MediaScanUtil$1$1;
.super Ljava/lang/Object;
.source "MediaScanUtil.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/util/MediaScanUtil$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/util/MediaScanUtil$1;

.field public final synthetic val$count:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/util/MediaScanUtil$1;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/util/MediaScanUtil$1$1;->this$0:Lcom/android/fileexplorer/util/MediaScanUtil$1;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/util/MediaScanUtil$1$1;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4

    .line 1
    const-string p1, "MediaScanUtil"

    .line 3
    const-string p2, "scan file completed."

    .line 5
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/android/fileexplorer/util/MediaScanUtil$1$1;->this$0:Lcom/android/fileexplorer/util/MediaScanUtil$1;

    .line 10
    iget-boolean p2, p2, Lcom/android/fileexplorer/util/MediaScanUtil$1;->val$needNotify:Z

    .line 12
    if-eqz p2, :cond_29

    .line 14
    iget-object p2, p0, Lcom/android/fileexplorer/util/MediaScanUtil$1$1;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 19
    move-result p2

    .line 20
    if-nez p2, :cond_29

    .line 22
    const-string p2, "scan file completed, notify."

    .line 24
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isAllMiuiLite()Z

    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_29

    .line 33
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 36
    move-result-object p1

    .line 37
    const/4 p2, 0x1

    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-static {p2, v0, v0, p1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    .line 42
    :cond_29
    return-void
.end method
