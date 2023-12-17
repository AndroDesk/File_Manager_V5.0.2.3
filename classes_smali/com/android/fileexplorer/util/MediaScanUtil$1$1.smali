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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/util/MediaScanUtil$1;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/util/MediaScanUtil$1$1;->this$0:Lcom/android/fileexplorer/util/MediaScanUtil$1;

    iput-object p2, p0, Lcom/android/fileexplorer/util/MediaScanUtil$1$1;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4

    const-string p1, "MediaScanUtil"

    const-string p2, "scan file completed."

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/fileexplorer/util/MediaScanUtil$1$1;->this$0:Lcom/android/fileexplorer/util/MediaScanUtil$1;

    iget-boolean p2, p2, Lcom/android/fileexplorer/util/MediaScanUtil$1;->val$needNotify:Z

    if-eqz p2, :cond_29

    iget-object p2, p0, Lcom/android/fileexplorer/util/MediaScanUtil$1$1;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p2

    if-nez p2, :cond_29

    const-string p2, "scan file completed, notify."

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isAllMiuiLite()Z

    move-result p1

    if-nez p1, :cond_29

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {p2, v0, v0, p1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    :cond_29
    return-void
.end method
