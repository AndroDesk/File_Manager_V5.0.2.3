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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$1;->val$task:Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading;

    iput-object p2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$1;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iput-object p3, p0, Lcom/android/fileexplorer/controller/IntentBuilder$1;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFinished(Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$Result;)V
    .registers 5

    sget-object v0, Lcom/android/fileexplorer/controller/IntentBuilder;->mTasks:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$1;->val$task:Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$1;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-eqz v0, :cond_63

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_63

    :cond_16
    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$1;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->dismissProgress()V

    instance-of v0, p1, Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading$CloudVideoResult;

    if-eqz v0, :cond_31

    check-cast p1, Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading$CloudVideoResult;

    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$1;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    iget-object v1, p1, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$SuccessResult;->url:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading$CloudVideoResult;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$1;->val$fileName:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/android/fileexplorer/controller/IntentBuilder;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63

    :cond_31
    instance-of v0, p1, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$FailedResult;

    if-eqz v0, :cond_5d

    check-cast p1, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$FailedResult;

    iget-object p1, p1, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$FailedResult;->e:Ljava/lang/Throwable;

    instance-of v0, p1, Lcom/micloud/midrive/server/exception/MiDriveUnavailableException;

    if-eqz v0, :cond_4b

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$1;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/cloud/CloudDriveManager;->showUnavailableAlertDialog(Landroid/app/Activity;)Lmiuix/appcompat/app/AlertDialog;

    goto :goto_63

    :cond_4b
    instance-of p1, p1, Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException;

    if-eqz p1, :cond_56

    const p1, 0x7f1102d3

    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto :goto_63

    :cond_56
    const p1, 0x7f110323

    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto :goto_63

    :cond_5d
    const p1, 0x7f110230

    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    :cond_63
    :goto_63
    return-void
.end method
