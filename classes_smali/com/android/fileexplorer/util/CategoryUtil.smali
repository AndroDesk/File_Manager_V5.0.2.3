.class public Lcom/android/fileexplorer/util/CategoryUtil;
.super Ljava/lang/Object;
.source "CategoryUtil.java"


# static fields
.field public static final CATEGORY_ALL_INDEX:Ljava/lang/String; = "all"

.field public static final CATEGORY_APK_INDEX:Ljava/lang/String; = "apk"

.field public static final CATEGORY_CAMERA_INDEX:Ljava/lang/String; = "camera"

.field public static final CATEGORY_DOCUMENT_INDEX:Ljava/lang/String; = "doc"

.field public static final CATEGORY_FAVORITE_INDEX:Ljava/lang/String; = "favorite"

.field public static final CATEGORY_FILE_DETAIL_INDEX:Ljava/lang/String; = "file_detail"

.field public static final CATEGORY_MIUI_INDEX:Ljava/lang/String; = "miui"

.field public static final CATEGORY_MORE_INDEX:Ljava/lang/String; = "more"

.field public static final CATEGORY_MUSIC_INDEX:Ljava/lang/String; = "music"

.field public static final CATEGORY_NAVIGATOR_BUNDLE_KEY:Ljava/lang/String; = "CATEGORY_NAVIGATOR_BUNDLE_KEY"

.field public static final CATEGORY_PHONE_MAIN_INDEX:Ljava/lang/String; = "phone_main"

.field public static final CATEGORY_PICTURE_INDEX:Ljava/lang/String; = "picture"

.field public static final CATEGORY_RECENT_INDEX:Ljava/lang/String; = "recent"

.field public static final CATEGORY_RECORDER_INDEX:Ljava/lang/String; = "recorder"

.field public static final CATEGORY_SCREENSHOT_INDEX:Ljava/lang/String; = "screenshot"

.field public static final CATEGORY_TRANSFER_INDEX:Ljava/lang/String; = "transfer"

.field public static final CATEGORY_VIDEO_INDEX:Ljava/lang/String; = "video"

.field public static final CATEGORY_WIDGET_CHOOSE_INDEX:Ljava/lang/String; = "widget_choose"

.field public static final CATEGORY_XSPACE_INDEX:Ljava/lang/String; = "xspace"

.field public static final CATEGORY_ZIP_INDEX:Ljava/lang/String; = "zip"

.field public static final DEFAULT_ORDER_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INDEX_CATEGORY_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_CATEGORY_APP:Ljava/lang/String; = "app"

.field public static final PREFERENCE_ADDED_CATEGORIES:Ljava/lang/String; = "added_categories"

.field public static final PREFERENCE_ALL_CATEGORIES:Ljava/lang/String; = "all_categories"

.field public static final PREF_NAME:Ljava/lang/String; = "settings_prefs"

.field public static final RECORDER_APP:Ljava/lang/String; = "com.android.soundrecorder"

.field public static final SEARCH_CATEGORY_FOLDER:Ljava/lang/String; = "folder"

.field public static final TABS:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static mAppInfoDataUtils:Lcom/android/fileexplorer/util/dao/AppInfoDaoUtils;

.field public static mCategoryMore:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

.field public static recorderTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

.field public static xSpaceTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;


