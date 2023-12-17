.class public final Lmiuix/pickerwidget/R$plurals;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "plurals"
.end annotation


# static fields
.field public static final abbrev_a_hour_ago:I

.field public static final abbrev_half_hour_ago:I

.field public static final abbrev_in_a_hour:I

.field public static final abbrev_in_half_hour:I

.field public static final abbrev_in_less_than_one_minute:I

.field public static final abbrev_in_num_minutes:I

.field public static final abbrev_less_than_one_minute_ago:I

.field public static final abbrev_num_minutes_ago:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f062d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/pickerwidget/R$plurals;->abbrev_a_hour_ago:I

    const v0, 0x7f062d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/pickerwidget/R$plurals;->abbrev_half_hour_ago:I

    const v0, 0x7f062d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/pickerwidget/R$plurals;->abbrev_in_a_hour:I

    const v0, 0x7f062d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/pickerwidget/R$plurals;->abbrev_in_half_hour:I

    const v0, 0x7f062d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/pickerwidget/R$plurals;->abbrev_in_less_than_one_minute:I

    const v0, 0x7f062d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/pickerwidget/R$plurals;->abbrev_in_num_minutes:I

    const v0, 0x7f062d91

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/pickerwidget/R$plurals;->abbrev_less_than_one_minute_ago:I

    const v0, 0x7f062d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/pickerwidget/R$plurals;->abbrev_num_minutes_ago:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
