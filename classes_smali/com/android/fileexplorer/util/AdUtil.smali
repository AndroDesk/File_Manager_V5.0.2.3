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

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/AdUtil;->isShowAd()Z

    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/android/fileexplorer/util/AdUtil;->IS_SHOW_AD:Z

    .line 7
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

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    const/4 v2, 0x3

    .line 4
    move v3, v0

    .line 5
    move v4, v3

    .line 6
    move v6, v1

    .line 7
    move v5, v2

    .line 8
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 11
    move-result v7

    .line 12
    if-ge v3, v7, :cond_23

    .line 14
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v6

    .line 18
    check-cast v6, Lcom/android/fileexplorer/model/FileInfoGroup;

    .line 20
    invoke-virtual {v6}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    .line 23
    move-result v6

    .line 24
    add-int/2addr v4, v6

    .line 25
    if-ge v4, v2, :cond_21

    .line 27
    sub-int/2addr v5, v6

    .line 28
    add-int/lit8 v6, v3, 0x1

    .line 30
    move v8, v6

    .line 31
    move v6, v3

    .line 32
    move v3, v8

    .line 33
    goto :goto_7

    .line 34
    :cond_21
    move v6, v2

    .line 35
    goto :goto_26

    .line 36
    :cond_23
    move v5, v1

    .line 37
    move v3, v6

    .line 38
    move v6, v5

    .line 39
    :goto_26
    if-ne v5, v1, :cond_33

    .line 41
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Lcom/android/fileexplorer/model/FileInfoGroup;

    .line 47
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    .line 50
    move-result v5

    .line 51
    goto :goto_34

    .line 52
    :cond_33
    move v4, v6

    .line 53
    :goto_34
    new-array p0, v2, [I

    .line 55
    aput v3, p0, v0

    .line 57
    const/4 v0, 0x1

    .line 58
    aput v5, p0, v0

    .line 60
    const/4 v1, 0x2

    .line 61
    add-int/2addr v4, v3

    .line 62
    add-int/2addr v4, v0

    .line 63
    aput v4, p0, v1

    .line 65
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

    .line 1
    if-eqz p0, :cond_48

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_48

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x5

    .line 12
    const/4 v2, -0x1

    .line 13
    move v3, v0

    .line 14
    move v4, v3

    .line 15
    move v5, v1

    .line 16
    move v6, v2

    .line 17
    :goto_10
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 20
    move-result v7

    .line 21
    if-ge v3, v7, :cond_2a

    .line 23
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v6

    .line 27
    check-cast v6, Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 29
    invoke-virtual {v6}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    .line 32
    move-result v6

    .line 33
    add-int/2addr v4, v6

    .line 34
    if-ge v4, v1, :cond_2d

    .line 36
    sub-int/2addr v5, v6

    .line 37
    add-int/lit8 v6, v3, 0x1

    .line 39
    move v8, v6

    .line 40
    move v6, v3

    .line 41
    move v3, v8

    .line 42
    goto :goto_10

    .line 43
    :cond_2a
    move v1, v2

    .line 44
    move v5, v1

    .line 45
    move v3, v6

    .line 46
    :cond_2d
    if-ne v5, v2, :cond_3a

    .line 48
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 54
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    .line 57
    move-result v5

    .line 58
    move v1, v4

    .line 59
    :cond_3a
    const/4 p0, 0x3

    .line 60
    new-array p0, p0, [I

    .line 62
    aput v3, p0, v0

    .line 64
    const/4 v0, 0x1

    .line 65
    aput v5, p0, v0

    .line 67
    const/4 v2, 0x2

    .line 68
    add-int/2addr v1, v3

    .line 69
    add-int/2addr v1, v0

    .line 70
    aput v1, p0, v2

    .line 72
    return-object p0

    .line 73
    :cond_48
    :goto_48
    const/4 p0, 0x0

    .line 74
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

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 7
    move-result v3

    .line 8
    if-ge v1, v3, :cond_2b

    .line 10
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 16
    invoke-virtual {v3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItemCount()I

    .line 19
    move-result v3

    .line 20
    add-int/2addr v3, v2

    .line 21
    const/16 v4, 0xb

    .line 23
    if-le v3, v4, :cond_27

    .line 25
    sub-int/2addr v4, v2

    .line 26
    const/4 p0, 0x3

    .line 27
    new-array p0, p0, [I

    .line 29
    aput v1, p0, v0

    .line 31
    const/4 v0, 0x1

    .line 32
    aput v4, p0, v0

    .line 34
    const/4 v0, 0x2

    .line 35
    add-int/lit8 v1, v1, 0xc

    .line 37
    aput v1, p0, v0

    .line 39
    return-object p0

    .line 40
    :cond_27
    add-int/lit8 v1, v1, 0x1

    .line 42
    move v2, v3

    .line 43
    goto :goto_3

    .line 44
    :cond_2b
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method

.method public static isInterAdShow()Z
    .registers 1

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/AdUtil;->isShowAd()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_e

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->isCategoryBackInterAdShow()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method

.method private static isShowAd()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-static {}, Lcom/fileexplorer/advert/util/Utils;->isMiuiLiteVersion()Z

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
