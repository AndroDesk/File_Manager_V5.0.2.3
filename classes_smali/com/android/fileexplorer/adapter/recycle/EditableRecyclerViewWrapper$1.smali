.class Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$1;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "EditableRecyclerViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->access$000(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)V

    .line 6
    return-void
.end method
