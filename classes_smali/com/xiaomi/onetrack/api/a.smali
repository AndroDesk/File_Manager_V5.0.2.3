.class public Lcom/xiaomi/onetrack/api/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x2

.field private static final c:I = 0x4

.field private static final d:I = 0x8

.field private static final e:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/xiaomi/onetrack/Configuration;)I
    .registers 3

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/Configuration;->isGAIDEnable()Z

    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/Configuration;->isIMSIEnable()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_10

    .line 15
    or-int/lit8 v0, v0, 0x2

    .line 17
    :cond_10
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/Configuration;->isIMEIEnable()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_18

    .line 23
    or-int/lit8 v0, v0, 0x4

    .line 25
    :cond_18
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/Configuration;->isExceptionCatcherEnable()Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_20

    .line 31
    or-int/lit8 v0, v0, 0x8

    .line 33
    :cond_20
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/Configuration;->isOverrideMiuiRegionSetting()Z

    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_28

    .line 39
    or-int/lit8 v0, v0, 0x10

    .line 41
    :cond_28
    return v0
.end method
