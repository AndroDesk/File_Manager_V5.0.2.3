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
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mLastGroupTime:J

    .line 8
    const/16 v0, 0xa

    .line 10
    iput v0, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->limit:I

    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mHasMoreGroup:Z

    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mRealGroupCount:I

    .line 18
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mDbManager:Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 24
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mPkgName:Ljava/lang/String;

    .line 26
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

    .line 1
    new-instance v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mPkgName:Ljava/lang/String;

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_f

    .line 14
    const/4 v0, 0x0

    .line 15
    return-object v0

    .line 16
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget v2, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mRealGroupCount:I

    .line 23
    if-lez v2, :cond_19

    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    const/16 v2, 0xa

    .line 28
    :goto_1b
    iput v2, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->limit:I

    .line 30
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mPkgName:Ljava/lang/String;

    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    const/4 v3, -0x1

    .line 36
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 39
    move-result v4

    .line 40
    const-string v5, "com.android.providers.downloads.ui"

    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x1

    .line 44
    sparse-switch v4, :sswitch_data_c0

    .line 47
    goto :goto_4d

    .line 48
    :sswitch_2f
    const-string v4, "cloud"

    .line 50
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_38

    .line 56
    goto :goto_4d

    .line 57
    :cond_38
    const/4 v3, 0x2

    .line 58
    goto :goto_4d

    .line 59
    :sswitch_3a
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_41

    .line 65
    goto :goto_4d

    .line 66
    :cond_41
    move v3, v7

    .line 67
    goto :goto_4d

    .line 68
    :sswitch_43
    const-string v4, "storage"

    .line 70
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_4c

    .line 76
    goto :goto_4d

    .line 77
    :cond_4c
    move v3, v6

    .line 78
    :goto_4d
    packed-switch v3, :pswitch_data_ce

    .line 81
    iget-object v8, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mDbManager:Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 83
    iget-object v9, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mPkgName:Ljava/lang/String;

    .line 85
    const/4 v10, 0x0

    .line 86
    iget-wide v11, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mLastGroupTime:J

    .line 88
    iget v13, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->limit:I

    .line 90
    invoke-virtual/range {v8 .. v13}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppFileGroupItems(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    .line 93
    move-result-object v2

    .line 94
    iget-object v3, v2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    .line 96
    if-eqz v3, :cond_bb

    .line 98
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 101
    iget-boolean v6, v2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    .line 103
    goto :goto_bb

    .line 104
    :pswitch_67  #0x2
    iget v2, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->limit:I

    .line 106
    add-int/2addr v2, v7

    .line 107
    iget-wide v3, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mLastGroupTime:J

    .line 109
    invoke-static {v2, v3, v4}, Lcom/android/cloud/fragment/model/CloudRecentGroupModel;->getLatestGroupData(IJ)Ljava/util/List;

    .line 112
    move-result-object v2

    .line 113
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 116
    move-result v3

    .line 117
    iget v4, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->limit:I

    .line 119
    if-le v3, v4, :cond_79

    .line 121
    move v6, v7

    .line 122
    :cond_79
    invoke-static {v2}, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->getFileItemGroups(Ljava/util/List;)Ljava/util/List;

    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 129
    goto :goto_bb

    .line 130
    :pswitch_81  #0x1
    new-instance v8, Ljava/util/ArrayList;

    .line 132
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    const-string v2, "com.miui.mishare.connectivity"

    .line 140
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    const-string v2, "com.xlredapple.bluetooth"

    .line 145
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v7, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mDbManager:Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 150
    const/4 v9, 0x0

    .line 151
    iget-wide v10, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mLastGroupTime:J

    .line 153
    iget v12, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->limit:I

    .line 155
    invoke-virtual/range {v7 .. v12}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppFileGroupItems(Ljava/util/List;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    .line 158
    move-result-object v2

    .line 159
    iget-object v3, v2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    .line 161
    if-eqz v3, :cond_bb

    .line 163
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 166
    iget-boolean v6, v2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    .line 168
    goto :goto_bb

    .line 169
    :pswitch_a8  #0x0
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mDbManager:Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 171
    iget-wide v3, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mLastGroupTime:J

    .line 173
    iget v5, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->limit:I

    .line 175
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadDateFileGroupItemsWithoutAppTag(JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    .line 178
    move-result-object v2

    .line 179
    iget-object v3, v2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    .line 181
    if-eqz v3, :cond_bb

    .line 183
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 186
    iget-boolean v6, v2, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    .line 188
    :cond_bb
    :goto_bb
    iput-object v1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    .line 190
    iput-boolean v6, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    .line 192
    return-object v0

    .line 193
    :sswitch_data_c0
    .sparse-switch
        -0x704fbd85 -> :sswitch_43
        -0x3ea09f51 -> :sswitch_3a
        0x5a5de35 -> :sswitch_2f
    .end sparse-switch

    .line 207
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_29

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 22
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getFileItems()Ljava/util/List;

    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_9

    .line 28
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_9

    .line 34
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileGroupItemFactory;->make(Lcom/android/fileexplorer/dao/file/FileGroup;)Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    goto :goto_9

    .line 42
    :cond_29
    return-object v0
.end method

.method private synthetic lambda$requestAppFileByPkgName$0(ZLi2/f;)V
    .registers 10

    .line 1
    new-instance v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;-><init>()V

    .line 6
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->getAppFileGroups()Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_16

    .line 12
    new-instance p1, Ljava/lang/NullPointerException;

    .line 14
    const-string v0, "requestCopyOrMove return null"

    .line 16
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-interface {p2, p1}, Li2/b;->onError(Ljava/lang/Throwable;)V

    .line 22
    goto :goto_7c

    .line 23
    :cond_16
    iget-boolean v2, v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    .line 25
    iput-boolean v2, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mHasMoreGroup:Z

    .line 27
    iget-object v2, v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    .line 29
    if-eqz v2, :cond_23

    .line 31
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 34
    move-result v2

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    const/4 v2, 0x0

    .line 37
    :goto_24
    if-lez v2, :cond_63

    .line 39
    iget-wide v3, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mLastGroupTime:J

    .line 41
    const-wide/16 v5, 0x0

    .line 43
    cmp-long v3, v3, v5

    .line 45
    if-nez v3, :cond_31

    .line 47
    iput v2, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mRealGroupCount:I

    .line 49
    goto :goto_36

    .line 50
    :cond_31
    iget v3, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mRealGroupCount:I

    .line 52
    add-int/2addr v3, v2

    .line 53
    iput v3, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mRealGroupCount:I

    .line 55
    :goto_36
    iget-object v3, v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    .line 57
    add-int/lit8 v2, v2, -0x1

    .line 59
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 65
    iget-object v2, v2, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupCreateTime:Ljava/lang/Long;

    .line 67
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 70
    move-result-wide v2

    .line 71
    iput-wide v2, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mLastGroupTime:J

    .line 73
    if-eqz p1, :cond_5d

    .line 75
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mAppRecentFileData:Ljava/util/List;

    .line 77
    if-nez p1, :cond_55

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    .line 81
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mAppRecentFileData:Ljava/util/List;

    .line 86
    :cond_55
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mAppRecentFileData:Ljava/util/List;

    .line 88
    iget-object v1, v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    .line 90
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    goto :goto_6e

    .line 94
    :cond_5d
    iget-object p1, v1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->setAppRecentFileData(Ljava/util/List;)V

    .line 99
    goto :goto_6e

    .line 100
    :cond_63
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mAppRecentFileData:Ljava/util/List;

    .line 102
    if-nez p1, :cond_6e

    .line 104
    new-instance p1, Ljava/util/ArrayList;

    .line 106
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mAppRecentFileData:Ljava/util/List;

    .line 111
    :cond_6e
    :goto_6e
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mAppRecentFileData:Ljava/util/List;

    .line 113
    iput-object p1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    .line 115
    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mHasMoreGroup:Z

    .line 117
    iput-boolean p1, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    .line 119
    invoke-interface {p2, v0}, Li2/b;->onNext(Ljava/lang/Object;)V

    .line 122
    invoke-interface {p2}, Li2/b;->onComplete()V

    .line 125
    :goto_7c
    return-void
.end method


# virtual methods
.method public clearModelData()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mAppRecentFileData:Ljava/util/List;

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mHasMoreGroup:Z

    .line 7
    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mLastGroupTime:J

    .line 11
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mAppRecentFileData:Ljava/util/List;

    .line 3
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

    .line 1
    new-instance v0, Lcom/android/cloud/fragment/model/c;

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/android/cloud/fragment/model/c;-><init>(Ljava/lang/Object;ZI)V

    .line 7
    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableCreate;

    .line 9
    invoke-direct {p1, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Li2/g;)V

    .line 12
    sget-object v0, Lw2/a;->b:Li2/i;

    .line 14
    invoke-virtual {p1, v0}, Li2/e;->e(Li2/i;)Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;

    .line 17
    move-result-object p1

    .line 18
    invoke-static {}, Lj2/a;->a()Lj2/b;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Li2/e;->a(Lj2/b;)Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    .line 25
    move-result-object p1

    .line 26
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

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->mAppRecentFileData:Ljava/util/List;

    .line 3
    return-void
.end method

.method public updateViewMode(I)V
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 10
    move-result-object v0

    .line 11
    iput p1, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 13
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->RecentSecondary:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1, v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->putFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)V

    .line 22
    return-void
.end method
