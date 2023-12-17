.class public Lcom/xiaomi/micloudsdk/exception/SyncLocalException;
.super Ljava/lang/Exception;
.source "SyncLocalException.java"


# static fields
.field public static final CODE_ACTIVATED_FAIL:I

.field public static final CODE_ANDROID_SYNC_RESULT_HARD_ERROR:I

.field public static final CODE_ANDROID_SYNC_RESULT_SOFT_ERROR:I

.field public static final CODE_AUTH_TOKEN_ERROR:I

.field public static final CODE_CLOUD_SPACE_FULL:I

.field public static final CODE_CTA_ERROR:I

.field public static final CODE_GDPR_DENY:I

.field public static final CODE_MASTERKEY_EXPIRED:I

.field public static final CODE_MASTERKEY_NOT_EXIST:I

.field public static final CODE_PAUSE_LIMIT:I

.field public static final CODE_PERMISSION_LIMIT:I

.field public static final CODE_SECURE_SPACE_LIMIT:I

.field public static final CODE_SWITCH_OFF:I

.field public static final CODE_WLAN_ONLY_ERROR:I


# instance fields
.field private final mErrorCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92e7f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;->CODE_ACTIVATED_FAIL:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;->CODE_ANDROID_SYNC_RESULT_HARD_ERROR:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;->CODE_ANDROID_SYNC_RESULT_SOFT_ERROR:I

    const v0, 0x92df2

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;->CODE_AUTH_TOKEN_ERROR:I

    const v0, 0x92a47

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;->CODE_CLOUD_SPACE_FULL:I

    const v0, 0x92e7e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;->CODE_CTA_ERROR:I

    const v0, 0x92a46

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;->CODE_GDPR_DENY:I

    const v0, 0x9262e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;->CODE_MASTERKEY_EXPIRED:I

    const v0, 0x9262f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;->CODE_MASTERKEY_NOT_EXIST:I

    const v0, 0x92a42

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;->CODE_PAUSE_LIMIT:I

    const v0, 0x92e7c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;->CODE_PERMISSION_LIMIT:I

    const v0, 0x92e7d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;->CODE_SECURE_SPACE_LIMIT:I

    const v0, 0x92a45

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;->CODE_SWITCH_OFF:I

    const v0, 0x92a44

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;->CODE_WLAN_ONLY_ERROR:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const-string v0, "errorCode: "

    invoke-static {v0, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;->mErrorCode:I

    return v0
.end method
