.class public Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;
.super Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;
.source "CloudFileListRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter<",
        "Lcom/micloud/midrive/infos/SyncCloudFileInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudFileListRecyclerAdapter"


# instance fields
.field private mChoiceList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnChoiceItemClickListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

.field private mViewMode:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncCloudFileInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;-><init>(Ljava/util/List;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->mViewMode:I

    .line 7
    new-instance p1, Ljava/util/HashSet;

    .line 9
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->mChoiceList:Ljava/util/HashSet;

    .line 14
    new-instance p1, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter$1;

    .line 16
    invoke-direct {p1, p0}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter$1;-><init>(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;)V

    .line 19
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->setOnItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 22
    return-void
.end method

.method public static synthetic access$000(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->mViewMode:I

    .line 3
    return p0
.end method

.method public static synthetic access$100(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;)Ljava/util/HashSet;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->mChoiceList:Ljava/util/HashSet;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->addChoice(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;I)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->removeChoice(I)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$400(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->mOnChoiceItemClickListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;I)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->isItemSelect(I)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private addChoice(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-le v0, p1, :cond_21

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 17
    if-eqz v0, :cond_1a

    .line 19
    iget-object p1, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->mChoiceList:Ljava/util/HashSet;

    .line 21
    iget-object v0, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 23
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    goto :goto_21

    .line 27
    :cond_1a
    const-string v0, "addChoice info is null, position = "

    .line 29
    const-string v1, "CloudFileListRecyclerAdapter"

    .line 31
    invoke-static {v0, p1, v1}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    .line 34
    :cond_21
    :goto_21
    return-void
.end method

.method private isItemSelect(I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-le v0, p1, :cond_22

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 17
    if-eqz v0, :cond_1b

    .line 19
    iget-object p1, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->mChoiceList:Ljava/util/HashSet;

    .line 21
    iget-object v0, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 23
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_1b
    const-string v0, "isItemSelected, info is null, position = "

    .line 30
    const-string v1, "CloudFileListRecyclerAdapter"

    .line 32
    invoke-static {v0, p1, v1}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    :cond_22
    const/4 p1, 0x0

    .line 36
    return p1
.end method

.method private removeChoice(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-le v0, p1, :cond_13

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 17
    iget-object p1, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    :goto_14
    if-eqz p1, :cond_20

    .line 23
    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->mChoiceList:Ljava/util/HashSet;

    .line 25
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_20

    .line 31
    const/4 p1, 0x1

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    const/4 p1, 0x0

    .line 34
    :goto_21
    return p1
.end method


# virtual methods
.method public clearAllChoice()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->mChoiceList:Ljava/util/HashSet;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 6
    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->mOnChoiceItemClickListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    .line 8
    if-eqz v0, :cond_c

    .line 10
    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;->clearChoiceItems()V

    .line 13
    :cond_c
    return-void
.end method

.method public getChoiceList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->mChoiceList:Ljava/util/HashSet;

    .line 8
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_38

    .line 14
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 16
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_16

    .line 22
    goto :goto_38

    .line 23
    :cond_16
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 25
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v1

    .line 29
    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_38

    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 41
    iget-object v3, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->mChoiceList:Ljava/util/HashSet;

    .line 43
    iget-object v4, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 45
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1c

    .line 51
    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 53
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    goto :goto_1c

    .line 57
    :cond_38
    :goto_38
    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public isCheckedAll()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->mChoiceList:Ljava/util/HashSet;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 12
    move-result v1

    .line 13
    if-ne v0, v1, :cond_10

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    return v0
.end method

.method public notifyData()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    iget v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->mViewMode:I

    .line 6
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isViewMode(I)Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_e

    .line 12
    invoke-virtual {p0}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->clearAllChoice()V

    .line 15
    :cond_e
    return-void
.end method

.method public onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Lcom/micloud/midrive/infos/SyncCloudFileInfo;IZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder<",
            "Lcom/micloud/midrive/infos/SyncCloudFileInfo;",
            ">;",
            "Lcom/micloud/midrive/infos/SyncCloudFileInfo;",
            "IZZ)V"
        }
    .end annotation

    .line 2
    iget v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->mViewMode:I

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->setChoiceMode(I)V

    .line 3
    invoke-super/range {p0 .. p5}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Ljava/lang/Object;IZZ)V

    return-void
.end method

.method public bridge synthetic onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Ljava/lang/Object;IZZ)V
    .registers 6

    .line 1
    check-cast p2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    invoke-virtual/range {p0 .. p5}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Lcom/micloud/midrive/infos/SyncCloudFileInfo;IZZ)V

    return-void
.end method

.method public replaceData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncCloudFileInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    invoke-virtual {p0}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->notifyData()V

    .line 16
    :cond_f
    return-void
.end method

.method public setOnChoiceItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->mOnChoiceItemClickListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    .line 3
    return-void
.end method

.method public setSelectedMode(I)V
    .registers 4

    .line 1
    const-string v0, "setSelectedMode: "

    .line 3
    const-string v1, "CloudFileListRecyclerAdapter"

    .line 5
    invoke-static {v0, p1, v1}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    iput p1, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->mViewMode:I

    .line 10
    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isViewMode(I)Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_14

    .line 16
    iget-object p1, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->mChoiceList:Ljava/util/HashSet;

    .line 18
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 21
    :cond_14
    return-void
.end method

.method public toggleCheckedAll()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->isCheckedAll()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_c

    .line 7
    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->mChoiceList:Ljava/util/HashSet;

    .line 9
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 12
    goto :goto_2b

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->mChoiceList:Ljava/util/HashSet;

    .line 15
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v0

    .line 24
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2b

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 36
    iget-object v2, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->mChoiceList:Ljava/util/HashSet;

    .line 38
    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 40
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    goto :goto_17

    .line 44
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 47
    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileListRecyclerAdapter;->mOnChoiceItemClickListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    .line 49
    if-eqz v0, :cond_37

    .line 51
    const/4 v1, 0x0

    .line 52
    const/4 v2, 0x1

    .line 53
    invoke-interface {v0, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;->onChoiceModeChange(IZ)V

    .line 56
    :cond_37
    return-void
.end method
