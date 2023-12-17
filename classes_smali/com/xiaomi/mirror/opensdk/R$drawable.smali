.class public final Lcom/xiaomi/mirror/opensdk/R$drawable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/opensdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "drawable"
.end annotation


# static fields
.field public static final immersion_window_bg:I

.field public static final list_item_bg_light:I

.field public static final list_item_bg_normal:I

.field public static final list_item_bg_pressed:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f012f25

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/mirror/opensdk/R$drawable;->immersion_window_bg:I

    const v0, 0x7f012f21

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/mirror/opensdk/R$drawable;->list_item_bg_light:I

    const v0, 0x7f012f2e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/mirror/opensdk/R$drawable;->list_item_bg_normal:I

    const v0, 0x7f012f2f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/mirror/opensdk/R$drawable;->list_item_bg_pressed:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
