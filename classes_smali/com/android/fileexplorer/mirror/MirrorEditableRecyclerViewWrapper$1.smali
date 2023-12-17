.class Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$1;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "MirrorEditableRecyclerViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$1;->this$0:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$1;->this$0:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->access$000(Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;)V

    .line 6
    return-void
.end method
