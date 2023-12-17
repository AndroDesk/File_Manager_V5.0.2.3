.class public final enum Lcn/kuaipan/android/kss/TransferStep;
.super Ljava/lang/Enum;
.source "TransferStep.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/kuaipan/android/kss/TransferStep;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DOWNLOAD_GET_CONTENT:Lcn/kuaipan/android/kss/TransferStep;

.field public static final enum DOWNLOAD_PREPARE:Lcn/kuaipan/android/kss/TransferStep;

.field public static final enum DOWNLOAD_PREPARE_DECODE_KEY:Lcn/kuaipan/android/kss/TransferStep;

.field public static final enum DOWNLOAD_READ_STREAM:Lcn/kuaipan/android/kss/TransferStep;

.field public static final enum DOWNLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

.field public static final enum DOWNLOAD_REQUEST_XMS_HTTP:Lcn/kuaipan/android/kss/TransferStep;

.field public static final enum DOWNLOAD_VERIFY_FILE:Lcn/kuaipan/android/kss/TransferStep;

.field public static final enum DOWNLOAD_WRITE_FILE:Lcn/kuaipan/android/kss/TransferStep;

.field public static final enum UPLOAD_GET_FILE_INFO:Lcn/kuaipan/android/kss/TransferStep;

.field public static final enum UPLOAD_PREPARE:Lcn/kuaipan/android/kss/TransferStep;

.field public static final enum UPLOAD_PREPARE_ENCODE_KEY:Lcn/kuaipan/android/kss/TransferStep;

.field public static final enum UPLOAD_PREPARE_STREAM:Lcn/kuaipan/android/kss/TransferStep;

.field public static final enum UPLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

.field public static final enum UPLOAD_REQUEST_COMMIT:Lcn/kuaipan/android/kss/TransferStep;

.field public static final enum UPLOAD_REQUEST_XMS_HTTP:Lcn/kuaipan/android/kss/TransferStep;

