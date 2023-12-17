.class public Lmiuix/internal/util/LiteUtils;
.super Ljava/lang/Object;
.source "LiteUtils.java"


# static fields
.field private static mIsCommonLiteStrategy:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCommonLiteStrategy()Z
    .registers 1

    .line 1
    sget-object v0, Lmiuix/internal/util/LiteUtils;->mIsCommonLiteStrategy:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_20

    .line 5
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_19

    .line 11
    invoke-static {}, Lmiuix/device/DeviceUtils;->isLiteV1StockPlus()Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_19

    .line 17
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiMiddle()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_17

    .line 23
    goto :goto_19

    .line 24
    :cond_17
    const/4 v0, 0x0

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 27
    :goto_1a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lmiuix/internal/util/LiteUtils;->mIsCommonLiteStrategy:Ljava/lang/Boolean;

    .line 33
    :cond_20
    sget-object v0, Lmiuix/internal/util/LiteUtils;->mIsCommonLiteStrategy:Ljava/lang/Boolean;

    .line 35
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    move-result v0

    .line 39
    return v0
.end method
