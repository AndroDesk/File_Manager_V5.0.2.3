.class public Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;
.super Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;
.source "NewFileListRecycleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter<",
        "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FileListRecycleAdapter"


# instance fields
.field private isCloudFile:Z

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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;-><init>(Ljava/util/List;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mViewMode:I

    .line 7
    new-instance v0, Ljava/util/HashSet;

    .line 9
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    .line 14
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->isCloudFile:Z

    .line 16
    new-instance p1, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;

    .line 18
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;-><init>(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)V

    .line 21
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->setOnItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 24
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mViewMode:I

    .line 3
    return p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)Ljava/util/HashSet;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->addChoice(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;I)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->removeChoice(I)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mOnChoiceItemClickListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;I)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->isItemSelect(I)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mIsActionMode:Z

    .line 3
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
    if-le v0, p1, :cond_35

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 17
    if-eqz v0, :cond_1e

    .line 19
    iget-boolean v1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->isCloudFile:Z

    .line 21
    if-nez v1, :cond_1e

    .line 23
    iget-object p1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    .line 25
    iget-object v0, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    .line 27
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 30
    goto :goto_35

    .line 31
    :cond_1e
    iget-boolean v1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->isCloudFile:Z

    .line 33
    if-eqz v1, :cond_2e

    .line 35
    iget-object p1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    .line 37
    iget-wide v0, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->fileId:J

    .line 39
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    goto :goto_35

    .line 47
    :cond_2e
    const-string v0, "addChoice info is null, position = "

    .line 49
    const-string v1, "FileListRecycleAdapter"

    .line 51
    invoke-static {v0, p1, v1}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    .line 54
    :cond_35
    :goto_35
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
    if-le v0, p1, :cond_37

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 17
    if-eqz v0, :cond_1f

    .line 19
    iget-boolean v1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->isCloudFile:Z

    .line 21
    if-nez v1, :cond_1f

    .line 23
    iget-object p1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    .line 25
    iget-object v0, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    .line 27
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 30
    move-result p1

    .line 31
    return p1

    .line 32
    :cond_1f
    iget-boolean v1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->isCloudFile:Z

    .line 34
    if-eqz v1, :cond_30

    .line 36
    iget-object p1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    .line 38
    iget-wide v0, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->fileId:J

    .line 40
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 47
    move-result p1

    .line 48
    return p1

    .line 49
    :cond_30
    const-string v0, "isItemSelected, info is null, position = "

    .line 51
    const-string v1, "FileListRecycleAdapter"

    .line 53
    invoke-static {v0, p1, v1}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    .line 56
    :cond_37
    const/4 p1, 0x0

    .line 57
    return p1
.end method

