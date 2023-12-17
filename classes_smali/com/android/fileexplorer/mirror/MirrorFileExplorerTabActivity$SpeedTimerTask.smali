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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Lcom/android/fileexplorer/activity/BaseActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$SpeedTimerTask;->this$0:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$SpeedTimerTask;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Lcom/android/fileexplorer/activity/BaseActivity;Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$SpeedTimerTask;-><init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Lcom/android/fileexplorer/activity/BaseActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$SpeedTimerTask;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$SpeedTimerTask;->this$0:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->access$100(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$SpeedTimerTask;->mLastSize:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$SpeedTimerTask;->this$0:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    invoke-static {v2}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->access$200(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$SpeedTimerTask;->mLastSize:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/s"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$SpeedTimerTask;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/activity/BaseActivity;->setProgressSpeed(Ljava/lang/String;)V

    return-void
.end method
