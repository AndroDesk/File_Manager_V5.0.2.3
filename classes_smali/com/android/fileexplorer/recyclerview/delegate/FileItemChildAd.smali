.class public Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildAd;
.super Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;
.source "FileItemChildAd.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate<",
        "Lcom/android/fileexplorer/dao/file/FileItem;",
        "Lcom/android/fileexplorer/apptag/FileItemGroup;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FileItemChildAd"


# instance fields
.field public mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

.field public mRootView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildAd;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    return-void
.end method


# virtual methods
.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d00dd

    return v0
.end method

.method public onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/apptag/FileItemGroup;II)V
    .registers 6

    const-string p3, "FileItemChildAd onBindChildViewHolder: "

    invoke-static {p3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildAd;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    iget v0, v0, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mViewMode:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "FE_AD_LOG"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_74

    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-gt p3, p4, :cond_27

    goto :goto_74

    :cond_27
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildAd;->mRootView:Landroid/view/ViewGroup;

    :try_start_2d
    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/AdFileItem;

    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildAd;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    iget p2, p2, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->mViewMode:I

    if-nez p2, :cond_42

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/AdFileItem;->getAdListView()Landroid/view/View;

    move-result-object p2

    goto :goto_46

    :cond_42
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/AdFileItem;->getAdGridView()Landroid/view/View;

    move-result-object p2

    :goto_46
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/AdFileItem;->getAdListView()Landroid/view/View;

    move-result-object p3

    invoke-static {p3}, Lcom/fileexplorer/commonlibrary/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/AdFileItem;->getAdGridView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/fileexplorer/commonlibrary/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    if-nez p2, :cond_5e

    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildAd;->mRootView:Landroid/view/ViewGroup;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_74

    :cond_5e
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildAd;->mRootView:Landroid/view/ViewGroup;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    const-string p1, "onBindChildViewHolder: add view"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildAd;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_6e} :catch_6f

    goto :goto_74

    :catch_6f
    const-string p1, "onBindChildViewHolder: ad type exception"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    :goto_74
    return-void
.end method

.method public bridge synthetic onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;II)V
    .registers 5

    check-cast p2, Lcom/android/fileexplorer/apptag/FileItemGroup;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildAd;->onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/apptag/FileItemGroup;II)V

    return-void
.end method
