.class Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$5;
.super Lcom/android/fileexplorer/mirror/viewhelper/MirrorRecentGridSpanSizeLookup;
.source "MirrorRecentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->setRecyclerViewHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;II)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 3
    invoke-direct {p0, p2, p3}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorRecentGridSpanSizeLookup;-><init>(II)V

    .line 6
    return-void
.end method


# virtual methods
.method public getViewType(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupData;

    .line 13
    iget p1, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->viewType:I

    .line 15
    return p1
.end method
