.class public Lcom/xiaomi/micloudsdk/exception/SyncLocalException;
.super Ljava/lang/Exception;
.source "SyncLocalException.java"


# static fields
.field public static final CODE_ACTIVATED_FAIL:I = 0x3e9

.field public static final CODE_ANDROID_SYNC_RESULT_HARD_ERROR:I = 0x2

.field public static final CODE_ANDROID_SYNC_RESULT_SOFT_ERROR:I = 0x1

.field public static final CODE_AUTH_TOKEN_ERROR:I = 0x64

.field public static final CODE_CLOUD_SPACE_FULL:I = 0x7d1

.field public static final CODE_CTA_ERROR:I = 0x3e8

.field public static final CODE_GDPR_DENY:I = 0x7d0

.field public static final CODE_MASTERKEY_EXPIRED:I = 0xbb8

.field public static final CODE_MASTERKEY_NOT_EXIST:I = 0xbb9

.field public static final CODE_PAUSE_LIMIT:I = 0x7d4

.field public static final CODE_PERMISSION_LIMIT:I = 0x3ea

.field public static final CODE_SECURE_SPACE_LIMIT:I = 0x3eb

.field public static final CODE_SWITCH_OFF:I = 0x7d3

.field public static final CODE_WLAN_ONLY_ERROR:I = 0x7d2


# instance fields
.field private final mErrorCode:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 1
    const-string v0, "errorCode: "

    .line 3
    invoke-static {v0, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 10
    iput p1, p0, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;->mErrorCode:I

    .line 12
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;->mErrorCode:I

    .line 3
    return v0
.end method
