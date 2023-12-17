.class Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$1;
.super Ljava/lang/Object;
.source "PinnedSectionRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->recreatePinnedViewInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->access$200(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;)I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->updatePinnedView(IZ)V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 13
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->access$300(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;)V

    .line 16
    return-void
.end method
