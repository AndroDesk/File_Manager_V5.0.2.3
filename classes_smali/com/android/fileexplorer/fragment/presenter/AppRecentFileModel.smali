.class public Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;
.super Ljava/lang/Object;
.source "AppRecentFileModel.java"


# instance fields
.field private limit:I

.field private mAppRecentFileData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mDbManager:Lcom/android/fileexplorer/apptag/FileGroupDbManager;

.field private mHasMoreGroup:Z

.field private mLastGroupTime:J

.field private mPkgName:Ljava/lang/String;

.field private mRealGroupCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mLastGroupTime:J

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->limit:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mHasMoreGroup:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mRealGroupCount:I

    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mDbManager:Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mPkgName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;ZLi2/f;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->lambda$requestAppFileByPkgName$0(ZLi2/f;)V

    return-void
.end method

.method private getAppFileGroups()Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    invoke-direct {v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mPkgName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x0

    return-object v0

    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mRealGroupCount:I

    if-lez v2, :cond_19

    goto :goto_1b

    :cond_19
    const/16 v2, 0xa

    :goto_1b
    iput v2, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->limit:I

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "com.android.providers.downloads.ui"

    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch v4, :sswitch_data_c0

    goto :goto_4d

    :sswitch_2f
    const-string v4, "cloud"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    goto :goto_4d

    :cond_38
    const/4 v3, 0x2

    goto :goto_4d

    :sswitch_3a
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    goto :goto_4d

    :cond_41
    move v3, v7

    goto :goto_4d

    :sswitch_43
    const-string v4, "storage"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    goto :goto_4d

    :cond_4c
    move v3, v6

    :goto_4d
    packed-switch v3, :pswitch_data_ce

    iget-object v8, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mDbManager:Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    iget-object v9, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mPkgName:Ljava/lang/String;

    const/4 v10, 0x0

    iget-wide v11, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mLastGroupTime:J

    iget v13, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->limit:I

    invoke-virtual/range {v8 .. v13}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppFileGroupItems(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    move-result-object v2

    iget-object v3, v2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    if-eqz v3, :cond_bb

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-boolean v6, v2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    goto :goto_bb

    :pswitch_67  #0x2
    iget v2, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->limit:I

    add-int/2addr v2, v7

    iget-wide v3, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mLastGroupTime:J

    invoke-static {v2, v3, v4}, Lcom/android/cloud/fragment/model/CloudRecentGroupModel;->getLatestGroupData(IJ)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->limit:I

    if-le v3, v4, :cond_79

    move v6, v7

    :cond_79
    invoke-static {v2}, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->getFileItemGroups(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_bb

    :pswitch_81  #0x1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.miui.mishare.connectivity"

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.xlredapple.bluetooth"

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mDbManager:Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    const/4 v9, 0x0

    iget-wide v10, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mLastGroupTime:J

    iget v12, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->limit:I

    invoke-virtual/range {v7 .. v12}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppFileGroupItems(Ljava/util/List;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    move-result-object v2

    iget-object v3, v2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    if-eqz v3, :cond_bb

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-boolean v6, v2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    goto :goto_bb

    :pswitch_a8  #0x0
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mDbManager:Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    iget-wide v3, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mLastGroupTime:J

    iget v5, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->limit:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadDateFileGroupItemsWithoutAppTag(JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    move-result-object v2

    iget-object v3, v2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    if-eqz v3, :cond_bb

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-boolean v6, v2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    :cond_bb
    :goto_bb
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    iput-boolean v6, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    return-object v0

    :sswitch_data_c0
    .sparse-switch
        -0x704fbd85 -> :sswitch_43
        -0x3ea09f51 -> :sswitch_3a
        0x5a5de35 -> :sswitch_2f
    .end sparse-switch

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_a8  #00000000
        :pswitch_81  #00000001
        :pswitch_67  #00000002
    .end packed-switch
.end method

.method private static getFileItemGroups(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileGroupItemFactory;->make(Lcom/android/fileexplorer/dao/file/FileGroup;)Lcom/android/fileexplorer/apptag/FileItemGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_29
    return-object v0
.end method

.method private synthetic lambda$requestAppFileByPkgName$0(ZLi2/f;)V
    .registers 10

    new-instance v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    invoke-direct {v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;-><init>()V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->getAppFileGroups()Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    move-result-object v1

    if-nez v1, :cond_16

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "requestCopyOrMove return null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Li2/b;->onError(Ljava/lang/Throwable;)V

    goto :goto_7c

    :cond_16
    iget-boolean v2, v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    iput-boolean v2, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mHasMoreGroup:Z

    iget-object v2, v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    if-eqz v2, :cond_23

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    if-lez v2, :cond_63

    iget-wide v3, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mLastGroupTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_31

    iput v2, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mRealGroupCount:I

    goto :goto_36

    :cond_31
    iget v3, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mRealGroupCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mRealGroupCount:I

    :goto_36
    iget-object v3, v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/apptag/FileItemGroup;

    iget-object v2, v2, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupCreateTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mLastGroupTime:J

    if-eqz p1, :cond_5d

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mAppRecentFileData:Ljava/util/List;

    if-nez p1, :cond_55

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mAppRecentFileData:Ljava/util/List;

    :cond_55
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mAppRecentFileData:Ljava/util/List;

    iget-object v1, v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6e

    :cond_5d
    iget-object p1, v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->setAppRecentFileData(Ljava/util/List;)V

    goto :goto_6e

    :cond_63
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mAppRecentFileData:Ljava/util/List;

    if-nez p1, :cond_6e

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mAppRecentFileData:Ljava/util/List;

    :cond_6e
    :goto_6e
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mAppRecentFileData:Ljava/util/List;

    iput-object p1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mHasMoreGroup:Z

    iput-boolean p1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    invoke-interface {p2, v0}, Li2/b;->onNext(Ljava/lang/Object;)V

    invoke-interface {p2}, Li2/b;->onComplete()V

    :goto_7c
    return-void
.end method


# virtual methods
.method public clearModelData()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mAppRecentFileData:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mHasMoreGroup:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mLastGroupTime:J

    return-void
.end method

.method public getAppRecentFileData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mAppRecentFileData:Ljava/util/List;

    return-object v0
.end method

.method public requestAppFileByPkgName(Z)Li2/e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Li2/e<",
            "Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/cloud/fragment/model/c;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lcom/android/cloud/fragment/model/c;-><init>(Ljava/lang/Object;ZI)V

    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableCreate;

    invoke-direct {p1, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Li2/g;)V

    sget-object v0, Lw2/a;->b:Li2/i;

    invoke-virtual {p1, v0}, Li2/e;->e(Li2/i;)Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;

    move-result-object p1

    invoke-static {}, Lj2/a;->a()Lj2/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Li2/e;->a(Lj2/b;)Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    move-result-object p1

    return-object p1
.end method

.method public setAppRecentFileData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mAppRecentFileData:Ljava/util/List;

    return-void
.end method

.method public updateViewMode(I)V
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v0

    iput p1, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->RecentSecondary:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->putFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)V

    return-void
.end method
