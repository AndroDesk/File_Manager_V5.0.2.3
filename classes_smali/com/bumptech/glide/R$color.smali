.class public final Lcom/bumptech/glide/R$color;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "color"
.end annotation


# static fields
.field public static final notification_action_color_filter:I

.field public static final notification_icon_bg_color:I

.field public static final ripple_material_light:I

.field public static final secondary_text_default_material_light:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f0f2970

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/bumptech/glide/R$color;->notification_action_color_filter:I

    const v0, 0x7f0f2971

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/bumptech/glide/R$color;->notification_icon_bg_color:I

    const v0, 0x7f0f2898

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/bumptech/glide/R$color;->ripple_material_light:I

    const v0, 0x7f0f288c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/bumptech/glide/R$color;->secondary_text_default_material_light:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
