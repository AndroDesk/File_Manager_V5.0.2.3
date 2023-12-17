.class public Lcom/cleanmaster/sdk/CMCleanConst;
.super Ljava/lang/Object;
.source "CMCleanConst.java"


# static fields
.field public static final ACTION_CLEAN_SERVICE:Ljava/lang/String; = "com.cleanmaster.action.sdk.CleanService"

.field public static final MASK_SCAN_ADVANCED:I

.field public static final MASK_SCAN_COMMON:I

.field public static final UPDATE_ERROR_CODE_ALREADY_RUNNING:I

.field public static final UPDATE_ERROR_CODE_NETWORK_ERROR:I

.field public static final UPDATE_ERROR_CODE_NO_NEWER_DB:I

.field public static final UPDATE_ERROR_CODE_SUCCESS:I

.field public static final UPDATE_ERROR_CODE_UNKNOWN_ERROR:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/CMCleanConst;->MASK_SCAN_ADVANCED:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/CMCleanConst;->MASK_SCAN_COMMON:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/CMCleanConst;->UPDATE_ERROR_CODE_ALREADY_RUNNING:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/CMCleanConst;->UPDATE_ERROR_CODE_NETWORK_ERROR:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/CMCleanConst;->UPDATE_ERROR_CODE_NO_NEWER_DB:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/CMCleanConst;->UPDATE_ERROR_CODE_SUCCESS:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/CMCleanConst;->UPDATE_ERROR_CODE_UNKNOWN_ERROR:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
