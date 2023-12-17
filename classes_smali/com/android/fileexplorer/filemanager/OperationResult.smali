.class public Lcom/android/fileexplorer/filemanager/OperationResult;
.super Ljava/lang/Object;
.source "OperationResult.java"


# static fields
.field public static final RESULT_ERROR_ALL:I

.field public static final RESULT_ERROR_ALREADY_EXIST:I

.field public static final RESULT_ERROR_CANCELED:I

.field public static final RESULT_ERROR_CONTAINS_SPECIAL_CHAR:I

.field public static final RESULT_ERROR_CREATE_DIR_FAILED:I

.field public static final RESULT_ERROR_CREATE_FILE_FAILED:I

.field public static final RESULT_ERROR_DELETE_FILE_FAILED:I

.field public static final RESULT_ERROR_DEST_FOLDER_IS_ITSELF_OR_SUB:I

.field public static final RESULT_ERROR_EMPTY_LIST:I

.field public static final RESULT_ERROR_INVALID_FORMAT:I

.field public static final RESULT_ERROR_INVALID_PASSWORD:I

.field public static final RESULT_ERROR_INVALID_PATH:I

.field public static final RESULT_ERROR_IS_DIR:I

.field public static final RESULT_ERROR_MI_DRIVE_UNAVAILABLE:I

.field public static final RESULT_ERROR_NEED_NETWORK:I

.field public static final RESULT_ERROR_NOT_ENOUGH_SPACE:I

.field public static final RESULT_ERROR_NOT_EXIST:I

.field public static final RESULT_ERROR_NOT_LOGGED_IN:I

.field public static final RESULT_ERROR_NOT_SUPPORT:I

.field public static final RESULT_ERROR_PARTIAL:I

.field public static final RESULT_ERROR_RENAME_FAILED:I

.field public static final RESULT_ERROR_SHARER_FOLDER:I

.field public static final RESULT_ERROR_UNKNOWN:I

.field public static final RESULT_FILE_NAME_IS_PRIVATE_SPACE_NAME:I

.field public static final RESULT_REQUEST_PERMISSION:I

.field public static final RESULT_SUCCESS:I

.field public static final RESULT_SUCCESS_SKIPPED:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d82

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/OperationResult;->RESULT_ERROR_ALL:I

    const v0, 0x92d98

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/OperationResult;->RESULT_ERROR_ALREADY_EXIST:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/OperationResult;->RESULT_ERROR_CANCELED:I

    const v0, 0x92d8c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/OperationResult;->RESULT_ERROR_CONTAINS_SPECIAL_CHAR:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/OperationResult;->RESULT_ERROR_CREATE_DIR_FAILED:I

    const v0, 0x92d9f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/OperationResult;->RESULT_ERROR_CREATE_FILE_FAILED:I

    const v0, 0x92d9c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/OperationResult;->RESULT_ERROR_DELETE_FILE_FAILED:I

    const v0, 0x92d80

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/OperationResult;->RESULT_ERROR_DEST_FOLDER_IS_ITSELF_OR_SUB:I

    const v0, 0x92d86

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/OperationResult;->RESULT_ERROR_EMPTY_LIST:I

    const v0, 0x92d9a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/OperationResult;->RESULT_ERROR_INVALID_FORMAT:I

    const v0, 0x92d9b

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/OperationResult;->RESULT_ERROR_INVALID_PASSWORD:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/OperationResult;->RESULT_ERROR_INVALID_PATH:I

    const v0, 0x92d91

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/OperationResult;->RESULT_ERROR_IS_DIR:I

    const v0, 0x92d8e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/OperationResult;->RESULT_ERROR_MI_DRIVE_UNAVAILABLE:I

    const v0, 0x92d81

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/OperationResult;->RESULT_ERROR_NEED_NETWORK:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/OperationResult;->RESULT_ERROR_NOT_ENOUGH_SPACE:I

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/OperationResult;->RESULT_ERROR_NOT_EXIST:I

    const v0, 0x92d84

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/OperationResult;->RESULT_ERROR_NOT_LOGGED_IN:I

    const v0, 0x92d99

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/OperationResult;->RESULT_ERROR_NOT_SUPPORT:I

    const v0, 0x92d85

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/OperationResult;->RESULT_ERROR_PARTIAL:I

    const v0, 0x92d9d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/OperationResult;->RESULT_ERROR_RENAME_FAILED:I

    const v0, 0x92d83

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/OperationResult;->RESULT_ERROR_SHARER_FOLDER:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/OperationResult;->RESULT_ERROR_UNKNOWN:I

    const v0, 0x92d8f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/OperationResult;->RESULT_FILE_NAME_IS_PRIVATE_SPACE_NAME:I

    const v0, 0x92d87

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/OperationResult;->RESULT_REQUEST_PERMISSION:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/OperationResult;->RESULT_SUCCESS:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/OperationResult;->RESULT_SUCCESS_SKIPPED:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
