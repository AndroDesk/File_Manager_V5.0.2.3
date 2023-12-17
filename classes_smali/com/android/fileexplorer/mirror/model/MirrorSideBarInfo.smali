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
.method public constructor <init>(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;I)V
    .registers 4

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;-><init>(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;II)V
    .registers 4

    .line 2
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->item_id:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 4
    iput p2, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->item_name:I

    .line 5
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper;->MIRROR_HOME_DEFAULT_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 8
    array-length v2, v1

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_9
    if-ge v3, v2, :cond_46

    .line 12
    aget-object v4, v1, v3

    .line 14
    new-instance v5, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    .line 16
    sget-object v6, Lcom/android/fileexplorer/controller/FileCategoryHelper;->MIRROR_HOME_TAB_PAIRS:Ljava/util/HashMap;

    .line 18
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v7

    .line 22
    check-cast v7, Landroid/util/Pair;

    .line 24
    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 26
    check-cast v7, Ljava/lang/Integer;

    .line 28
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 31
    move-result v7

    .line 32
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v6

    .line 36
    check-cast v6, Landroid/util/Pair;

    .line 38
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 40
    check-cast v6, Ljava/lang/Integer;

    .line 42
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 45
    move-result v6

    .line 46
    invoke-direct {v5, v4, v7, v6}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;-><init>(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;II)V

    .line 49
    const/16 v4, 0x1a

    .line 51
    iput v4, v5, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->viewType:I

    .line 53
    iget-object v4, v5, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->item_id:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 55
    sget-object v6, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->TYPE_SIDE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 57
    if-ne v4, v6, :cond_40

    .line 59
    invoke-static {}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->getDefaultTypeChildItems()Ljava/util/List;

    .line 62
    move-result-object v4

    .line 63
    iput-object v4, v5, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->child_list:Ljava/util/List;

    .line 65
    :cond_40
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v3, v3, 0x1

    .line 70
    goto :goto_9

    .line 71
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper;->MIRROR_HOME_DEFAULT_CHILD_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 8
    array-length v2, v1

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_9
    if-ge v3, v2, :cond_28

    .line 12
    aget-object v4, v1, v3

    .line 14
    new-instance v5, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;

    .line 16
    sget-object v6, Lcom/android/fileexplorer/controller/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    .line 18
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v6

    .line 22
    check-cast v6, Ljava/lang/Integer;

    .line 24
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result v6

    .line 28
    invoke-direct {v5, v4, v6}, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;-><init>(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;I)V

    .line 31
    const/16 v4, 0x1b

    .line 33
    iput v4, v5, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->viewType:I

    .line 35
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 40
    goto :goto_9

    .line 41
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->child_list:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getIconResId()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->item_resId:I

    .line 3
    return v0
.end method

.method public getItemName()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->item_name:I

    .line 3
    return v0
.end method

.method public getViewType()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->viewType:I

    .line 3
    return v0
.end method

.method public hasChildList()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->child_list:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public isExpand()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->isExpand:Z

    .line 3
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

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->child_list:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setExpand(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->isExpand:Z

    .line 3
    return-void
.end method

.method public setIconResId(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->item_resId:I

    .line 3
    return-void
.end method

.method public setItemName(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->item_name:I

    .line 3
    return-void
.end method

.method public setViewType(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarInfo;->viewType:I

    .line 3
    return-void
.end method
