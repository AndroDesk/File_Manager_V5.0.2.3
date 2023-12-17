.class public final Lw0/b;
.super Ljava/lang/Object;


# static fields
.field public static final fragment_container_view_tag:I

.field public static final special_effects_controller_view_tag:I

.field public static final visible_removing_fragment_view_tag:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f032c34

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lw0/b;->fragment_container_view_tag:I

    const v0, 0x7f032e52

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lw0/b;->special_effects_controller_view_tag:I

    const v0, 0x7f032937

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lw0/b;->visible_removing_fragment_view_tag:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
