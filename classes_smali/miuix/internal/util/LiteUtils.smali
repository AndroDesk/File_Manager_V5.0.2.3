.class public Lmiuix/internal/util/LiteUtils;
.super Ljava/lang/Object;
.source "LiteUtils.java"


# static fields
.field private static mIsCommonLiteStrategy:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCommonLiteStrategy()Z
    .registers 1

    sget-object v0, Lmiuix/internal/util/LiteUtils;->mIsCommonLiteStrategy:Ljava/lang/Boolean;

    if-nez v0, :cond_20

    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {}, Lmiuix/device/DeviceUtils;->isLiteV1StockPlus()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiMiddle()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmiuix/internal/util/LiteUtils;->mIsCommonLiteStrategy:Ljava/lang/Boolean;

    :cond_20
    sget-object v0, Lmiuix/internal/util/LiteUtils;->mIsCommonLiteStrategy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
