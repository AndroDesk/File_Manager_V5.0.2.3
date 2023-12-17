.class public Lcom/android/fileexplorer/util/AdUtil;
.super Ljava/lang/Object;
.source "AdUtil.java"


# static fields
.field public static final AD_PLACE_STANDARD:I = 0x3

.field private static final AD_PLACE_STANDARD_BOTTOM:I = 0xb

.field public static final AD_PLACE_STANDARD_TOP:I = 0x5

.field public static IS_SHOW_AD:Z = false

.field public static final TAG:Ljava/lang/String; = "FE_AD_LOG"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/fileexplorer/util/AdUtil;->isShowAd()Z

    move-result v0

    sput-boolean v0, Lcom/android/fileexplorer/util/AdUtil;->IS_SHOW_AD:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdCategoryIndex(Ljava/util/List;)[I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfoGroup;",
            ">;)[I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x3

    move v3, v0

    move v4, v3

    move v6, v1

    move v5, v2

    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_23

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/fileexplorer/model/FileInfoGroup;

    invoke-virtual {v6}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    move-result v6

    add-int/2addr v4, v6

    if-ge v4, v2, :cond_21

    sub-int/2addr v5, v6

    add-int/lit8 v6, v3, 0x1

    move v8, v6

    move v6, v3

    move v3, v8

    goto :goto_7

    :cond_21
    move v6, v2

    goto :goto_26

    :cond_23
    move v5, v1

    move v3, v6

    move v6, v5

    :goto_26
    if-ne v5, v1, :cond_33

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/model/FileInfoGroup;

    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    move-result v5

    goto :goto_34

    :cond_33
    move v4, v6

    :goto_34
    new-array p0, v2, [I

    aput v3, p0, v0

    const/4 v0, 0x1

    aput v5, p0, v0

    const/4 v1, 0x2

    add-int/2addr v4, v3

    add-int/2addr v4, v0

    aput v4, p0, v1

    return-object p0
.end method

.method public static getAdIndex(Ljava/util/List;)[I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;)[I"
        }
    .end annotation

    if-eqz p0, :cond_48

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_48

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, -0x1

    move v3, v0

    move v4, v3

    move v5, v1

    move v6, v2

    :goto_10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_2a

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/fileexplorer/apptag/FileItemGroup;

    invoke-virtual {v6}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    move-result v6

    add-int/2addr v4, v6

    if-ge v4, v1, :cond_2d

    sub-int/2addr v5, v6

    add-int/lit8 v6, v3, 0x1

    move v8, v6

    move v6, v3

    move v3, v8

    goto :goto_10

    :cond_2a
    move v1, v2

    move v5, v1

    move v3, v6

    :cond_2d
    if-ne v5, v2, :cond_3a

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/apptag/FileItemGroup;

    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    move-result v5

    move v1, v4

    :cond_3a
    const/4 p0, 0x3

    new-array p0, p0, [I

    aput v3, p0, v0

    const/4 v0, 0x1

    aput v5, p0, v0

    const/4 v2, 0x2

    add-int/2addr v1, v3

    add-int/2addr v1, v0

    aput v1, p0, v2

    return-object p0

    :cond_48
    :goto_48
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRecentSecAdIndex(Ljava/util/List;)[I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;)[I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2b

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/apptag/FileItemGroup;

    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    move-result v3

    add-int/2addr v3, v2

    const/16 v4, 0xb

    if-le v3, v4, :cond_27

    sub-int/2addr v4, v2

    const/4 p0, 0x3

    new-array p0, p0, [I

    aput v1, p0, v0

    const/4 v0, 0x1

    aput v4, p0, v0

    const/4 v0, 0x2

    add-int/lit8 v1, v1, 0xc

    aput v1, p0, v0

    return-object p0

    :cond_27
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_3

    :cond_2b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isInterAdShow()Z
    .registers 1

    invoke-static {}, Lcom/android/fileexplorer/util/AdUtil;->isShowAd()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->isCategoryBackInterAdShow()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static isShowAd()Z
    .registers 1

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/fileexplorer/advert/util/Utils;->isMiuiLiteVersion()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
