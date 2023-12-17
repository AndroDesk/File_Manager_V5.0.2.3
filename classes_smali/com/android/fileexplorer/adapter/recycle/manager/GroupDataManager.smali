.class public Lcom/android/fileexplorer/adapter/recycle/manager/GroupDataManager;
.super Ljava/lang/Object;
.source "GroupDataManager.java"


# static fields
.field public static final GROUP_COLUMN_DOC:I = 0x3

.field public static final GROUP_COLUMN_VIDEO:I = 0x4

.field public static final RECENT_GROUP_DOC_MAX_SHOW_SIZE:I = 0x3

.field public static final RECENT_GROUP_NORMAL_MAX_SHOW_SIZE:I = 0x3

.field public static final RECENT_GROUP_PICTURE_MAX_SHOW_SIZE:I = 0xc

.field public static final RECENT_GROUP_VIDEO_MAX_SHOW_SIZE:I

.field private static final TAG:Ljava/lang/String; = "GroupDataManager"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "com.miui.video"

    .line 3
    const v1, 0x7858e936

    .line 6
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Util;->isAppSupport(Ljava/lang/String;I)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_d

    .line 12
    const/4 v0, 0x4

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/16 v0, 0xc

    .line 16
    :goto_f
    sput v0, Lcom/android/fileexplorer/adapter/recycle/manager/GroupDataManager;->RECENT_GROUP_VIDEO_MAX_SHOW_SIZE:I

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createFileGroup(Ljava/lang/Class;IJLcom/android/fileexplorer/apptag/FileItemGroup;Z)Lcom/android/fileexplorer/model/group/FileGroupParent;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;IJ",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            "Z)",
            "Lcom/android/fileexplorer/model/group/FileGroupParent<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/android/fileexplorer/model/group/FileGroupParent;

    .line 3
    invoke-direct {p0}, Lcom/android/fileexplorer/model/group/FileGroupParent;-><init>()V

    .line 6
    iput-wide p2, p0, Lcom/android/fileexplorer/model/group/FileGroupParent;->groupCreateTime:J

    .line 8
    sget-object p2, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;->Parent:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    .line 10
    iput-object p2, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->mDataType:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    .line 12
    iput-boolean p5, p0, Lcom/android/fileexplorer/model/group/FileGroupParent;->expandable:Z

    .line 14
    const/4 p2, 0x0

    .line 15
    iput-boolean p2, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->mCheckable:Z

    .line 17
    iput-object p4, p0, Lcom/android/fileexplorer/model/group/FileGroupParent;->mFileItemGroup:Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 19
    new-instance p2, Ljava/util/ArrayList;

    .line 21
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/android/fileexplorer/model/group/FileGroupParent;->mChildren:Ljava/util/List;

    .line 26
    iput p1, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->viewType:I

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 31
    move-result p1

    .line 32
    int-to-long p1, p1

    .line 33
    iput-wide p1, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->id:J

    .line 35
    return-object p0
.end method