# direct methods
.method public static constructor <clinit>()V
    .registers 21

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "doc"

    const-string v2, "picture"

    const-string v3, "video"

    const-string v4, "music"

    const-string v5, "zip"

    const-string v6, "apk"

    const-string v7, "transfer"

    const-string v8, "favorite"

    const-string v9, "screenshot"

    const-string v10, "camera"

    const-string v11, "recorder"

    const-string v12, "xspace"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/fileexplorer/util/CategoryUtil;->DEFAULT_ORDER_LIST:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/fileexplorer/util/dao/AppInfoDaoUtils;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/AppInfoDaoUtils;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/util/CategoryUtil;->mAppInfoDataUtils:Lcom/android/fileexplorer/util/dao/AppInfoDaoUtils;

    new-instance v0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    const-string v1, "more"

    const v2, 0x7f11006f

    const v3, 0x7f0801fd

    const v4, 0x7f0801fe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/fileexplorer/util/CategoryUtil;->mCategoryMore:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/util/CategoryUtil;->INDEX_CATEGORY_MAP:Ljava/util/HashMap;

    new-instance v7, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    const-string v2, "doc"

    const v3, 0x7f110066

    const v4, 0x7f0801f7

    const v5, 0x7f0801f8

    const/16 v6, 0x3eb

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;IIII)V

    const-string v1, "doc"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    const-string v9, "picture"

    const v10, 0x7f110073

    const v11, 0x7f080201

    const v12, 0x7f080202

    const/16 v13, 0x3ec

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;IIII)V

    const-string v2, "picture"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    const-string v4, "video"

    const v5, 0x7f11007d

    const v6, 0x7f080209

    const v7, 0x7f08020a

    const/16 v8, 0x3ed

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;IIII)V

    const-string v2, "video"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    const-string v4, "music"

    const v5, 0x7f110070

    const v6, 0x7f0801ff

    const v7, 0x7f080200

    const/16 v8, 0x3ee

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;IIII)V

    const-string v2, "music"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    const-string v4, "zip"

    const v5, 0x7f11007f

    const v6, 0x7f08020d

    const v7, 0x7f08020e

    const/16 v8, 0x3ef

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;IIII)V

    const-string v2, "zip"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    const-string v4, "apk"

    const v5, 0x7f110063

    const v6, 0x7f0801f2

    const v7, 0x7f0801f3

    const/16 v8, 0x3f0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;IIII)V

    const-string v2, "apk"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    const-string v4, "transfer"

    const v5, 0x7f110453

    const v6, 0x7f080207

    const v7, 0x7f080208

    const/16 v8, 0x3f1

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;IIII)V

    const-string v2, "transfer"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    const-string v4, "favorite"

    const v5, 0x7f11006a

    const v6, 0x7f0801f9

    const v7, 0x7f0801fa

    const/16 v8, 0x3f2

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;IIII)V

    const-string v2, "favorite"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    const-string v4, "screenshot"

    const v5, 0x7f11003d

    const v6, 0x7f080205

    const v7, 0x7f080206

    const/16 v8, 0x3f3

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;IIII)V

    new-instance v2, Lcom/android/fileexplorer/dao/file/AppTag;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const v3, 0x7f11003d

    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v11, "com.xlredapple.screenshot"

    const-string v13, ""

    const/4 v14, 0x0

    move-object v9, v2

    move-object v10, v6

    invoke-direct/range {v9 .. v14}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->setAppTag(Lcom/android/fileexplorer/dao/file/AppTag;)V

    new-instance v2, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    const-string v16, "camera"

    const v17, 0x7f110034

    const v18, 0x7f0801f4

    const v19, 0x7f0801f5

    const/16 v20, 0x3f5

    move-object v15, v2

    invoke-direct/range {v15 .. v20}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;IIII)V

    new-instance v3, Lcom/android/fileexplorer/dao/file/AppTag;

    const v4, 0x7f110034

    invoke-static {v4}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v7, "com.xlredapple.camera"

    const-string v9, ""

    const/4 v10, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->setAppTag(Lcom/android/fileexplorer/dao/file/AppTag;)V

    new-instance v3, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    const-string v12, "recorder"

    const v13, 0x7f11003c

    const v14, 0x7f080203

    const v15, 0x7f080204

    const/16 v16, 0x3f6

    move-object v11, v3

    invoke-direct/range {v11 .. v16}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/android/fileexplorer/util/CategoryUtil;->recorderTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    new-instance v3, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    const-string v5, "xspace"

    const v6, 0x7f110154

    const v7, 0x7f08020b

    const v8, 0x7f08020c

    const/16 v9, 0x3f7

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/android/fileexplorer/util/CategoryUtil;->xSpaceTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    const-string v3, "screenshot"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "camera"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/fileexplorer/util/CategoryUtil;->recorderTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    const-string v2, "recorder"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/fileexplorer/util/CategoryUtil;->xSpaceTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    const-string v2, "xspace"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/fileexplorer/util/CategoryUtil;->TABS:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equalList(Ljava/util/List;Ljava/util/List;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_28

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_b

    goto :goto_28

    :cond_b
    if-eqz p1, :cond_27

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_14

    goto :goto_27

    :cond_14
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_25

    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    return v0

    :cond_27
    :goto_27
    return v1

    :cond_28
    :goto_28
    if-eqz p1, :cond_32

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_31

    goto :goto_32

    :cond_31
    move v0, v1

    :cond_32
    :goto_32
    return v0
.end method

.method public static getAddedCategories()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getAddedCategoriesFromSP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getDefaultAddedCategories()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_f
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    if-gtz v2, :cond_22

    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getDefaultAddedCategories()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_22
    array-length v2, v0

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_65

    aget-object v10, v0, v3

    const-string v4, "miui"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    goto :goto_62

    :cond_31
    sget-object v4, Lcom/android/fileexplorer/util/CategoryUtil;->INDEX_CATEGORY_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    if-eqz v4, :cond_3f

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_62

    :cond_3f
    invoke-static {v10}, Lcom/android/fileexplorer/util/CategoryUtil;->getAppNameByPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4a

    goto :goto_62

    :cond_4a
    new-instance v11, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    new-instance v12, Lcom/android/fileexplorer/dao/file/AppTag;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v9, 0x0

    const-string v8, ""

    move-object v4, v12

    move-object v6, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v11, v10, v12}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;Lcom/android/fileexplorer/dao/file/AppTag;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_65
    return-object v1
