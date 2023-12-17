.class public Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "OtherEntryViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/fileexplorer/model/FileEntryViewItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileEntryEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;->mContext:Landroid/content/Context;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;->mDatas:Ljava/util/List;

    .line 13
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;->mListener:Landroid/view/View$OnClickListener;

    .line 15
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;->mDatas:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    .line 1
    check-cast p1, Lcom/android/fileexplorer/model/FileEntryViewItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;->onBindViewHolder(Lcom/android/fileexplorer/model/FileEntryViewItem;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/fileexplorer/model/FileEntryViewItem;I)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/model/FileEntryEntity;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/model/FileEntryViewItem;->bindView(Lcom/android/fileexplorer/model/FileEntryEntity;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/model/FileEntryViewItem;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/model/FileEntryViewItem;
    .registers 3

    .line 2
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/FileEntryViewItem;->newInstance(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Lcom/android/fileexplorer/model/FileEntryViewItem;

    move-result-object p1

    return-object p1
.end method

.method public setData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileEntryEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;->mDatas:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;->mDatas:Ljava/util/List;

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 20
    return-void
.end method