.field public static final synthetic a:[Lcn/kuaipan/android/kss/TransferStep;


# instance fields
.field private label:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 18

    .line 1
    new-instance v0, Lcn/kuaipan/android/kss/TransferStep;

    .line 3
    const-string v1, "DOWNLOAD_REQUEST_BIZ_HTTP"

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "download_request_biz_http"

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    sput-object v0, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    .line 13
    new-instance v1, Lcn/kuaipan/android/kss/TransferStep;

    .line 15
    const-string v3, "DOWNLOAD_PREPARE"

    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "download_prepare"

    .line 20
    invoke-direct {v1, v3, v4, v5}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    sput-object v1, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_PREPARE:Lcn/kuaipan/android/kss/TransferStep;

    .line 25
    new-instance v3, Lcn/kuaipan/android/kss/TransferStep;

    .line 27
    const-string v5, "DOWNLOAD_PREPARE_DECODE_KEY"

    .line 29
    const/4 v6, 0x2

    .line 30
    const-string v7, "download_prepare_decode_key"

    .line 32
    invoke-direct {v3, v5, v6, v7}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    sput-object v3, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_PREPARE_DECODE_KEY:Lcn/kuaipan/android/kss/TransferStep;

    .line 37
    new-instance v5, Lcn/kuaipan/android/kss/TransferStep;

    .line 39
    const-string v7, "DOWNLOAD_REQUEST_XMS_HTTP"

    .line 41
    const/4 v8, 0x3

    .line 42
    const-string v9, "download_request_XMS_http"

    .line 44
    invoke-direct {v5, v7, v8, v9}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    sput-object v5, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_REQUEST_XMS_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    .line 49
    new-instance v7, Lcn/kuaipan/android/kss/TransferStep;

    .line 51
    const-string v9, "DOWNLOAD_GET_CONTENT"

    .line 53
    const/4 v10, 0x4

    .line 54
    const-string v11, "download_get_content"

    .line 56
    invoke-direct {v7, v9, v10, v11}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    sput-object v7, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_GET_CONTENT:Lcn/kuaipan/android/kss/TransferStep;

    .line 61
    new-instance v9, Lcn/kuaipan/android/kss/TransferStep;

    .line 63
    const-string v11, "DOWNLOAD_READ_STREAM"

    .line 65
    const/4 v12, 0x5

    .line 66
    const-string v13, "download_read_stream"

    .line 68
    invoke-direct {v9, v11, v12, v13}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 71
    sput-object v9, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_READ_STREAM:Lcn/kuaipan/android/kss/TransferStep;

    .line 73
    new-instance v11, Lcn/kuaipan/android/kss/TransferStep;

    .line 75
    const-string v13, "DOWNLOAD_WRITE_FILE"

    .line 77
    const/4 v14, 0x6

    .line 78
    const-string v15, "download_write_file"

    .line 80
    invoke-direct {v11, v13, v14, v15}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 83
    sput-object v11, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_WRITE_FILE:Lcn/kuaipan/android/kss/TransferStep;

    .line 85
    new-instance v13, Lcn/kuaipan/android/kss/TransferStep;

    .line 87
    const-string v15, "DOWNLOAD_VERIFY_FILE"

    .line 89
    const/4 v14, 0x7

    .line 90
    const-string v12, "download_verify_file"

    .line 92
    invoke-direct {v13, v15, v14, v12}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 95
    sput-object v13, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_VERIFY_FILE:Lcn/kuaipan/android/kss/TransferStep;

    .line 97
    new-instance v12, Lcn/kuaipan/android/kss/TransferStep;

    .line 99
    const-string v15, "UPLOAD_REQUEST_BIZ_HTTP"

    .line 101
    const/16 v14, 0x8

    .line 103
    const-string v10, "upload_request_biz_http"

    .line 105
    invoke-direct {v12, v15, v14, v10}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 108
    sput-object v12, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    .line 110
    new-instance v10, Lcn/kuaipan/android/kss/TransferStep;

    .line 112
    const-string v15, "UPLOAD_GET_FILE_INFO"

    .line 114
    const/16 v14, 0x9

    .line 116
    const-string v8, "upload_get_file_info"

    .line 118
    invoke-direct {v10, v15, v14, v8}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 121
    sput-object v10, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_GET_FILE_INFO:Lcn/kuaipan/android/kss/TransferStep;

    .line 123
    new-instance v8, Lcn/kuaipan/android/kss/TransferStep;

    .line 125
    const-string v15, "UPLOAD_PREPARE"

    .line 127
    const/16 v14, 0xa

    .line 129
    const-string v6, "upload_prepare"

    .line 131
    invoke-direct {v8, v15, v14, v6}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 134
    sput-object v8, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_PREPARE:Lcn/kuaipan/android/kss/TransferStep;

    .line 136
    new-instance v6, Lcn/kuaipan/android/kss/TransferStep;

    .line 138
    const-string v15, "UPLOAD_PREPARE_ENCODE_KEY"

    .line 140
    const/16 v14, 0xb

    .line 142
    const-string v4, "upload_prepare_encode_key"

    .line 144
    invoke-direct {v6, v15, v14, v4}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 147
    sput-object v6, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_PREPARE_ENCODE_KEY:Lcn/kuaipan/android/kss/TransferStep;

    .line 149
    new-instance v4, Lcn/kuaipan/android/kss/TransferStep;

    .line 151
    const-string v15, "UPLOAD_PREPARE_STREAM"

    .line 153
    const/16 v14, 0xc

    .line 155
    const-string v2, "upload_prepare_stream"

    .line 157
    invoke-direct {v4, v15, v14, v2}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 160
    sput-object v4, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_PREPARE_STREAM:Lcn/kuaipan/android/kss/TransferStep;

    .line 162
    new-instance v2, Lcn/kuaipan/android/kss/TransferStep;

    .line 164
    const-string v15, "UPLOAD_REQUEST_XMS_HTTP"

    .line 166
    const/16 v14, 0xd

    .line 168
    move-object/from16 v16, v4

    .line 170
    const-string v4, "upload_request_XMS_http"

    .line 172
    invoke-direct {v2, v15, v14, v4}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 175
    sput-object v2, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_XMS_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    .line 177
    new-instance v4, Lcn/kuaipan/android/kss/TransferStep;

    .line 179
    const-string v15, "UPLOAD_REQUEST_COMMIT"

    .line 181
    const/16 v14, 0xe

    .line 183
    move-object/from16 v17, v2

    .line 185
    const-string v2, "upload_request_commit"

    .line 187
    invoke-direct {v4, v15, v14, v2}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 190
    sput-object v4, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_COMMIT:Lcn/kuaipan/android/kss/TransferStep;

    .line 192
    const/16 v2, 0xf

    .line 194
    new-array v2, v2, [Lcn/kuaipan/android/kss/TransferStep;

    .line 196
    const/4 v15, 0x0

    .line 197
    aput-object v0, v2, v15

    .line 199
    const/4 v0, 0x1

    .line 200
    aput-object v1, v2, v0

    .line 202
    const/4 v0, 0x2

    .line 203
    aput-object v3, v2, v0

    .line 205
    const/4 v0, 0x3

    .line 206
    aput-object v5, v2, v0

    .line 208
    const/4 v0, 0x4

    .line 209
    aput-object v7, v2, v0

    .line 211
    const/4 v0, 0x5

    .line 212
    aput-object v9, v2, v0

    .line 214
    const/4 v0, 0x6

    .line 215
    aput-object v11, v2, v0

    .line 217
    const/4 v0, 0x7

    .line 218
    aput-object v13, v2, v0

    .line 220
    const/16 v0, 0x8

    .line 222
    aput-object v12, v2, v0

    .line 224
    const/16 v0, 0x9

    .line 226
    aput-object v10, v2, v0

    .line 228
    const/16 v0, 0xa

    .line 230
    aput-object v8, v2, v0

    .line 232
    const/16 v0, 0xb

    .line 234
    aput-object v6, v2, v0

    .line 236
    const/16 v0, 0xc

    .line 238
    aput-object v16, v2, v0

    .line 240
    const/16 v0, 0xd

    .line 242
    aput-object v17, v2, v0

    .line 244
    aput-object v4, v2, v14

    .line 246
    sput-object v2, Lcn/kuaipan/android/kss/TransferStep;->a:[Lcn/kuaipan/android/kss/TransferStep;

    .line 248
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lcn/kuaipan/android/kss/TransferStep;->label:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuaipan/android/kss/TransferStep;
    .registers 2

    .line 1
    const-class v0, Lcn/kuaipan/android/kss/TransferStep;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcn/kuaipan/android/kss/TransferStep;

    .line 9
    return-object p0
.end method

.method public static values()[Lcn/kuaipan/android/kss/TransferStep;
    .registers 1

    .line 1
    sget-object v0, Lcn/kuaipan/android/kss/TransferStep;->a:[Lcn/kuaipan/android/kss/TransferStep;

    .line 3
    invoke-virtual {v0}, [Lcn/kuaipan/android/kss/TransferStep;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcn/kuaipan/android/kss/TransferStep;

    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "TransferStep{label=\'"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcn/kuaipan/android/kss/TransferStep;->label:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const/16 v1, 0x27

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    const/16 v1, 0x7d

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
