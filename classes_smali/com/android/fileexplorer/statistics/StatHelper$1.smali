.class synthetic Lcom/android/fileexplorer/statistics/StatHelper$1;
.super Ljava/lang/Object;
.source "StatHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/statistics/StatHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

.field public static final synthetic $SwitchMap$com$micloud$midrive$session$action$SyncFileOperationResponse$ErrorType:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->values()[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 8
    sput-object v0, Lcom/android/fileexplorer/statistics/StatHelper$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 10
    const/4 v1, 0x1

    .line 11
    :try_start_a
    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

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
    sget-object v2, Lcom/android/fileexplorer/statistics/StatHelper$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 22
    sget-object v3, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

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
    sget-object v3, Lcom/android/fileexplorer/statistics/StatHelper$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 33
    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

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
    sget-object v4, Lcom/android/fileexplorer/statistics/StatHelper$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 44
    sget-object v5, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

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
    :try_start_33
    sget-object v4, Lcom/android/fileexplorer/statistics/StatHelper$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 54
    sget-object v5, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Word:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 56
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 59
    move-result v5

    .line 60
    const/4 v6, 0x5

    .line 61
    aput v6, v4, v5
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    .line 63
    :catch_3e
    :try_start_3e
    sget-object v4, Lcom/android/fileexplorer/statistics/StatHelper$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 65
    sget-object v5, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->XLS:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 67
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 70
    move-result v5

    .line 71
    const/4 v6, 0x6

    .line 72
    aput v6, v4, v5
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    .line 74
    :catch_49
    :try_start_49
    sget-object v4, Lcom/android/fileexplorer/statistics/StatHelper$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 76
    sget-object v5, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->PDF:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 78
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 81
    move-result v5

    .line 82
    const/4 v6, 0x7

    .line 83
    aput v6, v4, v5
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    .line 85
    :catch_54
    :try_start_54
    sget-object v4, Lcom/android/fileexplorer/statistics/StatHelper$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 87
    sget-object v5, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->PPT:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 89
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 92
    move-result v5

    .line 93
    const/16 v6, 0x8

    .line 95
    aput v6, v4, v5
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    .line 97
    :catch_60
    :try_start_60
    sget-object v4, Lcom/android/fileexplorer/statistics/StatHelper$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 99
    sget-object v5, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Other:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 101
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 104
    move-result v5

    .line 105
    const/16 v6, 0x9

    .line 107
    aput v6, v4, v5
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    .line 109
    :catch_6c
    :try_start_6c
    sget-object v4, Lcom/android/fileexplorer/statistics/StatHelper$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 111
    sget-object v5, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 113
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 116
    move-result v5

    .line 117
    const/16 v6, 0xa

    .line 119
    aput v6, v4, v5
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    .line 121
    :catch_78
    :try_start_78
    sget-object v4, Lcom/android/fileexplorer/statistics/StatHelper$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 123
    sget-object v5, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 125
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 128
    move-result v5

    .line 129
    const/16 v6, 0xb

    .line 131
    aput v6, v4, v5
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    .line 133
    :catch_84
    :try_start_84
    sget-object v4, Lcom/android/fileexplorer/statistics/StatHelper$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 135
    sget-object v5, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 137
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 140
    move-result v5

    .line 141
    const/16 v6, 0xc

    .line 143
    aput v6, v4, v5
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    .line 145
    :catch_90
    :try_start_90
    sget-object v4, Lcom/android/fileexplorer/statistics/StatHelper$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 147
    sget-object v5, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Download:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 149
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 152
    move-result v5

    .line 153
    const/16 v6, 0xd

    .line 155
    aput v6, v4, v5
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    .line 157
    :catch_9c
    :try_start_9c
    sget-object v4, Lcom/android/fileexplorer/statistics/StatHelper$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 159
    sget-object v5, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MINE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 161
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 164
    move-result v5

    .line 165
    const/16 v6, 0xe

    .line 167
    aput v6, v4, v5
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a8

    .line 169
    :catch_a8
    :try_start_a8
    sget-object v4, Lcom/android/fileexplorer/statistics/StatHelper$1;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 171
    sget-object v5, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 173
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 176
    move-result v5

    .line 177
    const/16 v6, 0xf

    .line 179
    aput v6, v4, v5
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    .line 181
    :catch_b4
    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->values()[Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 184
    move-result-object v4

    .line 185
    array-length v4, v4

    .line 186
    new-array v4, v4, [I

    .line 188
    sput-object v4, Lcom/android/fileexplorer/statistics/StatHelper$1;->$SwitchMap$com$micloud$midrive$session$action$SyncFileOperationResponse$ErrorType:[I

    .line 190
    :try_start_bd
    sget-object v5, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NAME_ILLEGAL_CHAR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 192
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 195
    move-result v5

    .line 196
    aput v1, v4, v5
    :try_end_c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bd .. :try_end_c5} :catch_c5

    .line 198
    :catch_c5
    :try_start_c5
    sget-object v1, Lcom/android/fileexplorer/statistics/StatHelper$1;->$SwitchMap$com$micloud$midrive$session$action$SyncFileOperationResponse$ErrorType:[I

    .line 200
    sget-object v4, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_NOT_FOUND:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 202
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 205
    move-result v4

    .line 206
    aput v0, v1, v4
    :try_end_cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c5 .. :try_end_cf} :catch_cf

    .line 208
    :catch_cf
    :try_start_cf
    sget-object v0, Lcom/android/fileexplorer/statistics/StatHelper$1;->$SwitchMap$com$micloud$midrive$session$action$SyncFileOperationResponse$ErrorType:[I

    .line 210
    sget-object v1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->COPY_STORAGE_FULL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 212
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 215
    move-result v1

    .line 216
    aput v2, v0, v1
    :try_end_d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cf .. :try_end_d9} :catch_d9

    .line 218
    :catch_d9
    :try_start_d9
    sget-object v0, Lcom/android/fileexplorer/statistics/StatHelper$1;->$SwitchMap$com$micloud$midrive$session$action$SyncFileOperationResponse$ErrorType:[I

    .line 220
    sget-object v1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NOT_SUPPORT_MODIFY_FOR_OVERSEAS_USERS:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 222
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 225
    move-result v1

    .line 226
    aput v3, v0, v1
    :try_end_e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d9 .. :try_end_e3} :catch_e3

    .line 228
    :catch_e3
    return-void
.end method
