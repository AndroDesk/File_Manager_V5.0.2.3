.class public Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;
.super Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;
.source "MirrorSideBarInfo.java"


# instance fields
.field private child_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isExpand:Z

.field private item_name:I

.field private item_resId:I

.field private viewType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;I)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;-><init>(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;II)V
    .registers 4

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->item_id:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    iput p2, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->item_name:I

    iput p3, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->item_resId:I

    return-void
.end method

.method public static getDefaultSideBarInfos()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper;->MIRROR_HOME_DEFAULT_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_46

    aget-object v4, v1, v3

    new-instance v5, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    sget-object v6, Lcom/android/fileexplorer/controller/FileCategoryHelper;->MIRROR_HOME_TAB_PAIRS:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v4, v7, v6}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;-><init>(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;II)V

    const/16 v4, 0x1a

    iput v4, v5, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->viewType:I

    iget-object v4, v5, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->item_id:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    sget-object v6, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->TYPE_SIDE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    if-ne v4, v6, :cond_40

    invoke-static {}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->getDefaultTypeChildItems()Ljava/util/List;

    move-result-object v4

    iput-object v4, v5, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->child_list:Ljava/util/List;

    :cond_40
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_46
    return-object v0
.end method

.method private static getDefaultTypeChildItems()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper;->MIRROR_HOME_DEFAULT_CHILD_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_28

    aget-object v4, v1, v3

    new-instance v5, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    sget-object v6, Lcom/android/fileexplorer/controller/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v4, v6}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;-><init>(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;I)V

    const/16 v4, 0x1b

    iput v4, v5, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->viewType:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_28
    return-object v0
.end method


# virtual methods
.method public getChild_list()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->child_list:Ljava/util/List;

    return-object v0
.end method

.method public getIconResId()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->item_resId:I

    return v0
.end method

.method public getItemName()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->item_name:I

    return v0
.end method

.method public getViewType()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->viewType:I

    return v0
.end method

.method public hasChildList()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->child_list:Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isExpand()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->isExpand:Z

    return v0
.end method

.method public setChild_list(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->child_list:Ljava/util/List;

    return-void
.end method

.method public setExpand(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->isExpand:Z

    return-void
.end method

.method public setIconResId(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->item_resId:I

    return-void
.end method

.method public setItemName(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->item_name:I

    return-void
.end method

.method public setViewType(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->viewType:I

    return-void
.end method
