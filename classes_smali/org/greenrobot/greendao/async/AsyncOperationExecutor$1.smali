.class synthetic Lorg/greenrobot/greendao/async/AsyncOperationExecutor$1;
.super Ljava/lang/Object;
.source "AsyncOperationExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/greendao/async/AsyncOperationExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$org$greenrobot$greendao$async$AsyncOperation$OperationType:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->values()[Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 8
    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor$1;->$SwitchMap$org$greenrobot$greendao$async$AsyncOperation$OperationType:[I

    .line 10
    :try_start_9
    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Delete:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

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
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor$1;->$SwitchMap$org$greenrobot$greendao$async$AsyncOperation$OperationType:[I

    .line 21
    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->DeleteInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

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
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor$1;->$SwitchMap$org$greenrobot$greendao$async$AsyncOperation$OperationType:[I

    .line 32
    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->DeleteInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

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
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor$1;->$SwitchMap$org$greenrobot$greendao$async$AsyncOperation$OperationType:[I

    .line 43
    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Insert:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

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
    :try_start_33
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor$1;->$SwitchMap$org$greenrobot$greendao$async$AsyncOperation$OperationType:[I

    .line 54
    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 56
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 59
    move-result v1

    .line 60
    const/4 v2, 0x5

    .line 61
    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    .line 63
    :catch_3e
    :try_start_3e
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor$1;->$SwitchMap$org$greenrobot$greendao$async$AsyncOperation$OperationType:[I

    .line 65
    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 67
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 70
    move-result v1

    .line 71
    const/4 v2, 0x6

    .line 72
    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    .line 74
    :catch_49
    :try_start_49
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor$1;->$SwitchMap$org$greenrobot$greendao$async$AsyncOperation$OperationType:[I

    .line 76
    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertOrReplace:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 78
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 81
    move-result v1

    .line 82
    const/4 v2, 0x7

    .line 83
    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    .line 85
    :catch_54
    :try_start_54
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor$1;->$SwitchMap$org$greenrobot$greendao$async$AsyncOperation$OperationType:[I

    .line 87
    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertOrReplaceInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 89
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 92
    move-result v1

    .line 93
    const/16 v2, 0x8

    .line 95
    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    .line 97
    :catch_60
    :try_start_60
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor$1;->$SwitchMap$org$greenrobot$greendao$async$AsyncOperation$OperationType:[I

    .line 99
    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertOrReplaceInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 101
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 104
    move-result v1

    .line 105
    const/16 v2, 0x9

    .line 107
    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    .line 109
    :catch_6c
    :try_start_6c
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor$1;->$SwitchMap$org$greenrobot$greendao$async$AsyncOperation$OperationType:[I

    .line 111
    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Update:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 113
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 116
    move-result v1

    .line 117
    const/16 v2, 0xa

    .line 119
    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    .line 121
    :catch_78
    :try_start_78
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor$1;->$SwitchMap$org$greenrobot$greendao$async$AsyncOperation$OperationType:[I

    .line 123
    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->UpdateInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 125
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 128
    move-result v1

    .line 129
    const/16 v2, 0xb

    .line 131
    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    .line 133
    :catch_84
    :try_start_84
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor$1;->$SwitchMap$org$greenrobot$greendao$async$AsyncOperation$OperationType:[I

    .line 135
    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->UpdateInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 137
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 140
    move-result v1

    .line 141
    const/16 v2, 0xc

    .line 143
    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    .line 145
    :catch_90
    :try_start_90
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor$1;->$SwitchMap$org$greenrobot$greendao$async$AsyncOperation$OperationType:[I

    .line 147
    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->TransactionRunnable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 149
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 152
    move-result v1

    .line 153
    const/16 v2, 0xd

    .line 155
    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    .line 157
    :catch_9c
    :try_start_9c
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor$1;->$SwitchMap$org$greenrobot$greendao$async$AsyncOperation$OperationType:[I

    .line 159
    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->TransactionCallable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 161
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 164
    move-result v1

    .line 165
    const/16 v2, 0xe

    .line 167
    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a8

    .line 169
    :catch_a8
    :try_start_a8
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor$1;->$SwitchMap$org$greenrobot$greendao$async$AsyncOperation$OperationType:[I

    .line 171
    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->QueryList:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 173
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 176
    move-result v1

    .line 177
    const/16 v2, 0xf

    .line 179
    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    .line 181
    :catch_b4
    :try_start_b4
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor$1;->$SwitchMap$org$greenrobot$greendao$async$AsyncOperation$OperationType:[I

    .line 183
    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->QueryUnique:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 185
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 188
    move-result v1

    .line 189
    const/16 v2, 0x10

    .line 191
    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_c0

    .line 193
    :catch_c0
    :try_start_c0
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor$1;->$SwitchMap$org$greenrobot$greendao$async$AsyncOperation$OperationType:[I

    .line 195
    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->DeleteByKey:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 197
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 200
    move-result v1

    .line 201
    const/16 v2, 0x11

    .line 203
    aput v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cc} :catch_cc

    .line 205
    :catch_cc
    :try_start_cc
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor$1;->$SwitchMap$org$greenrobot$greendao$async$AsyncOperation$OperationType:[I

    .line 207
    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->DeleteAll:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 209
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 212
    move-result v1

    .line 213
    const/16 v2, 0x12

    .line 215
    aput v2, v0, v1
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_d8} :catch_d8

    .line 217
    :catch_d8
    :try_start_d8
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor$1;->$SwitchMap$org$greenrobot$greendao$async$AsyncOperation$OperationType:[I

    .line 219
    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Load:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 221
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 224
    move-result v1

    .line 225
    const/16 v2, 0x13

    .line 227
    aput v2, v0, v1
    :try_end_e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d8 .. :try_end_e4} :catch_e4

    .line 229
    :catch_e4
    :try_start_e4
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor$1;->$SwitchMap$org$greenrobot$greendao$async$AsyncOperation$OperationType:[I

    .line 231
    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->LoadAll:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 233
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 236
    move-result v1

    .line 237
    const/16 v2, 0x14

    .line 239
    aput v2, v0, v1
    :try_end_f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e4 .. :try_end_f0} :catch_f0

    .line 241
    :catch_f0
    :try_start_f0
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor$1;->$SwitchMap$org$greenrobot$greendao$async$AsyncOperation$OperationType:[I

    .line 243
    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Count:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 245
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 248
    move-result v1

    .line 249
    const/16 v2, 0x15

    .line 251
    aput v2, v0, v1
    :try_end_fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f0 .. :try_end_fc} :catch_fc

    .line 253
    :catch_fc
    :try_start_fc
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor$1;->$SwitchMap$org$greenrobot$greendao$async$AsyncOperation$OperationType:[I

    .line 255
    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Refresh:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 257
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 260
    move-result v1

    .line 261
    const/16 v2, 0x16

    .line 263
    aput v2, v0, v1
    :try_end_108
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fc .. :try_end_108} :catch_108

    .line 265
    :catch_108
    return-void
.end method
