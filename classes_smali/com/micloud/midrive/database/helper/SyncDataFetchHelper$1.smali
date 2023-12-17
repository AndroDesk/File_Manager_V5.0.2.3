.class synthetic Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$1;
.super Ljava/lang/Object;
.source "SyncDataFetchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/database/helper/SyncDataFetchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$micloud$midrive$database$helper$SyncDataFetchHelper$SortType:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;->values()[Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 8
    sput-object v0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$1;->$SwitchMap$com$micloud$midrive$database$helper$SyncDataFetchHelper$SortType:[I

    .line 10
    :try_start_9
    sget-object v1, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;->NAME:Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    .line 19
    :catch_12
    :try_start_12
    sget-object v0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$1;->$SwitchMap$com$micloud$midrive$database$helper$SyncDataFetchHelper$SortType:[I

    .line 21
    sget-object v1, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;->SIZE:Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x2

    .line 28
    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    .line 30
    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$1;->$SwitchMap$com$micloud$midrive$database$helper$SyncDataFetchHelper$SortType:[I

    .line 32
    sget-object v1, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;->MODIFY_TIME:Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    .line 34
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x3

    .line 39
    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    .line 41
    :catch_28
    :try_start_28
    sget-object v0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$1;->$SwitchMap$com$micloud$midrive$database$helper$SyncDataFetchHelper$SortType:[I

    .line 43
    sget-object v1, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;->FILE_TYPE:Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    .line 45
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 48
    move-result v1

    .line 49
    const/4 v2, 0x4

    .line 50
    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    .line 52
    :catch_33
    return-void
.end method
