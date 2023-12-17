.class Lcom/android/fileexplorer/activity/AppTagActivity$1;
.super Ljava/lang/Object;
.source "AppTagActivity.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/AppTagActivity;->initEmptyTrigger()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/AppTagActivity;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/activity/AppTagActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/AppTagActivity$1;->this$0:Lcom/android/fileexplorer/activity/AppTagActivity;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDeActive()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity$1;->this$0:Lcom/android/fileexplorer/activity/AppTagActivity;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/activity/AppTagActivity;->access$000(Lcom/android/fileexplorer/activity/AppTagActivity;)Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_11

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity$1;->this$0:Lcom/android/fileexplorer/activity/AppTagActivity;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/activity/AppTagActivity;->access$000(Lcom/android/fileexplorer/activity/AppTagActivity;)Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDeActiveEmptyView()V

    .line 18
    :cond_11
    return-void
.end method

.method public onReverse()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity$1;->this$0:Lcom/android/fileexplorer/activity/AppTagActivity;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/activity/AppTagActivity;->access$000(Lcom/android/fileexplorer/activity/AppTagActivity;)Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_11

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/activity/AppTagActivity$1;->this$0:Lcom/android/fileexplorer/activity/AppTagActivity;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/activity/AppTagActivity;->access$000(Lcom/android/fileexplorer/activity/AppTagActivity;)Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->reverseEmptyViewState()V

    .line 18
    :cond_11
    return-void
.end method
