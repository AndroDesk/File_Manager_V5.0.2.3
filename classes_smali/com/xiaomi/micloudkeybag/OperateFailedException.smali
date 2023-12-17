.class public Lcom/xiaomi/micloudkeybag/OperateFailedException;
.super Ljava/lang/Exception;
.source "OperateFailedException.java"


# static fields
.field public static final ERROR_CHECK_SUPPORT_FAILED:I = -0x258

.field public static final ERROR_DATA_CORRUPT:I = -0x1f4

.field public static final ERROR_KEY_VERSION_HIGH:I = -0x190

.field public static final ERROR_KEY_VERSION_LOW:I = -0x12c

.field public static final ERROR_NO_MASTERKEY:I = -0xc8

.field public static final ERROR_UNKNOWN:I = -0x64


# instance fields
.field public final errorCode:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    iput p1, p0, Lcom/xiaomi/micloudkeybag/OperateFailedException;->errorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 3
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 4
    iput p1, p0, Lcom/xiaomi/micloudkeybag/OperateFailedException;->errorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 3

    .line 5
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 6
    iput p1, p0, Lcom/xiaomi/micloudkeybag/OperateFailedException;->errorCode:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "OperateFailedException, errorCode: "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/xiaomi/micloudkeybag/OperateFailedException;->errorCode:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method
