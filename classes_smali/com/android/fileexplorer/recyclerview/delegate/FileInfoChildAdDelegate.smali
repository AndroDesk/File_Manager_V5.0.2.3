.class public Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildAdDelegate;
.super Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;
.source "FileInfoChildAdDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate<",
        "Lcom/android/fileexplorer/model/FileInfo;",
        "Lcom/android/fileexplorer/model/FileInfoGroup;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FileInfoChildAdDelegate"


# instance fields
.field private mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

.field public mRootView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildAdDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    return-void
.end method


# virtual methods
.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d00dd

    return v0
.end method

.method public onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/model/FileInfoGroup;II)V
    .registers 6

    const-string p3, "FE_AD_LOG"

    const-string v0, "FileItemChildAd onBindChildViewHolder"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_62

    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-gt p3, p4, :cond_18

    goto :goto_62

    :cond_18
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildAdDelegate;->mRootView:Landroid/view/ViewGroup;

    :try_start_1e
    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/AdFileInfo;

    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildAdDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    iget p2, p2, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mViewMode:I

    if-nez p2, :cond_33

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/AdFileInfo;->getAdListView()Landroid/view/View;

    move-result-object p2

    goto :goto_37

    :cond_33
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/AdFileInfo;->getAdGridView()Landroid/view/View;

    move-result-object p2

    :goto_37
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/AdFileInfo;->getAdListView()Landroid/view/View;

    move-result-object p3

    invoke-static {p3}, Lcom/fileexplorer/commonlibrary/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/AdFileInfo;->getAdGridView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/fileexplorer/commonlibrary/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    if-nez p2, :cond_4f

    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildAdDelegate;->mRootView:Landroid/view/ViewGroup;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_62

    :cond_4f
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildAdDelegate;->mRootView:Landroid/view/ViewGroup;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildAdDelegate;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_5a} :catch_5b

    goto :goto_62

    :catch_5b
    const-string p1, "FileInfoChildAdDelegate"

    const-string p2, "onBindChildViewHolder: ad type exception"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    :goto_62
    return-void
.end method

.method public bridge synthetic onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;II)V
    .registers 5

    check-cast p2, Lcom/android/fileexplorer/model/FileInfoGroup;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildAdDelegate;->onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/model/FileInfoGroup;II)V

    return-void
.end method
