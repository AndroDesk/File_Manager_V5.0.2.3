.class public final Lmiuix/stretchablewidget/R$integer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/stretchablewidget/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation


# static fields
.field public static final abc_config_activityDefaultDur:I

.field public static final abc_config_activityShortDur:I

.field public static final cancel_button_image_alpha:I

.field public static final config_tooltipAnimTime:I

.field public static final status_bar_notification_info_maxnum:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f022d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/stretchablewidget/R$integer;->abc_config_activityDefaultDur:I

    const v0, 0x7f022d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/stretchablewidget/R$integer;->abc_config_activityShortDur:I

    const v0, 0x7f022d9d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/stretchablewidget/R$integer;->cancel_button_image_alpha:I

    const v0, 0x7f022d82

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/stretchablewidget/R$integer;->config_tooltipAnimTime:I

    const v0, 0x7f022db9

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/stretchablewidget/R$integer;->status_bar_notification_info_maxnum:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
