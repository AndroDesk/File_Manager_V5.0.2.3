.class public final Landroidx/preference/m;
.super Ljava/lang/Object;


# static fields
.field public static final preferences_detail_pane_weight:I

.field public static final preferences_header_pane_weight:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f022dba

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroidx/preference/m;->preferences_detail_pane_weight:I

    const v0, 0x7f022dbb

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroidx/preference/m;->preferences_header_pane_weight:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
