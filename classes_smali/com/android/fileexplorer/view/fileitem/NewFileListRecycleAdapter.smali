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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;-><init>(Ljava/util/List;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mViewMode:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->isCloudFile:Z

    new-instance p1, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter$1;-><init>(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)V

    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->setOnItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mViewMode:I

    return p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->addChoice(I)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->removeChoice(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mOnChoiceItemClickListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->isItemSelect(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mIsActionMode:Z

    return p0
.end method

.method private addChoice(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_35

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    if-eqz v0, :cond_1e

    iget-boolean v1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->isCloudFile:Z

    if-nez v1, :cond_1e

    iget-object p1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    iget-object v0, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_1e
    iget-boolean v1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->isCloudFile:Z

    if-eqz v1, :cond_2e

    iget-object p1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    iget-wide v0, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->fileId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_2e
    const-string v0, "addChoice info is null, position = "

    const-string v1, "FileListRecycleAdapter"

    invoke-static {v0, p1, v1}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    :cond_35
    :goto_35
    return-void
.end method

.method private isItemSelect(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_37

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    if-eqz v0, :cond_1f

    iget-boolean v1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->isCloudFile:Z

    if-nez v1, :cond_1f

    iget-object p1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    iget-object v0, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1f
    iget-boolean v1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->isCloudFile:Z

    if-eqz v1, :cond_30

    iget-object p1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    iget-wide v0, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->fileId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_30
    const-string v0, "isItemSelected, info is null, position = "

    const-string v1, "FileListRecycleAdapter"

    invoke-static {v0, p1, v1}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    :cond_37
    const/4 p1, 0x0

    return p1
.end method

.method private removeChoice(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_24

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    if-eqz p1, :cond_19

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->isCloudFile:Z

    if-nez v0, :cond_19

    iget-object p1, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    goto :goto_25

    :cond_19
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->isCloudFile:Z

    if-eqz v0, :cond_24

    iget-wide v0, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->fileId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    if-eqz p1, :cond_31

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    const/4 p1, 0x1

    goto :goto_32

    :cond_31
    const/4 p1, 0x0

    :goto_32
    return p1
.end method


# virtual methods
.method public clearAllChoice()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mOnChoiceItemClickListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;->clearChoiceItems()V

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_54

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_54

    :cond_16
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    iget-boolean v3, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->isCloudFile:Z

    if-nez v3, :cond_3e

    iget-object v3, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    iget-object v4, v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v2, v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_3e
    iget-object v3, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    iget-wide v4, v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->fileId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v2, v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_54
    :goto_54
    return-object v0
.end method

.method public getItemId(I)J
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_2f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2f

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    iget-wide v3, v0, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->fileId:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_24

    int-to-long v0, p1

    return-wide v0

    :cond_24
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    iget-wide v0, p1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->fileId:J

    return-wide v0

    :cond_2f
    return-wide v1
.end method

.method public isCheckedAll()Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public notifyData()V
    .registers 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mViewMode:I

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isViewMode(I)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->clearAllChoice()V

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

    iget v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mViewMode:I

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->setChoiceMode(I)V

    invoke-super/range {p0 .. p5}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Ljava/lang/Object;IZZ)V

    return-void
.end method

.method public bridge synthetic onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Ljava/lang/Object;IZZ)V
    .registers 6

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

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->notifyData()V

    :cond_f
    return-void
.end method

.method public setIsCloudFile(Ljava/lang/Boolean;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->isCloudFile:Z

    return-void
.end method

.method public setOnChoiceItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mOnChoiceItemClickListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    return-void
.end method

.method public setSelectedMode(I)V
    .registers 4

    const-string v0, "setSelectedMode: "

    const-string v1, "FileListRecycleAdapter"

    invoke-static {v0, p1, v1}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    iput p1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mViewMode:I

    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isViewMode(I)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    :cond_14
    return-void
.end method

.method public toggleCheckedAll()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->isCheckedAll()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_3b

    :cond_c
    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    iget-boolean v2, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->isCloudFile:Z

    if-nez v2, :cond_2f

    iget-object v2, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    iget-object v1, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2f
    iget-object v2, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    iget-wide v3, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->fileId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_3b
    :goto_3b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->mOnChoiceItemClickListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    if-eqz v0, :cond_47

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;->onChoiceModeChange(IZ)V

    :cond_47
    return-void
.end method