.method public static createFileGroupDatas(Ljava/util/List;Ljava/util/List;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemAppGroup;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 3
    if-eqz p1, :cond_fe

    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_c

    .line 11
    goto/16 :goto_fe

    .line 13
    :cond_c
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 16
    move-result v1

    .line 17
    const/16 v2, 0x11

    .line 19
    if-nez v1, :cond_2b

    .line 21
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 24
    move-result v1

    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 27
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/android/fileexplorer/model/group/FileGroupData;

    .line 33
    if-eqz v1, :cond_2b

    .line 35
    iget v1, v1, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    .line 37
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/manager/GroupDataManager;->createGroupDivider(Ljava/lang/Class;II)Lcom/android/fileexplorer/model/group/FileGroupData;

    .line 40
    move-result-object v1

    .line 41
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_2b
    const/4 v1, 0x0

    .line 45
    :goto_2c
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 48
    move-result v3

    .line 49
    const-string v4, "GroupDataManager"

    .line 51
    if-ge v1, v3, :cond_ea

    .line 53
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    .line 59
    if-eqz v3, :cond_e6

    .line 61
    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 64
    move-result-object v5

    .line 65
    if-eqz v5, :cond_e6

    .line 67
    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 70
    move-result-object v5

    .line 71
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_4e

    .line 77
    goto/16 :goto_e6

    .line 79
    :cond_4e
    const-string v5, "createRecentFileGroupDatas size = "

    .line 81
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 88
    move-result-object v6

    .line 89
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 92
    move-result v6

    .line 93
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v5

    .line 100
    invoke-static {v4, v5}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 106
    move-result-object v4

    .line 107
    invoke-static {v4}, Lcom/android/fileexplorer/apptag/FileUtils;->sortFileListByTime(Ljava/util/List;)V

    .line 110
    iget-object v4, v3, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupFileType:Ljava/lang/Integer;

    .line 112
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 115
    move-result v4

    .line 116
    sget-object v5, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 118
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 121
    move-result v5

    .line 122
    const/4 v6, 0x3

    .line 123
    if-ne v5, v4, :cond_81

    .line 125
    const/4 v4, 0x4

    .line 126
    const/16 v6, 0xc

    .line 128
    :goto_7f
    move v11, v6

    .line 129
    goto :goto_a4

    .line 130
    :cond_81
    sget-object v5, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 132
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 135
    move-result v5

    .line 136
    if-ne v5, v4, :cond_8e

    .line 138
    const/16 v4, 0xf

    .line 140
    sget v6, Lcom/android/fileexplorer/adapter/recycle/manager/GroupDataManager;->RECENT_GROUP_VIDEO_MAX_SHOW_SIZE:I

    .line 142
    goto :goto_7f

    .line 143
    :cond_8e
    sget-object v5, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 145
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 148
    move-result v5

    .line 149
    if-ne v5, v4, :cond_a1

    .line 151
    sget-object v4, Lcom/android/fileexplorer/util/WpsSupportUtil;->WPS_APP_MI_NAME:Ljava/lang/String;

    .line 153
    invoke-static {v4}, Lcom/android/fileexplorer/util/AppUtils;->hasInstalledApp(Ljava/lang/String;)Z

    .line 156
    move-result v4

    .line 157
    if-eqz v4, :cond_a1

    .line 159
    const/16 v4, 0x10

    .line 161
    goto :goto_7f

    .line 162
    :cond_a1
    const/16 v4, 0xe

    .line 164
    goto :goto_7f

    .line 165
    :goto_a4
    const-class v5, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 167
    if-eqz p2, :cond_ab

    .line 169
    const/16 v6, 0x8

    .line 171
    goto :goto_ac

    .line 172
    :cond_ab
    const/4 v6, 0x6

    .line 173
    :goto_ac
    iget-object v7, v3, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupCreateTime:Ljava/lang/Long;

    .line 175
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 178
    move-result-wide v7

    .line 179
    move-object v9, v3

    .line 180
    move v10, p2

    .line 181
    invoke-static/range {v5 .. v10}, Lcom/android/fileexplorer/adapter/recycle/manager/GroupDataManager;->createFileGroup(Ljava/lang/Class;IJLcom/android/fileexplorer/apptag/FileItemGroup;Z)Lcom/android/fileexplorer/model/group/FileGroupParent;

    .line 184
    move-result-object v5

    .line 185
    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 188
    move-result-object v6

    .line 189
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 192
    move-result v6

    .line 193
    iput v6, v5, Lcom/android/fileexplorer/model/group/FileGroupParent;->groupAllCount:I

    .line 195
    if-gt v11, v6, :cond_c6

    .line 197
    if-nez p2, :cond_c7

    .line 199
    :cond_c6
    move v11, v6

    .line 200
    :cond_c7
    iput v11, v5, Lcom/android/fileexplorer/model/group/FileGroupParent;->showFileCount:I

    .line 202
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 205
    move-result v6

    .line 206
    iput v6, v5, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    .line 208
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-static {v3, p0, v5, v4, p2}, Lcom/android/fileexplorer/adapter/recycle/manager/GroupDataManager;->makeRecentGroupContents(Lcom/android/fileexplorer/apptag/FileItemGroup;Ljava/util/List;Lcom/android/fileexplorer/model/group/FileGroupParent;IZ)V

    .line 214
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 217
    move-result v3

    .line 218
    add-int/lit8 v3, v3, -0x1

    .line 220
    if-eq v1, v3, :cond_e6

    .line 222
    iget v3, v5, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    .line 224
    invoke-static {v0, v3, v2}, Lcom/android/fileexplorer/adapter/recycle/manager/GroupDataManager;->createGroupDivider(Ljava/lang/Class;II)Lcom/android/fileexplorer/model/group/FileGroupData;

    .line 227
    move-result-object v3

    .line 228
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_e6
    :goto_e6
    add-int/lit8 v1, v1, 0x1

    .line 233
    goto/16 :goto_2c

    .line 235
    :cond_ea
    const-string p1, "createRecentFileGroupDatas mergeGroupDates: size = "

    .line 237
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    move-result-object p1

    .line 241
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 244
    move-result p0

    .line 245
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    move-result-object p0

    .line 252
    invoke-static {v4, p0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_fe
    :goto_fe
    return-void
.end method

.method private static createGroupChild(Ljava/lang/Object;IJ)Lcom/android/fileexplorer/model/group/FileGroupChild;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;IJ)",
            "Lcom/android/fileexplorer/model/group/FileGroupChild<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/fileexplorer/model/group/FileGroupChild;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/model/group/FileGroupChild;-><init>()V

    .line 6
    iput-object p0, v0, Lcom/android/fileexplorer/model/group/FileGroupData;->mSingleData:Ljava/lang/Object;

    .line 8
    sget-object p0, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;->Child:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    .line 10
    iput-object p0, v0, Lcom/android/fileexplorer/model/group/FileGroupData;->mDataType:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    .line 12
    iput-wide p2, v0, Lcom/android/fileexplorer/model/group/FileGroupData;->id:J

    .line 14
    const/4 p0, 0x1

    .line 15
    iput-boolean p0, v0, Lcom/android/fileexplorer/model/group/FileGroupData;->mCheckable:Z

    .line 17
    iput p1, v0, Lcom/android/fileexplorer/model/group/FileGroupData;->viewType:I

    .line 19
    return-object v0
.end method

.method private static createGroupDivider(II)Lcom/android/fileexplorer/model/group/FileGroupData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "TT;>;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/android/fileexplorer/model/group/FileGroupData;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/group/FileGroupData;-><init>()V

    .line 7
    iput p1, v0, Lcom/android/fileexplorer/model/group/FileGroupData;->viewType:I

    .line 8
    sget-object p1, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;->Divider:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    iput-object p1, v0, Lcom/android/fileexplorer/model/group/FileGroupData;->mDataType:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    .line 9
    iput p0, v0, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    const/4 p0, 0x0

    .line 10
    iput-boolean p0, v0, Lcom/android/fileexplorer/model/group/FileGroupData;->mCheckable:Z

    return-object v0
.end method

.method private static createGroupDivider(Ljava/lang/Class;II)Lcom/android/fileexplorer/model/group/FileGroupData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;II)",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/android/fileexplorer/model/group/FileGroupData;

    invoke-direct {p0}, Lcom/android/fileexplorer/model/group/FileGroupData;-><init>()V

    .line 2
    iput p2, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->viewType:I

    .line 3
    sget-object p2, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;->Divider:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    iput-object p2, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->mDataType:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    .line 4
    iput p1, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->mCheckable:Z

    return-object p0
