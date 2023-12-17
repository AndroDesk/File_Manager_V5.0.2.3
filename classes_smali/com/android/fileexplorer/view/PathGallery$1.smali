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
.method public constructor <init>(Lcom/android/fileexplorer/view/PathGallery;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/PathGallery$1;->this$0:Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/listener/SimpleItemActionAdapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;III)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/view/PathGallery$1;->this$0:Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    iget-object p3, p1, Lcom/android/fileexplorer/view/PathGallery;->mPathItemClickListener:Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;

    .line 5
    if-nez p3, :cond_b

    .line 7
    iget-object p1, p1, Lcom/android/fileexplorer/view/PathGallery;->mCloudPathItemClickListener:Lcom/android/fileexplorer/view/PathGallery$ICloudPathItemClickListener;

    .line 9
    if-nez p1, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    const-string p1, "galley_TAG_PathGallery"

    .line 14
    const-string p3, "onItemClick"

    .line 16
    invoke-static {p1, p3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p3, p0, Lcom/android/fileexplorer/view/PathGallery$1;->this$0:Lcom/android/fileexplorer/view/PathGallery;

    .line 21
    iget-object p3, p3, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 26
    move-result p3

    .line 27
    if-lt p2, p3, :cond_37

    .line 29
    const-string p3, "invalid pathGalley click, pos = "

    .line 31
    const-string p4, ", realSize = "

    .line 33
    invoke-static {p3, p2, p4}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    move-result-object p2

    .line 37
    iget-object p3, p0, Lcom/android/fileexplorer/view/PathGallery$1;->this$0:Lcom/android/fileexplorer/view/PathGallery;

    .line 39
    iget-object p3, p3, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 44
    move-result p3

    .line 45
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p2

    .line 52
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    goto :goto_58

    .line 56
    :cond_37
    iget-object p1, p0, Lcom/android/fileexplorer/view/PathGallery$1;->this$0:Lcom/android/fileexplorer/view/PathGallery;

    .line 58
    iget-object p3, p1, Lcom/android/fileexplorer/view/PathGallery;->mPathItemClickListener:Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;

    .line 60
    if-eqz p3, :cond_4b

    .line 62
    iget-object p1, p1, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/android/fileexplorer/model/PathSegment;

    .line 70
    iget-object p1, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 72
    invoke-interface {p3, p1}, Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;->onPathItemClickListener(Ljava/lang/String;)Z

    .line 75
    goto :goto_58

    .line 76
    :cond_4b
    iget-object p3, p1, Lcom/android/fileexplorer/view/PathGallery;->mCloudPathItemClickListener:Lcom/android/fileexplorer/view/PathGallery$ICloudPathItemClickListener;

    .line 78
    iget-object p1, p1, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lcom/android/fileexplorer/model/PathSegment;

    .line 86
    invoke-interface {p3, p1}, Lcom/android/fileexplorer/view/PathGallery$ICloudPathItemClickListener;->onPathItemClickListener(Lcom/android/fileexplorer/model/PathSegment;)Z

    .line 89
    :goto_58
    return-void
.end method
