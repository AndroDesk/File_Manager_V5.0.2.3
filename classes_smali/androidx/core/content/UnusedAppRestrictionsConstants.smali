.class public final Landroidx/core/content/UnusedAppRestrictionsConstants;
.super Ljava/lang/Object;
.source "UnusedAppRestrictionsConstants.java"


# static fields
.field public static final API_30:I

.field public static final API_30_BACKPORT:I

.field public static final API_31:I

.field public static final DISABLED:I

.field public static final ERROR:I

.field public static final FEATURE_NOT_AVAILABLE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroidx/core/content/UnusedAppRestrictionsConstants;->API_30:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroidx/core/content/UnusedAppRestrictionsConstants;->API_30_BACKPORT:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroidx/core/content/UnusedAppRestrictionsConstants;->API_31:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroidx/core/content/UnusedAppRestrictionsConstants;->DISABLED:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroidx/core/content/UnusedAppRestrictionsConstants;->ERROR:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroidx/core/content/UnusedAppRestrictionsConstants;->FEATURE_NOT_AVAILABLE:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
