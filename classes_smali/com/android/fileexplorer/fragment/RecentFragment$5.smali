.class Lcom/android/fileexplorer/fragment/RecentFragment$5;
.super Ljava/lang/Object;
.source "RecentFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/RecentFragment;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/RecentFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$5;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onModeChanged(II)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$5;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    .line 3
    const/4 v0, 0x2

    .line 4
    if-ne p2, v0, :cond_7

    .line 6
    const/4 p2, 0x1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 p2, 0x0

    .line 9
    :goto_8
    iput-boolean p2, p1, Lcom/android/fileexplorer/fragment/RecentFragment;->isActionMode:Z

    .line 11
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$900(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    .line 14
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 17
    move-result-object p1

    .line 18
    new-instance p2, Lcom/android/fileexplorer/event/ActionModeChangeEvent;

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$5;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    .line 22
    iget-boolean v0, v0, Lcom/android/fileexplorer/fragment/RecentFragment;->isActionMode:Z

    .line 24
    invoke-direct {p2, v0}, Lcom/android/fileexplorer/event/ActionModeChangeEvent;-><init>(Z)V

    .line 27
    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 30
    return-void
.end method
