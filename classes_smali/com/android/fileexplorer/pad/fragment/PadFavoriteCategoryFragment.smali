.class public Lcom/android/fileexplorer/pad/fragment/PadFavoriteCategoryFragment;
.super Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;
.source "PadFavoriteCategoryFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PadFavoriteCategoryFragment"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;-><init>()V

    .line 4
    return-void
.end method

.method private getMarginMiddle()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mCurrentState:I

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isFreeMode_3_4Layout(I)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2d

    .line 9
    iget v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mCurrentState:I

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isFreeMode_16_9Layout(I)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 17
    goto :goto_2d

    .line 18
    :cond_11
    iget v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mCurrentState:I

    .line 20
    invoke-static {v0}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isFreeMode_4_3Layout(I)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1d

    .line 26
    const v0, 0x7f0706c9

    .line 29
    return v0

    .line 30
    :cond_1d
    iget v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mCurrentState:I

    .line 32
    invoke-static {v0}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isTwoThirdLayout(I)Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_29

    .line 38
    const v0, 0x7f070249

    .line 41
    goto :goto_2c

    .line 42
    :cond_29
    const v0, 0x7f070248

    .line 45
    :goto_2c
    return v0

    .line 46
    :cond_2d
    :goto_2d
    const v0, 0x7f0706c7

    .line 49
    return v0
.end method

.method public static newInstance()Lcom/android/fileexplorer/pad/fragment/PadFavoriteCategoryFragment;
    .registers 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadFavoriteCategoryFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadFavoriteCategoryFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadFavoriteCategoryFragment;
    .registers 2

    .line 2
    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadFavoriteCategoryFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/pad/fragment/PadFavoriteCategoryFragment;-><init>()V

    if-eqz p0, :cond_a

    .line 3
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_a
    return-object v0
.end method

.method private removeFavList(Lcom/android/fileexplorer/activity/BaseActivity;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/activity/BaseActivity;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FavoriteItem;",
            ">;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p2

    .line 14
    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_27

    .line 21
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/fileexplorer/model/FavoriteItem;

    .line 27
    invoke-virtual {p1}, Lcom/android/fileexplorer/activity/BaseActivity;->isProgressCancelled()Z

    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_21

    .line 33
    return v2

    .line 34
    :cond_21
    iget-object v1, v1, Lcom/android/fileexplorer/model/FavoriteItem;->location:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_d

    .line 40
    :cond_27
    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1, v0, v2}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->deleteByLocation(Ljava/util/List;Z)V

    .line 47
    const/4 p1, 0x1

    .line 48
    return p1
.end method


# virtual methods
.method public getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->initView(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method public loadBusinessData(ZII)Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII)",
            "Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    .line 14
    move-result-object p3

    .line 15
    invoke-virtual {p3}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->loadAll()Ljava/util/List;

    .line 18
    move-result-object p3

    .line 19
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p3

    .line 23
    :cond_16
    :goto_16
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_64

    .line 30
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/android/fileexplorer/dao/fav/Favorite;

    .line 36
    new-instance v2, Lcom/android/fileexplorer/model/FavoriteItem;

    .line 38
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/fav/Favorite;->getId()Ljava/lang/Long;

    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 45
    move-result-wide v3

    .line 46
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/fav/Favorite;->getTitle()Ljava/lang/String;

    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/fav/Favorite;->getLocation()Ljava/lang/String;

    .line 53
    move-result-object v6

    .line 54
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/fileexplorer/model/FavoriteItem;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v3, Ljava/io/File;

    .line 59
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/fav/Favorite;->getLocation()Ljava/lang/String;

    .line 62
    move-result-object v4

    .line 63
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_60

    .line 72
    new-instance v0, Ljava/io/File;

    .line 74
    iget-object v3, v2, Lcom/android/fileexplorer/model/FavoriteItem;->location:Ljava/lang/String;

    .line 76
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    const/4 v3, 0x0

    .line 80
    invoke-static {v0, v3, v1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/io/File;Ljava/io/FilenameFilter;Z)Lcom/android/fileexplorer/model/FileInfo;

    .line 83
    move-result-object v0

    .line 84
    iput-object v0, v2, Lcom/android/fileexplorer/model/FavoriteItem;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 86
    const/4 v1, 0x1

    .line 87
    iput-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    .line 89
    iget-boolean v0, v0, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    .line 91
    if-nez v0, :cond_16

    .line 93
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    goto :goto_16

    .line 97
    :cond_60
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    goto :goto_16

    .line 101
    :cond_64
    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    .line 104
    move-result-object p3

    .line 105
    invoke-virtual {p3, p2}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->delete(Ljava/lang/Iterable;)V

    .line 108
    new-instance p2, Ljava/util/ArrayList;

    .line 110
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 113
    move-result p3

    .line 114
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getInstance()Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    .line 120
    move-result-object p3

    .line 121
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 124
    move-result-object p1

    .line 125
    :goto_7c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_93

    .line 131
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Lcom/android/fileexplorer/model/FavoriteItem;

    .line 137
    iget-object v2, v0, Lcom/android/fileexplorer/model/FavoriteItem;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 139
    invoke-static {p3, v2}, Lcom/android/fileexplorer/util/FileScanSelfUtil;->addFileInfoSource(Lcom/android/fileexplorer/apptag/AppScanConfigManager;Lcom/android/fileexplorer/model/FileInfo;)V

    .line 142
    iget-object v0, v0, Lcom/android/fileexplorer/model/FavoriteItem;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 144
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    goto :goto_7c

    .line 148
    :cond_93
    new-instance p1, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult;

    .line 150
    invoke-direct {p1, p2, v1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult;-><init>(Ljava/util/List;Z)V

    .line 153
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public setActionBarTitle()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_10

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 10
    move-result-object v0

    .line 11
    const v1, 0x7f11006a

    .line 14
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    .line 17
    :cond_10
    return-void
.end method

.method public setupAdapter()V
    .registers 5

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->setupAdapter()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 6
    new-instance v1, Lcom/android/fileexplorer/listener/click/ExpandableFavoriteClickListener;

    .line 8
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 10
    invoke-virtual {p0}, Lcom/android/fileexplorer/pad/fragment/PadFavoriteCategoryFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 13
    move-result-object v3

    .line 14
    invoke-direct {v1, v2, v0, v3}, Lcom/android/fileexplorer/listener/click/ExpandableFavoriteClickListener;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setOnChildClickListener(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;)V

    .line 20
    return-void
.end method