.end method

.method private static getAddedCategoriesFromSP()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "settings_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "added_categories"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAllCategories()Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getAllCategoriesFromSP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getDefaultCategories()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_f
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    if-gtz v2, :cond_22

    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getDefaultCategories()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_22
    const/16 v2, 0xbb9

    array-length v3, v0

    const/4 v4, 0x0

    :goto_26
    if-ge v4, v3, :cond_69

    aget-object v11, v0, v4

    sget-object v5, Lcom/android/fileexplorer/util/CategoryUtil;->INDEX_CATEGORY_MAP:Ljava/util/HashMap;

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    const-string v6, "miui"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    goto :goto_66

    :cond_3b
    if-eqz v5, :cond_41

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_66

    :cond_41
    invoke-static {v11}, Lcom/android/fileexplorer/util/CategoryUtil;->getAppNameByPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4c

    goto :goto_66

    :cond_4c
    new-instance v12, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    new-instance v13, Lcom/android/fileexplorer/dao/file/AppTag;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v10, 0x0

    const-string v9, ""

    move-object v5, v13

    move-object v7, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v12, v11, v13, v2}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;Lcom/android/fileexplorer/dao/file/AppTag;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    :goto_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    :cond_69
    return-object v1
.end method

.method private static getAllCategoriesFromSP()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "settings_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "all_categories"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppNameByPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    sget-object v0, Lcom/android/fileexplorer/util/CategoryUtil;->mAppInfoDataUtils:Lcom/android/fileexplorer/util/dao/AppInfoDaoUtils;

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/util/dao/AppInfoDaoUtils;->getAppNameByPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-static {p0, v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_26
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_2d

    return-object v1

    :cond_2d
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_37
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_37} :catch_38

    return-object p0

    :catch_38
    return-object v1
.end method

