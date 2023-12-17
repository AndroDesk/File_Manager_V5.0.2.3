.class public final Lmiuix/theme/R$dimen;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/theme/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# static fields
.field public static final miuix_theme_action_button_height:I

.field public static final miuix_theme_action_button_width:I

.field public static final miuix_theme_title_button_height:I

.field public static final miuix_theme_title_button_width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f0e2b80

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/theme/R$dimen;->miuix_theme_action_button_height:I

    const v0, 0x7f0e2b81

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/theme/R$dimen;->miuix_theme_action_button_width:I

    const v0, 0x7f0e2b8e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/theme/R$dimen;->miuix_theme_title_button_height:I

    const v0, 0x7f0e2b8f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/theme/R$dimen;->miuix_theme_title_button_width:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
