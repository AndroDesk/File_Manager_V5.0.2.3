.class public final Lcom/xiaomi/mirror/opensdk/R$color;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/opensdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "color"
.end annotation


# static fields
.field public static final dropdown_popup_backgroud_color:I

.field public static final list_item_bg_color:I

.field public static final list_item_bg_color_pressed:I

.field public static final list_item_text_color:I

.field public static final thumbnail_border_color:I

.field public static final thumbnail_count_color:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f0f2d1c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/mirror/opensdk/R$color;->dropdown_popup_backgroud_color:I

    const v0, 0x7f0f2d45

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/mirror/opensdk/R$color;->list_item_bg_color:I

    const v0, 0x7f0f2d42

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/mirror/opensdk/R$color;->list_item_bg_color_pressed:I

    const v0, 0x7f0f2d40

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/mirror/opensdk/R$color;->list_item_text_color:I

    const v0, 0x7f0f28ed

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/mirror/opensdk/R$color;->thumbnail_border_color:I

    const v0, 0x7f0f28ea

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/mirror/opensdk/R$color;->thumbnail_count_color:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
