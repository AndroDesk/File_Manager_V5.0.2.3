.class public Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchViewMore;
.super Lcom/android/fileexplorer/adapter/recycle/viewholder/NoEditableViewHolder;
.source "VHMirrorSearchViewMore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/adapter/recycle/viewholder/NoEditableViewHolder<",
        "Lcom/android/fileexplorer/adapter/search/SearchResultData<",
        "Lcom/android/fileexplorer/dao/file/FileItem;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/NoEditableViewHolder;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchViewMore;)Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchViewMore;)Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 3
    return-object p0
.end method


# virtual methods
.method public onBind(Lcom/android/fileexplorer/adapter/search/SearchResultData;IZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/adapter/search/SearchResultData<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;IZZ)V"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/NoEditableViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    .line 3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const p3, 0x7f0a0385

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 4
    new-instance p3, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchViewMore$1;

    invoke-direct {p3, p0, p2}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchViewMore$1;-><init>(Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchViewMore;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;IZZ)V
    .registers 5

    .line 1
    check-cast p1, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/viewholder/VHMirrorSearchViewMore;->onBind(Lcom/android/fileexplorer/adapter/search/SearchResultData;IZZ)V

    return-void
.end method
