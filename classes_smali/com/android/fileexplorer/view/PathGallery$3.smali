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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/PathGallery;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/PathGallery$3;->this$0:Lcom/android/fileexplorer/view/PathGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery$3;->this$0:Lcom/android/fileexplorer/view/PathGallery;

    iget-object v0, v0, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery$3;->this$0:Lcom/android/fileexplorer/view/PathGallery;

    invoke-static {v0}, Lcom/android/fileexplorer/view/PathGallery;->access$100(Lcom/android/fileexplorer/view/PathGallery;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery$3;->this$0:Lcom/android/fileexplorer/view/PathGallery;

    iget-object v1, v1, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_1d
    return-void
.end method