.end method

.method public static createNoGroupDatas(Ljava/util/List;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    if-eqz p0, :cond_46

    .line 8
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_e

    .line 14
    goto :goto_46

    .line 15
    :cond_e
    const/4 v1, 0x0

    .line 16
    :goto_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 19
    move-result v2

    .line 20
    if-ge v1, v2, :cond_30

    .line 22
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 28
    if-nez v2, :cond_1e

    .line 30
    goto :goto_2d

    .line 31
    :cond_1e
    iget-object v3, v2, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    .line 33
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 36
    move-result-wide v3

    .line 37
    invoke-static {v2, p1, v3, v4}, Lcom/android/fileexplorer/adapter/recycle/manager/GroupDataManager;->createGroupChild(Ljava/lang/Object;IJ)Lcom/android/fileexplorer/model/group/FileGroupChild;

    .line 40
    move-result-object v2

    .line 41
    iput v1, v2, Lcom/android/fileexplorer/model/group/FileGroupData;->mIndexInParent:I

    .line 43
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    .line 48
    goto :goto_f

    .line 49
    :cond_30
    const-string p0, "createNoGroupDatas mergeGroupDates: size = "

    .line 51
    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 58
    move-result p1

    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    const-string p1, "GroupDataManager"

    .line 68
    invoke-static {p1, p0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_46
    :goto_46
    return-object v0
.end method

.method public static createPictureFileGroupDatas(Ljava/util/List;II)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;II)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    if-eqz p0, :cond_97

    .line 8
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_f

    .line 14
    goto/16 :goto_97

    .line 16
    :cond_f
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_11
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 21
    move-result v3

    .line 22
    const-string v4, "GroupDataManager"

    .line 24
    if-ge v2, v3, :cond_83

    .line 26
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/android/fileexplorer/model/FileInfo;

    .line 32
    if-nez v3, :cond_22

    .line 34
    goto :goto_80

    .line 35
    :cond_22
    iget-object v5, v3, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    .line 37
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 40
    move-result-wide v5

    .line 41
    invoke-static {v3, p2, v5, v6}, Lcom/android/fileexplorer/adapter/recycle/manager/GroupDataManager;->createGroupChild(Ljava/lang/Object;IJ)Lcom/android/fileexplorer/model/group/FileGroupChild;

    .line 44
    move-result-object v5

    .line 45
    if-eqz v1, :cond_3d

    .line 47
    iget-wide v6, v1, Lcom/android/fileexplorer/model/group/FileGroupParent;->groupCreateTime:J

    .line 49
    iget-wide v8, v3, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 51
    invoke-static {v6, v7, v8, v9}, Lcom/android/fileexplorer/model/TimeUtils;->isInSameDay(JJ)Z

    .line 54
    move-result v6

    .line 55
    if-nez v6, :cond_39

    .line 57
    goto :goto_3d

    .line 58
    :cond_39
    invoke-virtual {v1, v5}, Lcom/android/fileexplorer/model/group/FileGroupParent;->addChild(Lcom/android/fileexplorer/model/group/FileGroupChild;)V

    .line 61
    goto :goto_7d

    .line 62
    :cond_3d
    :goto_3d
    if-eqz v1, :cond_4c

    .line 64
    const-class v6, Lcom/android/fileexplorer/model/FileInfo;

    .line 66
    iget v1, v1, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    .line 68
    const/16 v7, 0x9

    .line 70
    invoke-static {v6, v1, v7}, Lcom/android/fileexplorer/adapter/recycle/manager/GroupDataManager;->createGroupDivider(Ljava/lang/Class;II)Lcom/android/fileexplorer/model/group/FileGroupData;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_4c
    const-class v6, Lcom/android/fileexplorer/model/FileInfo;

    .line 79
    iget-wide v8, v3, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 81
    const/4 v10, 0x0

    .line 82
    const/4 v11, 0x0

    .line 83
    move v7, p1

    .line 84
    invoke-static/range {v6 .. v11}, Lcom/android/fileexplorer/adapter/recycle/manager/GroupDataManager;->createFileGroup(Ljava/lang/Class;IJLcom/android/fileexplorer/apptag/FileItemGroup;Z)Lcom/android/fileexplorer/model/group/FileGroupParent;

    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 91
    move-result v3

    .line 92
    iput v3, v1, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    .line 94
    invoke-virtual {v1, v5}, Lcom/android/fileexplorer/model/group/FileGroupParent;->addChild(Lcom/android/fileexplorer/model/group/FileGroupChild;)V

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    .line 99
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    const-string v6, "mergeGroupDates: createGroup, time = "

    .line 104
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-wide v6, v1, Lcom/android/fileexplorer/model/group/FileGroupParent;->groupCreateTime:J

    .line 109
    invoke-static {v6, v7}, Lcom/android/fileexplorer/model/TimeUtils;->format(J)Ljava/lang/String;

    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v3

    .line 120
    invoke-static {v4, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :goto_7d
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :goto_80
    add-int/lit8 v2, v2, 0x1

    .line 131
    goto :goto_11

    .line 132
    :cond_83
    const-string p0, "createFileGroupDatas mergeGroupDates: size = "

    .line 134
    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 141
    move-result p1

    .line 142
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object p0

    .line 149
    invoke-static {v4, p0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_97
    :goto_97
    return-object v0
.end method

.method public static createTimeFileGroupDatas(Ljava/util/List;Ljava/util/List;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 3
    if-eqz p1, :cond_130

    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_c

    .line 11
    goto/16 :goto_130

    .line 13
    :cond_c
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 16
    move-result v1

    .line 17
    const/16 v2, 0x11

    .line 19
    if-nez v1, :cond_2b

    .line 21
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 24
    move-result v1

    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 27
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/android/fileexplorer/model/group/FileGroupData;

    .line 33
    if-eqz v1, :cond_2b

    .line 35
    iget v1, v1, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    .line 37
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/manager/GroupDataManager;->createGroupDivider(Ljava/lang/Class;II)Lcom/android/fileexplorer/model/group/FileGroupData;

    .line 40
    move-result-object v1

    .line 41
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_2b
    const/4 v1, 0x0

    .line 45
    :goto_2c
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 48
    move-result v3

    .line 49
    const-string v4, "GroupDataManager"

    .line 51
    if-ge v1, v3, :cond_11c

    .line 53
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 59
    if-eqz v3, :cond_118

    .line 61
    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 64
    move-result-object v5

    .line 65
    if-eqz v5, :cond_118

    .line 67
    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 70
    move-result-object v5

    .line 71
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_4e

    .line 77
    goto/16 :goto_118

    .line 79
    :cond_4e
    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->isRecentHideCameraAndScreenShots()Z

    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_84

    .line 85
    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 88
    move-result-object v5

    .line 89
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    move-result-object v5

    .line 93
    :cond_5c
    :goto_5c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_84

    .line 99
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    move-result-object v6

    .line 103
    check-cast v6, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 105
    invoke-virtual {v6}, Lcom/android/fileexplorer/dao/file/FileItem;->getParentDir()Ljava/lang/String;

    .line 108
    move-result-object v7

    .line 109
    const-string v8, "DCIM/Camera"

    .line 111
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 114
    move-result v7

    .line 115
    if-nez v7, :cond_80

    .line 117
    invoke-virtual {v6}, Lcom/android/fileexplorer/dao/file/FileItem;->getParentDir()Ljava/lang/String;

    .line 120
    move-result-object v6

    .line 121
    const-string v7, "DCIM/Screenshots"

    .line 123
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_5c

    .line 129
    :cond_80
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 132
    goto :goto_5c

    .line 133
    :cond_84
    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 136
    move-result-object v5

    .line 137
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 140
    move-result v5

    .line 141
    if-eqz v5, :cond_90

    .line 143
    goto/16 :goto_118

    .line 145
    :cond_90
    const-string v5, "createRecentFileGroupDatas size = "

    .line 147
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    move-result-object v5

    .line 151
    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 154
    move-result-object v6

    .line 155
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 158
    move-result v6

    .line 159
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object v5

    .line 166
    invoke-static {v4, v5}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 172
    move-result-object v4

    .line 173
    invoke-static {v4}, Lcom/android/fileexplorer/apptag/FileUtils;->sortFileListByTime(Ljava/util/List;)V

    .line 176
    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 178
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 181
    move-result v5

    .line 182
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 185
    move-result v4

    .line 186
    const/4 v6, 0x3

    .line 187
    if-ne v4, v5, :cond_c0

    .line 189
    const/16 v6, 0xc

    .line 191
    :cond_be
    :goto_be
    move v4, v6

    .line 192
    goto :goto_d9

    .line 193
    :cond_c0
    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 195
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 198
    move-result v4

    .line 199
    if-ne v4, v5, :cond_cb

    .line 201
    sget v6, Lcom/android/fileexplorer/adapter/recycle/manager/GroupDataManager;->RECENT_GROUP_VIDEO_MAX_SHOW_SIZE:I

    .line 203
    goto :goto_be

    .line 204
    :cond_cb
    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 206
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 209
    move-result v4

    .line 210
    if-ne v4, v5, :cond_be

    .line 212
    sget-object v4, Lcom/android/fileexplorer/util/WpsSupportUtil;->WPS_APP_MI_NAME:Ljava/lang/String;

    .line 214
    invoke-static {v4}, Lcom/android/fileexplorer/util/AppUtils;->hasInstalledApp(Ljava/lang/String;)Z

    .line 217
    goto :goto_be

    .line 218
    :goto_d9
    const-class v5, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 220
    if-eqz p2, :cond_e0

    .line 222
    const/16 v6, 0x8

    .line 224
    goto :goto_e1

    .line 225
    :cond_e0
    const/4 v6, 0x6

    .line 226
    :goto_e1
    iget-object v7, v3, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupCreateTime:Ljava/lang/Long;

    .line 228
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 231
    move-result-wide v7

    .line 232
    move-object v9, v3

    .line 233
    move v10, p2

    .line 234
    invoke-static/range {v5 .. v10}, Lcom/android/fileexplorer/adapter/recycle/manager/GroupDataManager;->createFileGroup(Ljava/lang/Class;IJLcom/android/fileexplorer/apptag/FileItemGroup;Z)Lcom/android/fileexplorer/model/group/FileGroupParent;

    .line 237
    move-result-object v5

    .line 238
    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 241
    move-result-object v3

    .line 242
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 245
    move-result v3

    .line 246
    iput v3, v5, Lcom/android/fileexplorer/model/group/FileGroupParent;->groupAllCount:I

    .line 248
    if-gt v4, v3, :cond_fb

    .line 250
    if-nez p2, :cond_fc

    .line 252
    :cond_fb
    move v4, v3

    .line 253
    :cond_fc
    iput v4, v5, Lcom/android/fileexplorer/model/group/FileGroupParent;->showFileCount:I

    .line 255
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 258
    move-result v3

    .line 259
    iput v3, v5, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    .line 261
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 267
    move-result v3

    .line 268
    add-int/lit8 v3, v3, -0x1

    .line 270
    if-eq v1, v3, :cond_118

    .line 272
    iget v3, v5, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    .line 274
    invoke-static {v0, v3, v2}, Lcom/android/fileexplorer/adapter/recycle/manager/GroupDataManager;->createGroupDivider(Ljava/lang/Class;II)Lcom/android/fileexplorer/model/group/FileGroupData;

    .line 277
    move-result-object v3

    .line 278
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_118
    :goto_118
    add-int/lit8 v1, v1, 0x1

    .line 283
    goto/16 :goto_2c

    .line 285
    :cond_11c
    const-string p1, "createRecentFileGroupDatas mergeGroupDates: size = "

    .line 287
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    move-result-object p1

    .line 291
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 294
    move-result p0

    .line 295
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    move-result-object p0

    .line 302
    invoke-static {v4, p0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_130
    :goto_130
    return-void
.end method

.method public static getEditableCount(Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "TT;>;>;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_21

    .line 4
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_a

    .line 10
    goto :goto_21

    .line 11
    :cond_a
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p0

    .line 15
    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_21

    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/fileexplorer/model/group/FileGroupData;

    .line 27
    iget-boolean v1, v1, Lcom/android/fileexplorer/model/group/FileGroupData;->mCheckable:Z

    .line 29
    if-eqz v1, :cond_e

    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 33
    goto :goto_e

    .line 34
    :cond_21
    :goto_21
    return v0
.end method

.method public static makeRecentGroupContents(Lcom/android/fileexplorer/apptag/FileItemGroup;Ljava/util/List;Lcom/android/fileexplorer/model/group/FileGroupParent;IZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;>;",
            "Lcom/android/fileexplorer/model/group/FileGroupParent<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;IZ)V"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_61

    .line 3
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 6
    move-result-object p4

    .line 7
    if-eqz p4, :cond_61

    .line 9
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 12
    move-result-object p4

    .line 13
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    .line 16
    move-result p4

    .line 17
    if-eqz p4, :cond_13

    .line 19
    goto :goto_61

    .line 20
    :cond_13
    const-string p4, "makeRecentGroupContents size = "

    .line 22
    invoke-static {p4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    move-result-object p4

    .line 26
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 33
    move-result v0

    .line 34
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p4

    .line 41
    const-string v0, "GroupDataManager"

    .line 43
    invoke-static {v0, p4}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 p4, 0x0

    .line 47
    move v0, p4

    .line 48
    :goto_2f
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 55
    move-result v1

    .line 56
    if-ge v0, v1, :cond_61

    .line 58
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 61
    move-result-object v1

    .line 62
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 68
    if-eqz v1, :cond_5e

    .line 70
    iget v2, p2, Lcom/android/fileexplorer/model/group/FileGroupParent;->showFileCount:I

    .line 72
    if-lt v0, v2, :cond_4a

    .line 74
    goto :goto_5e

    .line 75
    :cond_4a
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    invoke-static {v2}, Lcom/android/fileexplorer/model/Util;->getUniqueId(Ljava/lang/String;)J

    .line 82
    move-result-wide v2

    .line 83
    invoke-static {v1, p3, v2, v3}, Lcom/android/fileexplorer/adapter/recycle/manager/GroupDataManager;->createGroupChild(Ljava/lang/Object;IJ)Lcom/android/fileexplorer/model/group/FileGroupChild;

    .line 86
    move-result-object v1

    .line 87
    iput-object p2, v1, Lcom/android/fileexplorer/model/group/FileGroupChild;->mParent:Lcom/android/fileexplorer/model/group/FileGroupParent;

    .line 89
    invoke-virtual {p2, v1, p4}, Lcom/android/fileexplorer/model/group/FileGroupParent;->addChild(Lcom/android/fileexplorer/model/group/FileGroupChild;Z)V

    .line 92
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_5e
    :goto_5e
    add-int/lit8 v0, v0, 0x1

    .line 97
    goto :goto_2f

    .line 98
    :cond_61
    :goto_61
    return-void
.end method

.method private static needJumpToVideo(II)Z
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_11

    .line 9
    const/4 p1, 0x4

    .line 10
    if-le p0, p1, :cond_11

    .line 12
    sget p0, Lcom/android/fileexplorer/adapter/recycle/manager/GroupDataManager;->RECENT_GROUP_VIDEO_MAX_SHOW_SIZE:I

    .line 14
    if-ne p0, p1, :cond_11

    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 p0, 0x0

    .line 19
    :goto_12
    return p0
.end method

.method public static updateDataByActionMode(ZLjava/util/List;ILjava/util/HashMap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "TT;>;>;I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_86

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    goto/16 :goto_86

    .line 11
    :cond_a
    const-string v0, "updateDataByActionMode position = "

    .line 13
    const-string v1, "GroupDataManager"

    .line 15
    invoke-static {v0, p2, v1}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    .line 18
    const/4 v0, -0x1

    .line 19
    if-ne p2, v0, :cond_2d

    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p1

    .line 25
    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_86

    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lcom/android/fileexplorer/model/group/FileGroupData;

    .line 37
    instance-of p3, p2, Lcom/android/fileexplorer/model/group/FileGroupParent;

    .line 39
    if-eqz p3, :cond_18

    .line 41
    check-cast p2, Lcom/android/fileexplorer/model/group/FileGroupParent;

    .line 43
    iput-boolean p0, p2, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    .line 45
    goto :goto_18

    .line 46
    :cond_2d
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 49
    move-result p0

    .line 50
    if-gt p0, p2, :cond_34

    .line 52
    return-void

    .line 53
    :cond_34
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Lcom/android/fileexplorer/model/group/FileGroupData;

    .line 59
    iget p0, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    .line 61
    if-ne v0, p0, :cond_3f

    .line 63
    return-void

    .line 64
    :cond_3f
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object p2

    .line 68
    instance-of p2, p2, Lcom/android/fileexplorer/model/group/FileGroupParent;

    .line 70
    if-eqz p2, :cond_86

    .line 72
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupParent;

    .line 78
    add-int/lit8 p2, p0, 0x1

    .line 80
    iget v0, p1, Lcom/android/fileexplorer/model/group/FileGroupParent;->showFileCount:I

    .line 82
    add-int/2addr v0, p0

    .line 83
    const/4 v2, 0x0

    .line 84
    if-nez p3, :cond_56

    .line 86
    goto :goto_68

    .line 87
    :cond_56
    move v3, p2

    .line 88
    :goto_57
    if-gt v3, v0, :cond_67

    .line 90
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {p3, v4}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    .line 97
    move-result v4

    .line 98
    if-nez v4, :cond_64

    .line 100
    goto :goto_68

    .line 101
    :cond_64
    add-int/lit8 v3, v3, 0x1

    .line 103
    goto :goto_57

    .line 104
    :cond_67
    const/4 v2, 0x1

    .line 105
    :goto_68
    const-string p3, "updateDataByActionMode section = "

    .line 107
    const-string v3, ", startPos = "

    .line 109
    const-string v4, ", end = "

    .line 111
    invoke-static {p3, p0, v3, p2, v4}, La/a;->q(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    const-string p2, ", isCheckAll = "

    .line 120
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object p0

    .line 130
    invoke-static {v1, p0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iput-boolean v2, p1, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    .line 135
    :cond_86
    :goto_86
    return-void
.end method
