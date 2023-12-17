.class public Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegateMusic;
.super Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;
.source "FileInfoChildDelegateMusic.java"


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    .line 4
    return-void
.end method


# virtual methods
.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d00a3

    return v0
.end method

.method public onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/model/FileInfoGroup;II)V
    .registers 5

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/model/FileInfoGroup;II)V

    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    if-eqz p1, :cond_14

    instance-of p2, p1, Lcom/android/fileexplorer/view/GridItemView;

    if-eqz p2, :cond_14

    .line 4
    check-cast p1, Lcom/android/fileexplorer/view/GridItemView;

    .line 5
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    :cond_14
    return-void
.end method

.method public bridge synthetic onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;II)V
    .registers 5

    .line 1
    check-cast p2, Lcom/android/fileexplorer/model/FileInfoGroup;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegateMusic;->onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/model/FileInfoGroup;II)V

    return-void
.end method
