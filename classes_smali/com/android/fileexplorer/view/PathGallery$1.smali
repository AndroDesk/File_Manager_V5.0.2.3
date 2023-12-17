.class Lcom/android/fileexplorer/view/PathGallery$1;
.super Lcom/android/fileexplorer/adapter/recycle/listener/SimpleItemActionAdapter;
.source "PathGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/PathGallery;->initAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
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

    iput-object p1, p0, Lcom/android/fileexplorer/view/PathGallery$1;->this$0:Lcom/android/fileexplorer/view/PathGallery;

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/listener/SimpleItemActionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;III)V
    .registers 5

    iget-object p1, p0, Lcom/android/fileexplorer/view/PathGallery$1;->this$0:Lcom/android/fileexplorer/view/PathGallery;

    iget-object p3, p1, Lcom/android/fileexplorer/view/PathGallery;->mPathItemClickListener:Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;

    if-nez p3, :cond_b

    iget-object p1, p1, Lcom/android/fileexplorer/view/PathGallery;->mCloudPathItemClickListener:Lcom/android/fileexplorer/view/PathGallery$ICloudPathItemClickListener;

    if-nez p1, :cond_b

    return-void

    :cond_b
    const-string p1, "galley_TAG_PathGallery"

    const-string p3, "onItemClick"

    invoke-static {p1, p3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/fileexplorer/view/PathGallery$1;->this$0:Lcom/android/fileexplorer/view/PathGallery;

    iget-object p3, p3, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lt p2, p3, :cond_37

    const-string p3, "invalid pathGalley click, pos = "

    const-string p4, ", realSize = "

    invoke-static {p3, p2, p4}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/fileexplorer/view/PathGallery$1;->this$0:Lcom/android/fileexplorer/view/PathGallery;

    iget-object p3, p3, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    :cond_37
    iget-object p1, p0, Lcom/android/fileexplorer/view/PathGallery$1;->this$0:Lcom/android/fileexplorer/view/PathGallery;

    iget-object p3, p1, Lcom/android/fileexplorer/view/PathGallery;->mPathItemClickListener:Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;

    if-eqz p3, :cond_4b

    iget-object p1, p1, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/PathSegment;

    iget-object p1, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    invoke-interface {p3, p1}, Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;->onPathItemClickListener(Ljava/lang/String;)Z

    goto :goto_58

    :cond_4b
    iget-object p3, p1, Lcom/android/fileexplorer/view/PathGallery;->mCloudPathItemClickListener:Lcom/android/fileexplorer/view/PathGallery$ICloudPathItemClickListener;

    iget-object p1, p1, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/PathSegment;

    invoke-interface {p3, p1}, Lcom/android/fileexplorer/view/PathGallery$ICloudPathItemClickListener;->onPathItemClickListener(Lcom/android/fileexplorer/model/PathSegment;)Z

    :goto_58
    return-void
.end method
