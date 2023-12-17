.class public Lcom/android/fileexplorer/util/BaseActivityHelper$SpeedTimerTask;
.super Ljava/util/TimerTask;
.source "BaseActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/util/BaseActivityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpeedTimerTask"
.end annotation


# instance fields
.field private mLastSize:J

.field private final mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$SpeedTimerTask;->mRef:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$SpeedTimerTask;->mRef:Ljava/lang/ref/WeakReference;

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
    iget-object v0, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$SpeedTimerTask;->mRef:Ljava/lang/ref/WeakReference;

    .line 12
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 18
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getTotalSize()J

    .line 21
    move-result-wide v0

    .line 22
    iget-wide v2, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$SpeedTimerTask;->mLastSize:J

    .line 24
    sub-long/2addr v0, v2

    .line 25
    const-wide/16 v2, 0x3e8

    .line 27
    mul-long/2addr v0, v2

    .line 28
    div-long/2addr v0, v2

    .line 29
    iget-object v2, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$SpeedTimerTask;->mRef:Ljava/lang/ref/WeakReference;

    .line 31
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 37
    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getTotalSize()J

    .line 40
    move-result-wide v2

    .line 41
    iput-wide v2, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$SpeedTimerTask;->mLastSize:J

    .line 43
    const-wide/16 v2, 0x0

    .line 45
    cmp-long v2, v0, v2

    .line 47
    if-nez v2, :cond_38

    .line 49
    const-string v0, "BaseActivityHelper"

    .line 51
    const-string v1, "sizeIncreased is 0"

    .line 53
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void

    .line 57
    :cond_38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v0, "/s"

    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$SpeedTimerTask;->mRef:Ljava/lang/ref/WeakReference;

    .line 80
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 86
    invoke-interface {v1, v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->setProgressSpeed(Ljava/lang/String;)V

    .line 89
    return-void
.end method
