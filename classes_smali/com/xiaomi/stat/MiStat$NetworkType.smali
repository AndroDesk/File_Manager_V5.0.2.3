.class public final Lcom/xiaomi/stat/MiStat$NetworkType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/stat/MiStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NetworkType"
.end annotation


# static fields
.field public static final TYPE_2G:I

.field public static final TYPE_3G:I

.field public static final TYPE_4G:I

.field public static final TYPE_ALL:I

.field public static final TYPE_ETHERNET:I

.field public static final TYPE_NONE:I

.field public static final TYPE_WIFI:I


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/MiStat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/MiStat$NetworkType;->TYPE_2G:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/MiStat$NetworkType;->TYPE_3G:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/MiStat$NetworkType;->TYPE_4G:I

    const v0, 0x92d89

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/MiStat$NetworkType;->TYPE_ALL:I

    const v0, 0x92d86

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/MiStat$NetworkType;->TYPE_ETHERNET:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/MiStat$NetworkType;->TYPE_NONE:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/MiStat$NetworkType;->TYPE_WIFI:I

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/stat/MiStat;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/stat/MiStat$NetworkType;->a:Lcom/xiaomi/stat/MiStat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
