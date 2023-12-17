.class public final Lmiuix/popupwidget/R$fraction;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "fraction"
.end annotation


# static fields
.field public static final drop_down_anim_pivot_x:I

.field public static final immersion_menu_anim_pivot_x:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f002d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/popupwidget/R$fraction;->drop_down_anim_pivot_x:I

    const v0, 0x7f002d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/popupwidget/R$fraction;->immersion_menu_anim_pivot_x:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
