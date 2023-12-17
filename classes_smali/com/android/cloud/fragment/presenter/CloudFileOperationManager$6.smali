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

    .line 1
    invoke-static {}, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->values()[Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 8
    sput-object v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$server$protocol$CreateFolderResponse:[I

    .line 10
    const/4 v1, 0x1

    .line 11
    :try_start_a
    sget-object v2, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->NAME_CONFLICT:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result v2

    .line 17
    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    .line 19
    :catch_12
    const/4 v0, 0x2

    .line 20
    :try_start_13
    sget-object v2, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$server$protocol$CreateFolderResponse:[I

    .line 22
    sget-object v3, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->NAME_ILLEGAL_CHAR:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    .line 24
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 27
    move-result v3

    .line 28
    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    .line 30
    :catch_1d
    const/4 v2, 0x3

    .line 31
    :try_start_1e
    sget-object v3, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$server$protocol$CreateFolderResponse:[I

    .line 33
    sget-object v4, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->NOT_SUPPORT_MODIFY_FOR_OVERSEAS_USERS:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    .line 35
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 38
    move-result v4

    .line 39
    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    .line 41
    :catch_28
    const/4 v3, 0x4

    .line 42
    :try_start_29
    sget-object v4, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$server$protocol$CreateFolderResponse:[I

    .line 44
    sget-object v5, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->NETWORK_NOT_AVAILABLE:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    .line 46
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 49
    move-result v5

    .line 50
    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    .line 52
    :catch_33
    const/4 v4, 0x5

    .line 53
    :try_start_34
    sget-object v5, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$server$protocol$CreateFolderResponse:[I

    .line 55
    sget-object v6, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->PARAM_ERROR:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    .line 57
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 60
    move-result v6

    .line 61
    aput v4, v5, v6
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3e

    .line 63
    :catch_3e
    const/4 v5, 0x6

    .line 64
    :try_start_3f
    sget-object v6, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$server$protocol$CreateFolderResponse:[I

    .line 66
    sget-object v7, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->NAME_IS_PRIVATE_SPACE_NAME:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    .line 68
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 71
    move-result v7

    .line 72
    aput v5, v6, v7
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_49} :catch_49

    .line 74
    :catch_49
    const/4 v6, 0x7

    .line 75
    :try_start_4a
    sget-object v7, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$server$protocol$CreateFolderResponse:[I

    .line 77
    sget-object v8, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->OTHER:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    .line 79
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 82
    move-result v8

    .line 83
    aput v6, v7, v8
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_54} :catch_54

    .line 85
    :catch_54
    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->values()[Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 88
    move-result-object v7

    .line 89
    array-length v7, v7

    .line 90
    new-array v7, v7, [I

    .line 92
    sput-object v7, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$session$action$SyncFileOperationResponse$ErrorType:[I

    .line 94
    :try_start_5d
    sget-object v8, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NETWORK_ERR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 96
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 99
    move-result v8

    .line 100
    aput v1, v7, v8
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_65} :catch_65

    .line 102
    :catch_65
    :try_start_65
    sget-object v1, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$session$action$SyncFileOperationResponse$ErrorType:[I

    .line 104
    sget-object v7, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_NOT_SUPPORT:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 106
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 109
    move-result v7

    .line 110
    aput v0, v1, v7
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6f} :catch_6f

    .line 112
    :catch_6f
    :try_start_6f
    sget-object v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$session$action$SyncFileOperationResponse$ErrorType:[I

    .line 114
    sget-object v1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_BATCH_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 116
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 119
    move-result v1

    .line 120
    aput v2, v0, v1
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_79} :catch_79

    .line 122
    :catch_79
    :try_start_79
    sget-object v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$session$action$SyncFileOperationResponse$ErrorType:[I

    .line 124
    sget-object v1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_DOWNLOADING:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 126
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 129
    move-result v1

    .line 130
    aput v3, v0, v1
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_83} :catch_83

    .line 132
    :catch_83
    :try_start_83
    sget-object v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$session$action$SyncFileOperationResponse$ErrorType:[I

    .line 134
    sget-object v1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_NOT_FOUND:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 136
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 139
    move-result v1

    .line 140
    aput v4, v0, v1
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_8d} :catch_8d

    .line 142
    :catch_8d
    :try_start_8d
    sget-object v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$session$action$SyncFileOperationResponse$ErrorType:[I

    .line 144
    sget-object v1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_MOVE_COPY_EXIST:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 146
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 149
    move-result v1

    .line 150
    aput v5, v0, v1
    :try_end_97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_97} :catch_97

    .line 152
    :catch_97
    :try_start_97
    sget-object v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$session$action$SyncFileOperationResponse$ErrorType:[I

    .line 154
    sget-object v1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_EXISTS:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 156
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 159
    move-result v1

    .line 160
    aput v6, v0, v1
    :try_end_a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_a1} :catch_a1

    .line 162
    :catch_a1
    :try_start_a1
    sget-object v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$session$action$SyncFileOperationResponse$ErrorType:[I

    .line 164
    sget-object v1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->COPY_STORAGE_FULL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 166
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 169
    move-result v1

    .line 170
    const/16 v2, 0x8

    .line 172
    aput v2, v0, v1
    :try_end_ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_ad} :catch_ad

    .line 174
    :catch_ad
    :try_start_ad
    sget-object v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$session$action$SyncFileOperationResponse$ErrorType:[I

    .line 176
    sget-object v1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 178
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 181
    move-result v1

    .line 182
    const/16 v2, 0x9

    .line 184
    aput v2, v0, v1
    :try_end_b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad .. :try_end_b9} :catch_b9

    .line 186
    :catch_b9
    return-void
.end method
