.class Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$SpeedTimerTask;
.super Ljava/util/TimerTask;
.source "MirrorFileExplorerTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpeedTimerTask"
.end annotation


# instance fields
.field private mLastSize:J

.field private final mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/activity/BaseActivity;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;


# direct methods
.method private constructor <init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Lcom/android/fileexplorer/activity/BaseActivity;)V
    .registers 3

    .line 2
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$SpeedTimerTask;->this$0:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$SpeedTimerTask;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Lcom/android/fileexplorer/activity/BaseActivity;Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$1;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$SpeedTimerTask;-><init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Lcom/android/fileexplorer/activity/BaseActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$SpeedTimerTask;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$SpeedTimerTask;->this$0:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    .line 12
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->access$100(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;)J

    .line 15
    move-result-wide v0

    .line 16
    iget-wide v2, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$SpeedTimerTask;->mLastSize:J

    .line 18
    sub-long/2addr v0, v2

    .line 19
    const-wide/16 v2, 0x3e8

    .line 21
    mul-long/2addr v0, v2

    .line 22
    div-long/2addr v0, v2

    .line 23
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$SpeedTimerTask;->this$0:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    .line 25
    invoke-static {v2}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->access$200(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;)J

    .line 28
    move-result-wide v2

    .line 29
    iput-wide v2, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$SpeedTimerTask;->mLastSize:J

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v0, "/s"

    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$SpeedTimerTask;->mRef:Ljava/lang/ref/WeakReference;

    .line 54
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 60
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/activity/BaseActivity;->setProgressSpeed(Ljava/lang/String;)V

    .line 63
    return-void
.end method
