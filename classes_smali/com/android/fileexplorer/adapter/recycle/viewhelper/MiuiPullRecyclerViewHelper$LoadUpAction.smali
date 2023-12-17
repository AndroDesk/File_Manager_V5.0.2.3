.class Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;
.super Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;
.source "MiuiPullRecyclerViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadUpAction"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;

    .line 3
    invoke-direct {p0, p2}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;-><init>(I)V

    .line 6
    return-void
.end method


# virtual methods
.method public onActivated()V
    .registers 3

    .line 1
    const-string v0, "MiuiPullRecyclerViewHelper"

    .line 3
    const-string v1, "LoadUpAction_onActivated"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public onEntered()V
    .registers 3

    .line 1
    const-string v0, "MiuiPullRecyclerViewHelper"

    .line 3
    const-string v1, "LoadUpAction_onEntered"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public onExit()V
    .registers 3

    .line 1
    const-string v0, "MiuiPullRecyclerViewHelper"

    .line 3
    const-string v1, "LoadUpAction_onExit"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public onFinished()V
    .registers 3

    .line 1
    const-string v0, "MiuiPullRecyclerViewHelper"

    .line 3
    const-string v1, "LoadUpAction_onFinish"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;

    .line 10
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->access$100(Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;)V

    .line 13
    return-void
.end method

.method public onTriggered()V
    .registers 3

    .line 1
    const-string v0, "MiuiPullRecyclerViewHelper"

    .line 3
    const-string v1, "LoadUpAction_onTriggered"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;

    .line 10
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->notifyListenerLoadMore()V

    .line 13
    return-void
.end method