.method public static getCategoryNameByIndex(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/util/CategoryUtil;->INDEX_CATEGORY_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    if-nez p1, :cond_d

    const-string p0, ""

    goto :goto_11

    :cond_d
    invoke-virtual {p1, p0}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getCategoryTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    :goto_11
    return-object p0
.end method

.method private static getDefaultAddedCategories()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1d

    sget-object v2, Lcom/android/fileexplorer/util/CategoryUtil;->INDEX_CATEGORY_MAP:Ljava/util/HashMap;

    sget-object v3, Lcom/android/fileexplorer/util/CategoryUtil;->DEFAULT_ORDER_LIST:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1d
    return-object v0
.end method

.method private static getDefaultCategories()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    sget-object v2, Lcom/android/fileexplorer/util/CategoryUtil;->INDEX_CATEGORY_MAP:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_39

    sget-object v3, Lcom/android/fileexplorer/util/CategoryUtil;->DEFAULT_ORDER_LIST:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "recorder"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "xspace"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    goto :goto_36

    :cond_29
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_39
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->isXSpaceEnable()Z

    move-result v1

    if-nez v1, :cond_45

    sget-object v1, Lcom/android/fileexplorer/util/CategoryUtil;->xSpaceTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_45
    sget-object v1, Lcom/android/fileexplorer/util/CategoryUtil;->xSpaceTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    sget-object v1, Lcom/android/fileexplorer/util/CategoryUtil;->xSpaceTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_52
    :goto_52
    const-string v1, "com.android.soundrecorder"

    invoke-static {v1}, Lcom/android/fileexplorer/util/AppUtils;->hasInstalledApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_60

    sget-object v1, Lcom/android/fileexplorer/util/CategoryUtil;->recorderTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6d

    :cond_60
    sget-object v1, Lcom/android/fileexplorer/util/CategoryUtil;->recorderTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    sget-object v1, Lcom/android/fileexplorer/util/CategoryUtil;->recorderTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6d
    :goto_6d
    return-object v0
.end method

.method public static getFileCategoyByIndex(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/util/CategoryUtil;->DEFAULT_ORDER_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    sget-object v0, Lcom/android/fileexplorer/util/CategoryUtil;->TABS:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getFixedSearchTagList()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    const/4 v2, 0x6

    if-ge v1, v2, :cond_21

    sget-object v2, Lcom/android/fileexplorer/util/CategoryUtil;->INDEX_CATEGORY_MAP:Ljava/util/HashMap;

    sget-object v3, Lcom/android/fileexplorer/util/CategoryUtil;->DEFAULT_ORDER_LIST:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    invoke-static {v2}, Lcom/android/fileexplorer/util/CategoryUtil;->transFileEntityToAppTag(Lcom/android/fileexplorer/model/category/FileCategoryEntity;)Lcom/android/fileexplorer/dao/file/AppTag;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_21
    new-instance v1, Lcom/android/fileexplorer/dao/file/AppTag;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const v2, 0x7f1103a9

    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const-string v4, "folder"

    const-string v6, ""

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getFragmentNameByTag(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_126

    goto/16 :goto_9c

    :sswitch_d
    const-string v0, "transfer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_9c

    :cond_17
    const/16 v1, 0xb

    goto/16 :goto_9c

    :sswitch_1b
    const-string v0, "favorite"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto/16 :goto_9c

    :cond_25
    const/16 v1, 0xa

    goto/16 :goto_9c

    :sswitch_29
    const-string v0, "video"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    goto/16 :goto_9c

    :cond_33
    const/16 v1, 0x9

    goto/16 :goto_9c

    :sswitch_37
    const-string v0, "music"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    goto/16 :goto_9c

    :cond_41
    const/16 v1, 0x8

    goto/16 :goto_9c

    :sswitch_45
    const-string v0, "more"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4e

    goto :goto_9c

    :cond_4e
    const/4 v1, 0x7

    goto :goto_9c

    :sswitch_50
    const-string v0, "zip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_59

    goto :goto_9c

    :cond_59
    const/4 v1, 0x6

    goto :goto_9c

    :sswitch_5b
    const-string v0, "doc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_64

    goto :goto_9c

    :cond_64
    const/4 v1, 0x5

    goto :goto_9c

    :sswitch_66
    const-string v0, "apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6f

    goto :goto_9c

    :cond_6f
    const/4 v1, 0x4

    goto :goto_9c

    :sswitch_71
    const-string v0, "all"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7a

    goto :goto_9c

    :cond_7a
    const/4 v1, 0x3

    goto :goto_9c

    :sswitch_7c
    const-string v0, "picture"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_85

    goto :goto_9c

    :cond_85
    const/4 v1, 0x2

    goto :goto_9c

    :sswitch_87
    const-string v0, "xspace"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_90

    goto :goto_9c

    :cond_90
    const/4 v1, 0x1

    goto :goto_9c

    :sswitch_92
    const-string v0, "recorder"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9b

    goto :goto_9c

    :cond_9b
    const/4 v1, 0x0

    :goto_9c
    const-string p0, "app"

    packed-switch v1, :pswitch_data_158

    if-eqz p1, :cond_a6

    const-class p0, Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment;

    goto :goto_a8

    :cond_a6
    const-class p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;

    :goto_a8
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_ad  #0xb
    if-eqz p1, :cond_b2

    const-class p0, Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;

    goto :goto_b4

    :cond_b2
    const-class p0, Lcom/android/fileexplorer/fragment/category/TransferCategoryFragment;

    :goto_b4
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b9  #0xa
    if-eqz p1, :cond_be

    const-class p0, Lcom/android/fileexplorer/pad/fragment/PadFavoriteCategoryFragment;

    goto :goto_c0

    :cond_be
    const-class p0, Lcom/android/fileexplorer/fragment/category/FavoriteCategoryFragment;

    :goto_c0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_c5  #0x9
    if-eqz p1, :cond_ca

    const-class p0, Lcom/android/fileexplorer/pad/fragment/PadVideoCategoryFragment;

    goto :goto_cc

    :cond_ca
    const-class p0, Lcom/android/fileexplorer/fragment/category/VideoCategoryFragment;

    :goto_cc
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_d1  #0x8
    if-eqz p1, :cond_d6

    const-class p0, Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment;

    goto :goto_d8

    :cond_d6
    const-class p0, Lcom/android/fileexplorer/fragment/category/MusicCategoryFragment;

    :goto_d8
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_dd  #0x7
    if-eqz p1, :cond_e2

    const-class p0, Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment;

    goto :goto_e4

    :cond_e2
    const-class p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    :goto_e4
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_e9  #0x6
    if-eqz p1, :cond_ee

    const-class p0, Lcom/android/fileexplorer/pad/fragment/PadZipCategoryFragment;

    goto :goto_f0

    :cond_ee
    const-class p0, Lcom/android/fileexplorer/fragment/category/ZipCategoryFragment;

    :goto_f0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_f5  #0x5
    if-eqz p1, :cond_fa

    const-class p0, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;

    goto :goto_fc

    :cond_fa
    const-class p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;

    :goto_fc
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_101  #0x4
    if-eqz p1, :cond_106

    const-class p0, Lcom/android/fileexplorer/pad/fragment/PadApkCategoryFragment;

    goto :goto_108

    :cond_106
    const-class p0, Lcom/android/fileexplorer/fragment/category/ApkCategoryFragment;

    :goto_108
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_10d  #0x3
    if-eqz p1, :cond_112

    const-class p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;

    goto :goto_114

    :cond_112
    const-class p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    :goto_114
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_119  #0x2
    if-eqz p1, :cond_11e

    const-class p0, Lcom/android/fileexplorer/pad/fragment/PadPictureCategoryFragment;

    goto :goto_120

    :cond_11e
    const-class p0, Lcom/android/fileexplorer/fragment/category/PictureCategoryFragment;

    :goto_120
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    :pswitch_124  #0x0, 0x1
    return-object p0

    nop

    :sswitch_data_126
    .sparse-switch
        -0x2fa35742 -> :sswitch_92
        -0x2cb18472 -> :sswitch_87
        -0x226fa302 -> :sswitch_7c
        0x179a1 -> :sswitch_71
        0x17a1c -> :sswitch_66
        0x18538 -> :sswitch_5b
        0x1d721 -> :sswitch_50
        0x333b55 -> :sswitch_45
        0x636ee25 -> :sswitch_37
        0x6b0147b -> :sswitch_29
        0x3ea1c99c -> :sswitch_1b
        0x4c58b7eb -> :sswitch_d
    .end sparse-switch

    :pswitch_data_158
    .packed-switch 0x0
        :pswitch_124  #00000000
        :pswitch_124  #00000001
        :pswitch_119  #00000002
        :pswitch_10d  #00000003
        :pswitch_101  #00000004
        :pswitch_f5  #00000005
        :pswitch_e9  #00000006
        :pswitch_dd  #00000007
        :pswitch_d1  #00000008
        :pswitch_c5  #00000009
        :pswitch_b9  #0000000a
        :pswitch_ad  #0000000b
    .end packed-switch
.end method

.method public static getHomeDisplayCategories(Z)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getAllCategories()Ljava/util/List;

    move-result-object v0

    if-eqz p0, :cond_b

    sget-object p0, Lcom/android/fileexplorer/util/CategoryUtil;->mCategoryMore:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    return-object v0
.end method

.method public static getNotAddedCategories()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getAddedCategories()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/android/fileexplorer/util/CategoryUtil;->INDEX_CATEGORY_MAP:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    if-eqz v0, :cond_13

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    invoke-virtual {v3}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    move-result-object v4

    const-string v5, "recorder"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    invoke-virtual {v3}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    move-result-object v4

    const-string v5, "xspace"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    goto :goto_13

    :cond_40
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_44
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->isXSpaceEnable()Z

    move-result v2

    if-nez v2, :cond_50

    sget-object v2, Lcom/android/fileexplorer/util/CategoryUtil;->xSpaceTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5d

    :cond_50
    sget-object v2, Lcom/android/fileexplorer/util/CategoryUtil;->xSpaceTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    sget-object v2, Lcom/android/fileexplorer/util/CategoryUtil;->xSpaceTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5d
    :goto_5d
    const-string v2, "com.android.soundrecorder"

    invoke-static {v2}, Lcom/android/fileexplorer/util/AppUtils;->hasInstalledApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6b

    sget-object v0, Lcom/android/fileexplorer/util/CategoryUtil;->recorderTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_78

    :cond_6b
    sget-object v2, Lcom/android/fileexplorer/util/CategoryUtil;->recorderTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    sget-object v0, Lcom/android/fileexplorer/util/CategoryUtil;->recorderTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_78
    :goto_78
    return-object v1
.end method

.method public static getWidgetChooseEntries()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/fileexplorer/util/CategoryUtil;->INDEX_CATEGORY_MAP:Ljava/util/HashMap;

    const-string v2, "doc"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "picture"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "music"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "zip"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "apk"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static makeAppTagByPackage(Ljava/lang/String;)Lcom/android/fileexplorer/dao/file/AppTag;
    .registers 8

    invoke-static {p0}, Lcom/android/fileexplorer/util/CategoryUtil;->getAppNameByPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    new-instance v6, Lcom/android/fileexplorer/dao/file/AppTag;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v5, 0x0

    const-string v4, ""

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v6
.end method

.method public static pareEntryEntity(Lcom/android/fileexplorer/model/StorageFileInfo;Lcom/android/fileexplorer/model/StorageInfo;Landroid/content/Context;)Lcom/android/fileexplorer/model/FileEntryEntity;
    .registers 7

    if-eqz p0, :cond_ac

    if-eqz p1, :cond_ac

    if-nez p2, :cond_8

    goto/16 :goto_ac

    :cond_8
    new-instance v0, Lcom/android/fileexplorer/model/FileEntryEntity;

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/fileexplorer/model/FileEntryEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isSd()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/StorageInfo;->setSd(Z)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isUsb()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/StorageInfo;->setUsb(Z)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isXspace()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/StorageInfo;->setXspace(Z)V

    iget-wide v1, p0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    iput-wide v1, v0, Lcom/android/fileexplorer/model/FileEntryEntity;->fileSize:J

    iget-wide v1, p0, Lcom/android/fileexplorer/model/StorageFileInfo;->availableSize:J

    iput-wide v1, v0, Lcom/android/fileexplorer/model/FileEntryEntity;->availableSize:J

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/StorageHelper;->isPrimaryVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result p0

    if-eqz p0, :cond_55

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/StorageInfo;->setPrimary(Z)V

    iput p0, v0, Lcom/android/fileexplorer/model/FileEntryEntity;->index:I

    const p0, 0x7f182cc5

    invoke-static {p0}, Lnp/NPFog;->d(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/StorageInfo;->setDescription(Ljava/lang/String;)V

    goto :goto_ab

    :cond_55
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isXspace()Z

    move-result p0

    if-eqz p0, :cond_72

    const p0, 0x7f0802a6

    iput p0, v0, Lcom/android/fileexplorer/model/FileEntryEntity;->icon:I

    const/4 p0, 0x2

    iput p0, v0, Lcom/android/fileexplorer/model/FileEntryEntity;->index:I

    const p0, 0x7f182cc2

    invoke-static {p0}, Lnp/NPFog;->d(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/StorageInfo;->setDescription(Ljava/lang/String;)V

    goto :goto_ab

    :cond_72
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isUsb()Z

    move-result p0

    if-eqz p0, :cond_8f

    const p0, 0x7f080123

    iput p0, v0, Lcom/android/fileexplorer/model/FileEntryEntity;->icon:I

    const/4 p0, 0x3

    iput p0, v0, Lcom/android/fileexplorer/model/FileEntryEntity;->index:I

    const p0, 0x7f182cc3

    invoke-static {p0}, Lnp/NPFog;->d(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/StorageInfo;->setDescription(Ljava/lang/String;)V

    goto :goto_ab

    :cond_8f
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isSd()Z

    move-result p0

    if-eqz p0, :cond_ab

    const p0, 0x7f080281

    iput p0, v0, Lcom/android/fileexplorer/model/FileEntryEntity;->icon:I

    const/4 p0, 0x4

    iput p0, v0, Lcom/android/fileexplorer/model/FileEntryEntity;->index:I

    const p0, 0x7f182992

    invoke-static {p0}, Lnp/NPFog;->d(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/StorageInfo;->setDescription(Ljava/lang/String;)V

    :cond_ab
    :goto_ab
    return-object v0

    :cond_ac
    :goto_ac
    const/4 p0, 0x0

    return-object p0
.end method

.method public static saveAddedCategoriesToSP(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "settings_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "added_categories"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static saveAllCategoriesToSP(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "settings_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "all_categories"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static transAppDataToCategory(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_60

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_60

    :cond_e
    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getAllCategoriesFromSP()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    new-instance v2, Ljava/util/ArrayList;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_2c
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/16 v1, 0xbb9

    :cond_32
    :goto_32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/fileexplorer/apptag/FileUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_32

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_55

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    goto :goto_32

    :cond_55
    new-instance v5, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    invoke-direct {v5, v4, v3, v1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;Lcom/android/fileexplorer/dao/file/AppTag;I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_60
    :goto_60
    return-object v0
.end method

.method public static transAppDataToNotAddedCategory(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_5c

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_5c

    :cond_e
    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getAddedCategoriesFromSP()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    new-instance v2, Ljava/util/ArrayList;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_2c
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_30
    :goto_30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/fileexplorer/apptag/FileUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_30

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_53

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    goto :goto_30

    :cond_53
    new-instance v4, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    invoke-direct {v4, v3, v1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;Lcom/android/fileexplorer/dao/file/AppTag;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_5c
    :goto_5c
    return-object v0
.end method

.method public static transCategoryListToNavigateList(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    if-nez v1, :cond_18

    goto :goto_9

    :cond_18
    invoke-static {p0, v1}, Lcom/android/fileexplorer/util/CategoryUtil;->transCategoryToNavigateItem(Landroid/content/Context;Lcom/android/fileexplorer/model/category/FileCategoryEntity;)Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_20
    return-object v0
.end method

.method private static transCategoryToNavigateItem(Landroid/content/Context;Lcom/android/fileexplorer/model/category/FileCategoryEntity;)Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;
    .registers 10

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/CategoryUtil;->getFragmentNameByTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    const-class v0, Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_4a

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getAppTag()Lcom/android/fileexplorer/dao/file/AppTag;

    move-result-object v0

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "app"

    invoke-virtual {v7, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "app_tag"

    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {p1, p0}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getCategoryTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36

    goto :goto_3a

    :cond_36
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/AppTag;->getAppName()Ljava/lang/String;

    move-result-object p0

    :goto_3a
    move-object v5, p0

    new-instance p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIconRes(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    move-result-object v4

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0

    :cond_4a
    new-instance p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIconRes(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getCategoryTitleRes()I

    move-result p1

    invoke-direct {p0, v0, v1, p1, v6}, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    return-object p0
.end method

.method private static transFileEntityToAppTag(Lcom/android/fileexplorer/model/category/FileCategoryEntity;)Lcom/android/fileexplorer/dao/file/AppTag;
    .registers 8

    new-instance v6, Lcom/android/fileexplorer/dao/file/AppTag;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getCategoryTitleRes()I

    move-result p0

    invoke-static {p0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v6
.end method
