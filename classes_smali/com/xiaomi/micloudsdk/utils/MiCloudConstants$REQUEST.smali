.class public Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$REQUEST;
.super Ljava/lang/Object;
.source "MiCloudConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REQUEST"
.end annotation


# static fields
.field public static final CODE_IS_INTERNATIONAL_ACCOUNT:I

.field public static final CODE_NOT_INTERNATIONAL_ACCOUNT:I

.field public static final CODE_UNKOWN_ERROR:I

.field public static final X_XIAOMI_REDIRECT_COUNT:Ljava/lang/String; = "X-XIAOMI-REDIRECT-COUNT"

.field public static final X_XIAOMI_SUPPORT_REDIRECT:Ljava/lang/String; = "X-XIAOMI-SUPPORT-REDIRECT"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$REQUEST;->CODE_IS_INTERNATIONAL_ACCOUNT:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$REQUEST;->CODE_NOT_INTERNATIONAL_ACCOUNT:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$REQUEST;->CODE_UNKOWN_ERROR:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
