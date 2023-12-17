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

    new-instance v0, Lcn/kuaipan/android/kss/TransferStep;

    const-string v1, "DOWNLOAD_REQUEST_BIZ_HTTP"

    const/4 v2, 0x0

    const-string v3, "download_request_biz_http"

    invoke-direct {v0, v1, v2, v3}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    new-instance v1, Lcn/kuaipan/android/kss/TransferStep;

    const-string v3, "DOWNLOAD_PREPARE"

    const/4 v4, 0x1

    const-string v5, "download_prepare"

    invoke-direct {v1, v3, v4, v5}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_PREPARE:Lcn/kuaipan/android/kss/TransferStep;

    new-instance v3, Lcn/kuaipan/android/kss/TransferStep;

    const-string v5, "DOWNLOAD_PREPARE_DECODE_KEY"

    const/4 v6, 0x2

    const-string v7, "download_prepare_decode_key"

    invoke-direct {v3, v5, v6, v7}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_PREPARE_DECODE_KEY:Lcn/kuaipan/android/kss/TransferStep;

    new-instance v5, Lcn/kuaipan/android/kss/TransferStep;

    const-string v7, "DOWNLOAD_REQUEST_XMS_HTTP"

    const/4 v8, 0x3

    const-string v9, "download_request_XMS_http"

    invoke-direct {v5, v7, v8, v9}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_REQUEST_XMS_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    new-instance v7, Lcn/kuaipan/android/kss/TransferStep;

    const-string v9, "DOWNLOAD_GET_CONTENT"

    const/4 v10, 0x4

    const-string v11, "download_get_content"

    invoke-direct {v7, v9, v10, v11}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_GET_CONTENT:Lcn/kuaipan/android/kss/TransferStep;

    new-instance v9, Lcn/kuaipan/android/kss/TransferStep;

    const-string v11, "DOWNLOAD_READ_STREAM"

    const/4 v12, 0x5

    const-string v13, "download_read_stream"

    invoke-direct {v9, v11, v12, v13}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_READ_STREAM:Lcn/kuaipan/android/kss/TransferStep;

    new-instance v11, Lcn/kuaipan/android/kss/TransferStep;

    const-string v13, "DOWNLOAD_WRITE_FILE"

    const/4 v14, 0x6

    const-string v15, "download_write_file"

    invoke-direct {v11, v13, v14, v15}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_WRITE_FILE:Lcn/kuaipan/android/kss/TransferStep;

    new-instance v13, Lcn/kuaipan/android/kss/TransferStep;

    const-string v15, "DOWNLOAD_VERIFY_FILE"

    const/4 v14, 0x7

    const-string v12, "download_verify_file"

    invoke-direct {v13, v15, v14, v12}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_VERIFY_FILE:Lcn/kuaipan/android/kss/TransferStep;

    new-instance v12, Lcn/kuaipan/android/kss/TransferStep;

    const-string v15, "UPLOAD_REQUEST_BIZ_HTTP"

    const/16 v14, 0x8

    const-string v10, "upload_request_biz_http"

    invoke-direct {v12, v15, v14, v10}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    new-instance v10, Lcn/kuaipan/android/kss/TransferStep;

    const-string v15, "UPLOAD_GET_FILE_INFO"

    const/16 v14, 0x9

    const-string v8, "upload_get_file_info"

    invoke-direct {v10, v15, v14, v8}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_GET_FILE_INFO:Lcn/kuaipan/android/kss/TransferStep;

    new-instance v8, Lcn/kuaipan/android/kss/TransferStep;

    const-string v15, "UPLOAD_PREPARE"

    const/16 v14, 0xa

    const-string v6, "upload_prepare"

    invoke-direct {v8, v15, v14, v6}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_PREPARE:Lcn/kuaipan/android/kss/TransferStep;

    new-instance v6, Lcn/kuaipan/android/kss/TransferStep;

    const-string v15, "UPLOAD_PREPARE_ENCODE_KEY"

    const/16 v14, 0xb

    const-string v4, "upload_prepare_encode_key"

    invoke-direct {v6, v15, v14, v4}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_PREPARE_ENCODE_KEY:Lcn/kuaipan/android/kss/TransferStep;

    new-instance v4, Lcn/kuaipan/android/kss/TransferStep;

    const-string v15, "UPLOAD_PREPARE_STREAM"

    const/16 v14, 0xc

    const-string v2, "upload_prepare_stream"

    invoke-direct {v4, v15, v14, v2}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_PREPARE_STREAM:Lcn/kuaipan/android/kss/TransferStep;

    new-instance v2, Lcn/kuaipan/android/kss/TransferStep;

    const-string v15, "UPLOAD_REQUEST_XMS_HTTP"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "upload_request_XMS_http"

    invoke-direct {v2, v15, v14, v4}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_XMS_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    new-instance v4, Lcn/kuaipan/android/kss/TransferStep;

    const-string v15, "UPLOAD_REQUEST_COMMIT"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "upload_request_commit"

    invoke-direct {v4, v15, v14, v2}, Lcn/kuaipan/android/kss/TransferStep;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_COMMIT:Lcn/kuaipan/android/kss/TransferStep;

    const/16 v2, 0xf

    new-array v2, v2, [Lcn/kuaipan/android/kss/TransferStep;

    const/4 v15, 0x0

    aput-object v0, v2, v15

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v14

    sput-object v2, Lcn/kuaipan/android/kss/TransferStep;->a:[Lcn/kuaipan/android/kss/TransferStep;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcn/kuaipan/android/kss/TransferStep;->label:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuaipan/android/kss/TransferStep;
    .registers 2

    const-class v0, Lcn/kuaipan/android/kss/TransferStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/kuaipan/android/kss/TransferStep;

    return-object p0
.end method

.method public static values()[Lcn/kuaipan/android/kss/TransferStep;
    .registers 1

    sget-object v0, Lcn/kuaipan/android/kss/TransferStep;->a:[Lcn/kuaipan/android/kss/TransferStep;

    invoke-virtual {v0}, [Lcn/kuaipan/android/kss/TransferStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuaipan/android/kss/TransferStep;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "TransferStep{label=\'"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuaipan/android/kss/TransferStep;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
