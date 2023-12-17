.class Lcom/android/fileexplorer/controller/IntentBuilder$1;
.super Ljava/lang/Object;
.source "IntentBuilder.java"

# interfaces
.implements Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/controller/IntentBuilder;->viewCloudVideo(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field public final synthetic val$fileName:Ljava/lang/String;

.field public final synthetic val$task:Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading;


# direct methods
.method public constructor <init>(Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$1;->val$task:Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$1;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/controller/IntentBuilder$1;->val$fileName:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onRequestFinished(Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$Result;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/IntentBuilder;->mTasks:Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$1;->val$task:Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading;

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$1;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 10
    if-eqz v0, :cond_63

    .line 12
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_16

    .line 22
    goto :goto_63

    .line 23
    :cond_16
    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$1;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 25
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->dismissProgress()V

    .line 28
    instance-of v0, p1, Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading$CloudVideoResult;

    .line 30
    if-eqz v0, :cond_31

    .line 32
    check-cast p1, Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading$CloudVideoResult;

    .line 34
    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$1;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 36
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p1, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$SuccessResult;->url:Ljava/lang/String;

    .line 42
    iget-object p1, p1, Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading$CloudVideoResult;->type:Ljava/lang/String;

    .line 44
    iget-object v2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$1;->val$fileName:Ljava/lang/String;

    .line 46
    invoke-static {v0, v1, p1, v2}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    goto :goto_63

    .line 50
    :cond_31
    instance-of v0, p1, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$FailedResult;

    .line 52
    if-eqz v0, :cond_5d

    .line 54
    check-cast p1, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$FailedResult;

    .line 56
    iget-object p1, p1, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$FailedResult;->e:Ljava/lang/Throwable;

    .line 58
    instance-of v0, p1, Lcom/micloud/midrive/server/exception/MiDriveUnavailableException;

    .line 60
    if-eqz v0, :cond_4b

    .line 62
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 65
    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$1;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 68
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Lcom/android/cloud/CloudDriveManager;->showUnavailableAlertDialog(Landroid/app/Activity;)Lmiuix/appcompat/app/AlertDialog;

    .line 75
    goto :goto_63

    .line 76
    :cond_4b
    instance-of p1, p1, Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException;

    .line 78
    if-eqz p1, :cond_56

    .line 80
    const p1, 0x7f1102d3

    .line 83
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 86
    goto :goto_63

    .line 87
    :cond_56
    const p1, 0x7f110323

    .line 90
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 93
    goto :goto_63

    .line 94
    :cond_5d
    const p1, 0x7f110230

    .line 97
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 100
    :cond_63
    :goto_63
    return-void
.end method
