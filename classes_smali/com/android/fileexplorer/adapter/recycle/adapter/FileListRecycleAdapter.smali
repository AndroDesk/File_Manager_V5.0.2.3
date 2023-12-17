.class public Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;
.super Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;
.source "FileListRecycleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter<",
        "Lcom/android/fileexplorer/model/FileInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FileListRecycleAdapter"


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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;-><init>(Ljava/util/List;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->mViewMode:I

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;)V

    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->setOnItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->mViewMode:I

    return p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->addChoice(I)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->removeChoice(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;)Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->mOnChoiceItemClickListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->isItemSelect(I)Z

    move-result p0

    return p0
.end method

.method private addChoice(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_21

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v0, :cond_1a

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_1a
    const-string v0, "addChoice info is null, position = "

    const-string v1, "FileListRecycleAdapter"

    invoke-static {v0, p1, v1}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    :cond_21
    :goto_21
    return-void
.end method

.method private isItemSelect(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_22

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v0, :cond_1b

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1b
    const-string v0, "isItemSelected, info is null, position = "

    const-string v1, "FileListRecycleAdapter"

    invoke-static {v0, p1, v1}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    :cond_22
    const/4 p1, 0x0

    return p1
.end method

.method private removeChoice(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_13

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    if-eqz p1, :cond_20

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    return p1
.end method


# virtual methods
.method public clearAllChoice()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->mOnChoiceItemClickListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;->clearChoiceItems()V

    :cond_c
    return-void
.end method

.method public getChoiceList()Ljava/util/List;
    .registers 6
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

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_36

    :cond_16
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    iget-object v4, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_36
    :goto_36
    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_19

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_19
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isCheckedAll()Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

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

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->mViewMode:I

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isViewMode(I)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->clearAllChoice()V

    :cond_e
    return-void
.end method

.method public onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Lcom/android/fileexplorer/model/FileInfo;IZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Lcom/android/fileexplorer/model/FileInfo;",
            "IZZ)V"
        }
    .end annotation

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->mViewMode:I

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->setChoiceMode(I)V

    invoke-super/range {p0 .. p5}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Ljava/lang/Object;IZZ)V

    return-void
.end method

.method public bridge synthetic onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Ljava/lang/Object;IZZ)V
    .registers 6

    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual/range {p0 .. p5}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->onBindData(Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;Lcom/android/fileexplorer/model/FileInfo;IZZ)V

    return-void
.end method

.method public replaceData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->notifyData()V

    :cond_f
    return-void
.end method

.method public setOnChoiceItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->mOnChoiceItemClickListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    return-void
.end method

.method public setSelectedMode(I)V
    .registers 4

    const-string v0, "setSelectedMode: "

    const-string v1, "FileListRecycleAdapter"

    invoke-static {v0, p1, v1}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->mViewMode:I

    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isViewMode(I)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    :cond_14
    return-void
.end method

.method public toggleCheckedAll()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->isCheckedAll()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_2b

    :cond_c
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->mChoiceList:Ljava/util/HashSet;

    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->mOnChoiceItemClickListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;

    if-eqz v0, :cond_37

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;->onChoiceModeChange(IZ)V

    :cond_37
    return-void
.end method
