.class public Lcom/miui/privacypolicy/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ERROR_CALLED_FREQUENT:I

.field public static final ERROR_INTERNATIONAL_REGION:I

.field public static final ERROR_NO_NETWORK:I

.field public static final ERROR_PARESE_SERVICE_DATA:I

.field public static final ERROR_SERVICE_NOT_RESPONSE:I

.field public static final SUCCESS:I

.field public static final SUCCESS_REPEAT_AGREE:I

.field public static final SUCCESS_RE_QUERY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, -0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/miui/privacypolicy/Constants;->ERROR_CALLED_FREQUENT:I

    const v0, -0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/miui/privacypolicy/Constants;->ERROR_INTERNATIONAL_REGION:I

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/miui/privacypolicy/Constants;->ERROR_NO_NETWORK:I

    const v0, -0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/miui/privacypolicy/Constants;->ERROR_PARESE_SERVICE_DATA:I

    const v0, -0x92d98

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/miui/privacypolicy/Constants;->ERROR_SERVICE_NOT_RESPONSE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/miui/privacypolicy/Constants;->SUCCESS:I

    const v0, -0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/miui/privacypolicy/Constants;->SUCCESS_REPEAT_AGREE:I

    const v0, -0x92d91

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/miui/privacypolicy/Constants;->SUCCESS_RE_QUERY:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
