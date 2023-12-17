.class public Lcom/android/fileexplorer/recyclerview/delegate/FileInfoGroupDelegate;
.super Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate;
.source "FileInfoGroupDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate<",
        "Lcom/android/fileexplorer/model/FileInfo;",
        "Lcom/android/fileexplorer/model/FileInfoGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoGroupDelegate;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoGroupDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/recyclerview/delegate/FileInfoGroupDelegate;ILandroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoGroupDelegate;->lambda$onBindGroupViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindGroupViewHolder$0(ILandroid/view/View;)V
    .registers 3

    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoGroupDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->toggleGroupCheckAll(I)V

    return-void
.end method


# virtual methods
.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d00db

    return v0
.end method

.method public onBindGroupViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/model/FileInfoGroup;IZ)V
    .registers 15

    const v0, 0x7f0a0453

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p2, Lcom/android/fileexplorer/model/FileInfoGroup;->groupStartTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/TimeUtils;->format(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    :cond_1e
    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_22
    const v2, 0x7f0a0214

    invoke-virtual {p1, v2}, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a038e

    invoke-virtual {p1, v3}, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoGroupDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isInSelectionMode()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoGroupDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isSingleMode()Z

    move-result v3

    if-nez v3, :cond_48

    move v3, v4

    goto :goto_49

    :cond_48
    move v3, v5

    :goto_49
    sget-boolean v6, Lcom/android/fileexplorer/util/AdUtil;->IS_SHOW_AD:Z

    if-eqz v6, :cond_52

    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCountExcludeAd()I

    move-result p2

    goto :goto_56

    :cond_52
    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    move-result p2

    :goto_56
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0033

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v6, v7, p2, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const v6, 0x7f11012a

    invoke-static {v6}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    move-result v7

    if-eqz v7, :cond_7f

    invoke-static {p2, v6, v1}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    goto :goto_83

    :cond_7f
    invoke-static {v1, v6, p2}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    :goto_83
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x8

    if-eqz v3, :cond_b2

    iget-object p4, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoGroupDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {p4, p3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getGroupPos(I)I

    move-result p3

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance p4, Lb2/a;

    invoke-direct {p4, p3, v4, p0}, Lb2/a;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p4, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoGroupDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {p4, p3}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isGroupAllItemsChecked(I)Z

    move-result p3

    if-eqz p3, :cond_a8

    const p3, 0x7f110415

    goto :goto_ab

    :cond_a8
    const p3, 0x7f110414

    :goto_ab
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_bd

    :cond_b2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    xor-int/lit8 p1, p4, 0x1

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_bd
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onBindGroupViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;IZ)V
    .registers 5

    check-cast p2, Lcom/android/fileexplorer/model/FileInfoGroup;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoGroupDelegate;->onBindGroupViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/model/FileInfoGroup;IZ)V

    return-void
.end method
