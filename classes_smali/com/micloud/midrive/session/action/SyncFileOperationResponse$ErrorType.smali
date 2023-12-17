.class public final enum Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;
.super Ljava/lang/Enum;
.source "SyncFileOperationResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum COPY_STORAGE_FULL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum DB_NOT_CHANGE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum DELETE_FILE_NULL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum DISK_FULL_AFTER_DOWNLOAD:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum ERROR_SUB_PATH_MOVE_COPY:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum FILE_DOWNLOADING:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum FILE_EXISTS:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum FILE_MOVE_COPY_EXIST:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum FILE_NAME_IS_PRIVATE_SPACE_NAME:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum FILE_NOT_FOUND:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum FILE_NO_EXIST:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum FIRST_DOWNLOAD_FAIL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum FIRST_UPLOAD_FAIL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum MI_DRIVE_UNAVAILABLE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum NAME_CONFLICT:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum NAME_ILLEGAL_CHAR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum NETWORK_ERR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum NOT_SUPPORT_MODIFY_FOR_OVERSEAS_USERS:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum OPERATION_BATCH_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum OPERATION_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum OPERATION_NOT_RESPONSE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum OPERATION_NOT_SUPPORT:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum PARAM_ERROR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum PARENT_FILE_NO_EXIST:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum UPLOAD_CHANGE_FREE_NETWORK_FAIL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;


# direct methods
.method public static constructor <clinit>()V
    .registers 27

    new-instance v0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const-string v1, "OPERATION_NOT_SUPPORT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_NOT_SUPPORT:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    new-instance v1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const-string v3, "OPERATION_FAILED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    new-instance v3, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const-string v5, "OPERATION_BATCH_FAILED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_BATCH_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    new-instance v5, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const-string v7, "NETWORK_ERR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NETWORK_ERR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    new-instance v7, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const-string v9, "FILE_NOT_FOUND"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_NOT_FOUND:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    new-instance v9, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const-string v11, "FILE_EXISTS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_EXISTS:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    new-instance v11, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const-string v13, "FILE_DOWNLOADING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_DOWNLOADING:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    new-instance v13, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const-string v15, "NAME_ILLEGAL_CHAR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NAME_ILLEGAL_CHAR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    new-instance v15, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const-string v14, "NAME_CONFLICT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NAME_CONFLICT:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    new-instance v14, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const-string v12, "PARAM_ERROR"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->PARAM_ERROR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    new-instance v12, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const-string v10, "FILE_NO_EXIST"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_NO_EXIST:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    new-instance v10, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const-string v8, "NOT_SUPPORT_MODIFY_FOR_OVERSEAS_USERS"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NOT_SUPPORT_MODIFY_FOR_OVERSEAS_USERS:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    new-instance v8, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const-string v6, "DELETE_FILE_NULL"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->DELETE_FILE_NULL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    new-instance v6, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const-string v4, "COPY_STORAGE_FULL"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->COPY_STORAGE_FULL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    new-instance v4, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const-string v2, "PARENT_FILE_NO_EXIST"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->PARENT_FILE_NO_EXIST:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    new-instance v2, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const-string v6, "FILE_MOVE_COPY_EXIST"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_MOVE_COPY_EXIST:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    new-instance v6, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const-string v4, "ERROR_SUB_PATH_MOVE_COPY"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->ERROR_SUB_PATH_MOVE_COPY:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    new-instance v4, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const-string v2, "MI_DRIVE_UNAVAILABLE"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->MI_DRIVE_UNAVAILABLE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    new-instance v2, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const-string v6, "FILE_NAME_IS_PRIVATE_SPACE_NAME"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_NAME_IS_PRIVATE_SPACE_NAME:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    new-instance v6, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const-string v4, "DISK_FULL_AFTER_DOWNLOAD"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->DISK_FULL_AFTER_DOWNLOAD:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    new-instance v4, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const-string v2, "FIRST_DOWNLOAD_FAIL"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FIRST_DOWNLOAD_FAIL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    new-instance v2, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const-string v6, "UPLOAD_CHANGE_FREE_NETWORK_FAIL"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->UPLOAD_CHANGE_FREE_NETWORK_FAIL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    new-instance v6, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const-string v4, "DB_NOT_CHANGE"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->DB_NOT_CHANGE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    new-instance v2, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const-string v4, "FIRST_UPLOAD_FAIL"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FIRST_UPLOAD_FAIL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    new-instance v4, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const-string v6, "OPERATION_NOT_RESPONSE"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_NOT_RESPONSE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const/16 v2, 0x19

    new-array v2, v2, [Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const/4 v6, 0x0

    aput-object v0, v2, v6

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

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v25, v2, v0

    const/16 v0, 0x17

    aput-object v26, v2, v0

    const/16 v0, 0x18

    aput-object v4, v2, v0

    sput-object v2, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->$VALUES:[Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;
    .registers 2

    const-class v0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    return-object p0
.end method

.method public static values()[Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;
    .registers 1

    sget-object v0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->$VALUES:[Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v0}, [Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    return-object v0
.end method
