.class public Lcom/xiaomi/keychainsdk/compat/KeyPropertiesCompat;
.super Ljava/lang/Object;
.source "KeyPropertiesCompat.java"


# static fields
.field public static final PURPOSE_DECRYPT:I

.field public static final PURPOSE_ENCRYPT:I

.field public static final PURPOSE_SIGN:I

.field public static final PURPOSE_VERIFY:I

.field public static final PURPOSE_WRAP_KEY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/keychainsdk/compat/KeyPropertiesCompat;->PURPOSE_DECRYPT:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/keychainsdk/compat/KeyPropertiesCompat;->PURPOSE_ENCRYPT:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/keychainsdk/compat/KeyPropertiesCompat;->PURPOSE_SIGN:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/keychainsdk/compat/KeyPropertiesCompat;->PURPOSE_VERIFY:I

    const v0, 0x92db6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/keychainsdk/compat/KeyPropertiesCompat;->PURPOSE_WRAP_KEY:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
