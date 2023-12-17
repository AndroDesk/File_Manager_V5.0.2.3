.class Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$3;
.super Ljava/lang/Object;
.source "CategoryChoiceFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$3;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onEnterPrivate()V
    .registers 1

    return-void
.end method

.method public onLoadMore()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$3;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$300(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_e

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$3;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$200(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;Z)V

    .line 15
    :cond_e
    return-void
.end method

.method public onRefresh()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$3;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$200(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;Z)V

    .line 7
    return-void
.end method
