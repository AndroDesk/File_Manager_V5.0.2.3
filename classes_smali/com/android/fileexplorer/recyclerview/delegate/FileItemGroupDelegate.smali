.class public Lcom/android/fileexplorer/recyclerview/delegate/FileItemGroupDelegate;
.super Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate;
.source "FileItemGroupDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate<",
        "Lcom/android/fileexplorer/dao/file/FileItem;",
        "Lcom/android/fileexplorer/apptag/FileItemGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

.field private mContext:Landroid/content/Context;

.field private mIsFromAppCategroy:Z


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemGroupDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemGroupDelegate;->mIsFromAppCategroy:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;Z)V
    .registers 3

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemGroupDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 6
    iput-boolean p2, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemGroupDelegate;->mIsFromAppCategroy:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/recyclerview/delegate/FileItemGroupDelegate;ILandroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemGroupDelegate;->lambda$onBindGroupViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindGroupViewHolder$0(ILandroid/view/View;)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemGroupDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 3
    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->toggleGroupCheckAll(I)V

    .line 6
    return-void
.end method


# virtual methods
.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d00db

    return v0
.end method

.method public onBindGroupViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/apptag/FileItemGroup;IZ)V
    .registers 16

    const v0, 0x7f0a0453

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0389

    .line 3
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4
    iget-boolean v2, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemGroupDelegate;->mIsFromAppCategroy:Z

    if-nez v2, :cond_26

    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_26

    :cond_21
    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getTitle()Ljava/lang/String;

    move-result-object v2

    goto :goto_30

    :cond_26
    :goto_26
    iget-object v2, p2, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupCreateTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/TimeUtils;->format(J)Ljava/lang/String;

    move-result-object v2

    :goto_30
    const v3, 0x7f0a0214

    .line 5
    invoke-virtual {p1, v3}, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0a038e

    .line 6
    invoke-virtual {p1, v4}, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 7
    iget-object v4, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemGroupDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isInSelectionMode()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_56

    iget-object v4, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemGroupDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isSingleMode()Z

    move-result v4

    if-nez v4, :cond_56

    move v4, v5

    goto :goto_57

    :cond_56
    move v4, v6

    .line 8
    :goto_57
    sget-boolean v7, Lcom/android/fileexplorer/util/AdUtil;->IS_SHOW_AD:Z

    if-eqz v7, :cond_60

    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCountExcludeAd()I

    move-result v7

    goto :goto_64

    :cond_60
    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    move-result v7

    .line 9
    :goto_64
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0033

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v6

    invoke-virtual {v8, v9, v7, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v7, 0x7f11012a

    .line 10
    invoke-static {v7}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 11
    instance-of v8, p2, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    if-eqz v8, :cond_8d

    move-object v9, p2

    check-cast v9, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    iget-boolean v9, v9, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->isSecondary:Z

    if-eqz v9, :cond_a0

    .line 12
    :cond_8d
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    move-result v9

    if-eqz v9, :cond_98

    .line 13
    invoke-static {v5, v7, v2}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_9c

    :cond_98
    invoke-static {v2, v7, v5}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 14
    :goto_9c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_a0
    const/16 v5, 0x8

    if-eqz v8, :cond_f4

    .line 15
    move-object v8, p2

    check-cast v8, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    iget-boolean v9, v8, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->isSecondary:Z

    if-nez v9, :cond_f4

    .line 16
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 17
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const p1, 0x7f0802a9

    .line 18
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    iget-object p1, v8, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupTag1:Ljava/lang/String;

    .line 20
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 21
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    move-result p1

    if-eqz p1, :cond_de

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupCreateTime:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-static {p2, p3}, Lcom/android/fileexplorer/model/TimeUtils;->format(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ef

    .line 23
    :cond_de
    invoke-static {v2, v7}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 24
    iget-object p2, p2, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupCreateTime:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-static {p2, p3}, Lcom/android/fileexplorer/model/TimeUtils;->format(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_ef
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_139

    :cond_f4
    if-eqz v4, :cond_121

    .line 25
    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemGroupDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {p2, p3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getGroupPos(I)I

    move-result p2

    .line 26
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 27
    new-instance p3, Lb2/a;

    const/4 p4, 0x2

    invoke-direct {p3, p2, p4, p0}, Lb2/a;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object p3, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemGroupDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {p3, p2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isGroupAllItemsChecked(I)Z

    move-result p2

    if-eqz p2, :cond_114

    const p2, 0x7f110415

    goto :goto_117

    :cond_114
    const p2, 0x7f110414

    .line 29
    :goto_117
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 30
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_139

    .line 32
    :cond_121
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 33
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p4, :cond_12d

    const p1, 0x7f08026a

    goto :goto_130

    :cond_12d
    const p1, 0x7f08026b

    .line 34
    :goto_130
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    invoke-virtual {v3, p4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 36
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 37
    :goto_139
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onBindGroupViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;IZ)V
    .registers 5

    .line 1
    check-cast p2, Lcom/android/fileexplorer/apptag/FileItemGroup;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemGroupDelegate;->onBindGroupViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/apptag/FileItemGroup;IZ)V

    return-void
.end method
