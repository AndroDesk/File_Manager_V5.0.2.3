.class Lcom/android/fileexplorer/view/PathGallery$3;
.super Ljava/lang/Object;
.source "PathGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/PathGallery;->refreshAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/PathGallery;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/PathGallery;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/PathGallery$3;->this$0:Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery$3;->this$0:Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1d

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery$3;->this$0:Lcom/android/fileexplorer/view/PathGallery;

    .line 13
    invoke-static {v0}, Lcom/android/fileexplorer/view/PathGallery;->access$100(Lcom/android/fileexplorer/view/PathGallery;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery$3;->this$0:Lcom/android/fileexplorer/view/PathGallery;

    .line 19
    iget-object v1, v1, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result v1

    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 27
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 30
    :cond_1d
    return-void
.end method
