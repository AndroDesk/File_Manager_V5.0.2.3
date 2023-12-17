.class Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchViewMore$1;
.super Ljava/lang/Object;
.source "VHMirrorSearchViewMore.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchViewMore;->onBind(Lcom/android/fileexplorer/adapter/search/SearchResultData;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchViewMore;

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchViewMore;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchViewMore$1;->this$0:Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchViewMore;

    .line 3
    iput p2, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchViewMore$1;->val$position:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchViewMore$1;->this$0:Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchViewMore;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchViewMore;->access$000(Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchViewMore;)Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_16

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchViewMore$1;->this$0:Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchViewMore;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchViewMore;->access$100(Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchViewMore;)Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchViewMore$1;->val$position:I

    .line 17
    const/4 v2, 0x1

    .line 18
    const/16 v3, 0x14

    .line 20
    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;->onItemClick(Landroid/view/View;III)V

    .line 23
    :cond_16
    return-void
.end method
