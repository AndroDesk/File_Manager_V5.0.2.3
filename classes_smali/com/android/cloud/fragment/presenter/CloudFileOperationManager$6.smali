.class synthetic Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;
.super Ljava/lang/Object;
.source "CloudFileOperationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$micloud$midrive$server$protocol$CreateFolderResponse:[I

.field public static final synthetic $SwitchMap$com$micloud$midrive$session$action$SyncFileOperationResponse$ErrorType:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    invoke-static {}, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->values()[Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$server$protocol$CreateFolderResponse:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->NAME_CONFLICT:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$server$protocol$CreateFolderResponse:[I

    sget-object v3, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->NAME_ILLEGAL_CHAR:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$server$protocol$CreateFolderResponse:[I

    sget-object v4, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->NOT_SUPPORT_MODIFY_FOR_OVERSEAS_USERS:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$server$protocol$CreateFolderResponse:[I

    sget-object v5, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->NETWORK_NOT_AVAILABLE:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    :catch_33
    const/4 v4, 0x5

    :try_start_34
    sget-object v5, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$server$protocol$CreateFolderResponse:[I

    sget-object v6, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->PARAM_ERROR:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3e

    :catch_3e
    const/4 v5, 0x6

    :try_start_3f
    sget-object v6, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$server$protocol$CreateFolderResponse:[I

    sget-object v7, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->NAME_IS_PRIVATE_SPACE_NAME:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_49} :catch_49

    :catch_49
    const/4 v6, 0x7

    :try_start_4a
    sget-object v7, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$server$protocol$CreateFolderResponse:[I

    sget-object v8, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->OTHER:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_54} :catch_54

    :catch_54
    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->values()[Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$session$action$SyncFileOperationResponse$ErrorType:[I

    :try_start_5d
    sget-object v8, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NETWORK_ERR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_65} :catch_65

    :catch_65
    :try_start_65
    sget-object v1, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$session$action$SyncFileOperationResponse$ErrorType:[I

    sget-object v7, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_NOT_SUPPORT:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v0, v1, v7
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6f} :catch_6f

    :catch_6f
    :try_start_6f
    sget-object v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$session$action$SyncFileOperationResponse$ErrorType:[I

    sget-object v1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_BATCH_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_79} :catch_79

    :catch_79
    :try_start_79
    sget-object v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$session$action$SyncFileOperationResponse$ErrorType:[I

    sget-object v1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_DOWNLOADING:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_83} :catch_83

    :catch_83
    :try_start_83
    sget-object v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$session$action$SyncFileOperationResponse$ErrorType:[I

    sget-object v1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_NOT_FOUND:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_8d} :catch_8d

    :catch_8d
    :try_start_8d
    sget-object v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$session$action$SyncFileOperationResponse$ErrorType:[I

    sget-object v1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_MOVE_COPY_EXIST:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_97} :catch_97

    :catch_97
    :try_start_97
    sget-object v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$session$action$SyncFileOperationResponse$ErrorType:[I

    sget-object v1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_EXISTS:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_a1} :catch_a1

    :catch_a1
    :try_start_a1
    sget-object v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$session$action$SyncFileOperationResponse$ErrorType:[I

    sget-object v1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->COPY_STORAGE_FULL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_ad} :catch_ad

    :catch_ad
    :try_start_ad
    sget-object v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$session$action$SyncFileOperationResponse$ErrorType:[I

    sget-object v1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad .. :try_end_b9} :catch_b9

    :catch_b9
    return-void
.end method