.method private removeChoice(I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-le v0, p1, :cond_24

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 17
    if-eqz p1, :cond_19

    .line 19
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->isCloudFile:Z

    .line 21
    if-nez v0, :cond_19

    .line 23
    iget-object p1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    .line 25
    goto :goto_25

    .line 26
    :cond_19
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->isCloudFile:Z

    .line 28
    if-eqz v0, :cond_24

    .line 30
    iget-wide v0, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->fileId:J

    .line 32
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    const/4 p1, 0x0

    .line 38
    :goto_25
    if-eqz p1, :cond_31

    .line 40
    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    .line 42
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_31

    .line 48
    const/4 p1, 0x1

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    const/4 p1, 0x0

    .line 51
    :goto_32
    return p1
.end method


# virtual methods
.method public clearAllChoice()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mOnChoiceItemClickListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    .line 8
    if-eqz v0, :cond_c

    .line 10
    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;->clearChoiceItems()V

    .line 13
    :cond_c
    return-void
.end method

.method public getChoiceList()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    .line 8
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_54

    .line 14
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 16
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_16

    .line 22
    goto :goto_54

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
    if-eqz v2, :cond_54

    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 41
    iget-boolean v3, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->isCloudFile:Z

    .line 43
    if-nez v3, :cond_3e

    .line 45
    iget-object v3, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    .line 47
    iget-object v4, v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    .line 49
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_1c

    .line 55
    iget-object v2, v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 57
    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 59
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    goto :goto_1c

    .line 63
    :cond_3e
    iget-object v3, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    .line 65
    iget-wide v4, v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->fileId:J

    .line 67
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_1c

    .line 77
    iget-object v2, v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 79
    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 81
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    goto :goto_1c

    .line 85
    :cond_54
    :goto_54
    return-object v0
.end method

.method public getItemId(I)J
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 3
    const-wide/16 v1, -0x1

    .line 5
    if-eqz v0, :cond_2f

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    if-ge p1, v0, :cond_2f

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_2f

    .line 21
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 23
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 29
    iget-wide v3, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->fileId:J

    .line 31
    cmp-long v0, v3, v1

    .line 33
    if-nez v0, :cond_24

    .line 35
    int-to-long v0, p1

    .line 36
    return-wide v0

    .line 37
    :cond_24
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    .line 39
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 45
    iget-wide v0, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->fileId:J

    .line 47
    return-wide v0

    .line 48
    :cond_2f
    return-wide v1
.end method

.method public isCheckedAll()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

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
    iget v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mViewMode:I

    .line 6
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isViewMode(I)Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_e

    .line 12
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->clearAllChoice()V

    .line 15
    :cond_e
    return-void
.end method

.method public onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Lcom/android/fileexplorer/view/fileitem/FileListItemVO;IZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            "IZZ)V"
        }
    .end annotation

    .line 2
    iget v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mViewMode:I

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->setChoiceMode(I)V

    .line 3
    invoke-super/range {p0 .. p5}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Ljava/lang/Object;IZZ)V

    return-void
.end method

.method public bridge synthetic onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Ljava/lang/Object;IZZ)V
    .registers 6

    .line 1
    check-cast p2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    invoke-virtual/range {p0 .. p5}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Lcom/android/fileexplorer/view/fileitem/FileListItemVO;IZZ)V

    return-void
.end method

.method public replaceData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
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
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->notifyData()V

    .line 16
    :cond_f
    return-void
.end method

.method public setIsCloudFile(Ljava/lang/Boolean;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p1

    .line 5
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->isCloudFile:Z

    .line 7
    return-void
.end method

.method public setOnChoiceItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mOnChoiceItemClickListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    .line 3
    return-void
.end method

.method public setSelectedMode(I)V
    .registers 4

    .line 1
    const-string v0, "setSelectedMode: "

    .line 3
    const-string v1, "FileListRecycleAdapter"

    .line 5
    invoke-static {v0, p1, v1}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    iput p1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mViewMode:I

    .line 10
    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isViewMode(I)Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_14

    .line 16
    iget-object p1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    .line 18
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 21
    :cond_14
    return-void
.end method

.method public toggleCheckedAll()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->isCheckedAll()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_c

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    .line 9
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 12
    goto :goto_3b

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

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
    if-eqz v1, :cond_3b

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 36
    iget-boolean v2, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->isCloudFile:Z

    .line 38
    if-nez v2, :cond_2f

    .line 40
    iget-object v2, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    .line 42
    iget-object v1, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    .line 44
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    goto :goto_17

    .line 48
    :cond_2f
    iget-object v2, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    .line 50
    iget-wide v3, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->fileId:J

    .line 52
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    goto :goto_17

    .line 60
    :cond_3b
    :goto_3b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 63
    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mOnChoiceItemClickListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    .line 65
    if-eqz v0, :cond_47

    .line 67
    const/4 v1, 0x0

    .line 68
    const/4 v2, 0x1

    .line 69
    invoke-interface {v0, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;->onChoiceModeChange(IZ)V

    .line 72
    :cond_47
    return-void
.end method
