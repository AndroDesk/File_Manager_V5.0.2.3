.class Lcom/android/fileexplorer/fragment/FileGroupFragment$5;
.super Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupGridSpanSizeLookup;
.source "FileGroupFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/FileGroupFragment;->setRecyclerViewHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/FileGroupFragment;II)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-direct {p0, p2, p3}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupGridSpanSizeLookup;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getViewType(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$000(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupData;

    iget p1, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->viewType:I

    return p1
.end method
