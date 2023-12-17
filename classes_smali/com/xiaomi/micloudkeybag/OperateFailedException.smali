.class public Lcom/xiaomi/micloudkeybag/OperateFailedException;
.super Ljava/lang/Exception;
.source "OperateFailedException.java"


# static fields
.field public static final ERROR_CHECK_SUPPORT_FAILED:I

.field public static final ERROR_DATA_CORRUPT:I

.field public static final ERROR_KEY_VERSION_HIGH:I

.field public static final ERROR_KEY_VERSION_LOW:I

.field public static final ERROR_NO_MASTERKEY:I

.field public static final ERROR_UNKNOWN:I


# instance fields
.field public final errorCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, -0x92fc2

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudkeybag/OperateFailedException;->ERROR_CHECK_SUPPORT_FAILED:I

    const v0, -0x92c66

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudkeybag/OperateFailedException;->ERROR_DATA_CORRUPT:I

    const v0, -0x92c1a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudkeybag/OperateFailedException;->ERROR_KEY_VERSION_HIGH:I

    const v0, -0x92cbe

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudkeybag/OperateFailedException;->ERROR_KEY_VERSION_LOW:I

    const v0, -0x92d52

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudkeybag/OperateFailedException;->ERROR_NO_MASTERKEY:I

    const v0, -0x92df6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudkeybag/OperateFailedException;->ERROR_UNKNOWN:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/xiaomi/micloudkeybag/OperateFailedException;->errorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/xiaomi/micloudkeybag/OperateFailedException;->errorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iput p1, p0, Lcom/xiaomi/micloudkeybag/OperateFailedException;->errorCode:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "OperateFailedException, errorCode: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/micloudkeybag/OperateFailedException;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
