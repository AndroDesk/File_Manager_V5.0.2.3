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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/modecallback/OnChoiceItemBaseClickListenerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;III)V
    .registers 5

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;)Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    const-string p1, "MirrorPathGallery"

    const-string p3, "onItemClick"

    invoke-static {p1, p3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;

    invoke-static {p3}, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;->access$100(Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lt p2, p3, :cond_39

    const-string p3, "invalid pathGalley click, pos = "

    const-string p4, ", realSize = "

    invoke-static {p3, p2, p4}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;

    invoke-static {p3}, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;->access$200(Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50

    :cond_39
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;->access$400(Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;)Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;

    move-result-object p1

    iget-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;

    invoke-static {p3}, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;->access$300(Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/model/PathSegment;

    iget-object p2, p2, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;->onPathItemClickListener(Ljava/lang/String;)Z

    :goto_50
    return-void
.end method
