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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;

    invoke-direct {p0, p2}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onActivated()V
    .registers 3

    const-string v0, "MiuiPullRecyclerViewHelper"

    const-string v1, "LoadUpAction_onActivated"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onEntered()V
    .registers 3

    const-string v0, "MiuiPullRecyclerViewHelper"

    const-string v1, "LoadUpAction_onEntered"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onExit()V
    .registers 3

    const-string v0, "MiuiPullRecyclerViewHelper"

    const-string v1, "LoadUpAction_onExit"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFinished()V
    .registers 3

    const-string v0, "MiuiPullRecyclerViewHelper"

    const-string v1, "LoadUpAction_onFinish"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->access$100(Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;)V

    return-void
.end method

.method public onTriggered()V
    .registers 3

    const-string v0, "MiuiPullRecyclerViewHelper"

    const-string v1, "LoadUpAction_onTriggered"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->notifyListenerLoadMore()V

    return-void
.end method
