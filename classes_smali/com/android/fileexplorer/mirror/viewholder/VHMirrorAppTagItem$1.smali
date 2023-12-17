.class Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem$1;
.super Ljava/lang/Object;
.source "VHMirrorAppTagItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;->onBind(Lcom/android/fileexplorer/dao/file/AppTag;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem$1;->this$0:Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;

    .line 3
    iput p2, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem$1;->val$position:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 1
    const-string v0, "VHAppTagItem"

    .line 3
    const-string v1, "onClick"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem$1;->this$0:Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;

    .line 10
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;->access$000(Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;)Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_21

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem$1;->this$0:Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;

    .line 18
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;->access$100(Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;)Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 21
    move-result-object v0

    .line 22
    iget v1, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem$1;->val$position:I

    .line 24
    const/4 v2, 0x0

    .line 25
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem$1;->this$0:Lcom/android/fileexplorer/mirror/viewholder/VHMirrorAppTagItem;

    .line 27
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    .line 30
    move-result v3

    .line 31
    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->onItemClick(Landroid/view/View;III)V

    .line 34
    :cond_21
    return-void
.end method
