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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$5;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeChanged(II)V
    .registers 4

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$5;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    const/4 v0, 0x2

    if-ne p2, v0, :cond_7

    const/4 p2, 0x1

    goto :goto_8

    :cond_7
    const/4 p2, 0x0

    :goto_8
    iput-boolean p2, p1, Lcom/android/fileexplorer/fragment/RecentFragment;->isActionMode:Z

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$900(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/android/fileexplorer/event/ActionModeChangeEvent;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$5;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    iget-boolean v0, v0, Lcom/android/fileexplorer/fragment/RecentFragment;->isActionMode:Z

    invoke-direct {p2, v0}, Lcom/android/fileexplorer/event/ActionModeChangeEvent;-><init>(Z)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
