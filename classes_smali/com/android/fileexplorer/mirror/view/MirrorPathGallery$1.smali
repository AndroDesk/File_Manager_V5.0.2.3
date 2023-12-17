.class Lcom/android/fileexplorer/mirror/view/MirrorPathGallery$1;
.super Lcom/android/fileexplorer/mirror/modecallback/OnChoiceItemBaseClickListenerImpl;
.source "MirrorPathGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;->initAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;

    .line 3
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/modecallback/OnChoiceItemBaseClickListenerImpl;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;III)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;)Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;

    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    const-string p1, "MirrorPathGallery"

    .line 12
    const-string p3, "onItemClick"

    .line 14
    invoke-static {p1, p3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;

    .line 19
    invoke-static {p3}, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;->access$100(Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;)Ljava/util/ArrayList;

    .line 22
    move-result-object p3

    .line 23
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 26
    move-result p3

    .line 27
    if-lt p2, p3, :cond_39

    .line 29
    const-string p3, "invalid pathGalley click, pos = "

    .line 31
    const-string p4, ", realSize = "

    .line 33
    invoke-static {p3, p2, p4}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    move-result-object p2

    .line 37
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;

    .line 39
    invoke-static {p3}, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;->access$200(Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;)Ljava/util/ArrayList;

    .line 42
    move-result-object p3

    .line 43
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 46
    move-result p3

    .line 47
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p2

    .line 54
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    goto :goto_50

    .line 58
    :cond_39
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;

    .line 60
    invoke-static {p1}, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;->access$400(Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;)Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;

    .line 63
    move-result-object p1

    .line 64
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;

    .line 66
    invoke-static {p3}, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;->access$300(Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;)Ljava/util/ArrayList;

    .line 69
    move-result-object p3

    .line 70
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object p2

    .line 74
    check-cast p2, Lcom/android/fileexplorer/model/PathSegment;

    .line 76
    iget-object p2, p2, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 78
    invoke-interface {p1, p2}, Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;->onPathItemClickListener(Ljava/lang/String;)Z

    .line 81
    :goto_50
    return-void
.end method
