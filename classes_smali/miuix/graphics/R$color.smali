.class public final Lmiuix/graphics/R$color;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/graphics/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "color"
.end annotation


# static fields
.field public static final androidx_core_ripple_material_light:I

.field public static final androidx_core_secondary_text_default_material_light:I

.field public static final notification_action_color_filter:I

.field public static final notification_icon_bg_color:I

.field public static final word_photo_color:I

.field public static final word_photo_color_dark:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f0f2dbe

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/graphics/R$color;->androidx_core_ripple_material_light:I

    const v0, 0x7f0f2dbf

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/graphics/R$color;->androidx_core_secondary_text_default_material_light:I

    const v0, 0x7f0f2970

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/graphics/R$color;->notification_action_color_filter:I

    const v0, 0x7f0f2971

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/graphics/R$color;->notification_icon_bg_color:I

    const v0, 0x7f0f2804

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/graphics/R$color;->word_photo_color:I

    const v0, 0x7f0f2805

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/graphics/R$color;->word_photo_color_dark:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
