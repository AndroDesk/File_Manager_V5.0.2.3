.class public Lcom/android/fileexplorer/model/GlobalConsts;
.super Ljava/lang/Object;
.source "GlobalConsts.java"


# static fields
.field public static final INTENT_EXTRA_TAB:Ljava/lang/String; = "TAB"

.field public static final REQUEST_CODE_ASK_PERMISSIONS:I

.field public static final REQUEST_CODE_OPEN_EXTERNAL_DOCUMENT_PERMISSION:I

.field public static final REQUEST_CODE_SET_PASSWORD:I

.field public static final REQUEST_CODE_SET_PASSWORD_NEW:I

.field public static final REQUEST_CODE_START_NECESSARY_PERMISSION_DECLARE:I

.field public static final REQUEST_CODE_UNLOCK:I

.field public static final REQUEST_CODE_UNLOCK_NEW:I

.field public static final REQUEST_ENCRYPT:I

.field public static final REQUEST_PICK_FILES:I

.field public static final REQUEST_PICK_FOLDER:I

.field public static final REQUEST_RESET_PASSWORD:I

.field public static final REQUEST_VIEW_LARGE:I

.field public static final ROOT_PATH:Ljava/lang/String; = "/"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92de4

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/model/GlobalConsts;->REQUEST_CODE_ASK_PERMISSIONS:I

    const v0, 0x92de9

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/model/GlobalConsts;->REQUEST_CODE_OPEN_EXTERNAL_DOCUMENT_PERMISSION:I

    const v0, 0x92dfe

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/model/GlobalConsts;->REQUEST_CODE_SET_PASSWORD:I

    const v0, 0x92dfd

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/model/GlobalConsts;->REQUEST_CODE_SET_PASSWORD_NEW:I

    const v0, 0x92d16

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/model/GlobalConsts;->REQUEST_CODE_START_NECESSARY_PERMISSION_DECLARE:I

    const v0, 0x92dff

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/model/GlobalConsts;->REQUEST_CODE_UNLOCK:I

    const v0, 0x92dfa

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/model/GlobalConsts;->REQUEST_CODE_UNLOCK_NEW:I

    const v0, 0x92dfc

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/model/GlobalConsts;->REQUEST_ENCRYPT:I

    const v0, 0x92de6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/model/GlobalConsts;->REQUEST_PICK_FILES:I

    const v0, 0x92de7

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/model/GlobalConsts;->REQUEST_PICK_FOLDER:I

    const v0, 0x92dee

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/model/GlobalConsts;->REQUEST_RESET_PASSWORD:I

    const v0, 0x92de3

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/model/GlobalConsts;->REQUEST_VIEW_LARGE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
