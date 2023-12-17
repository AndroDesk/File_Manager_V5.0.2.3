.class public final Lmiuix/nestedheader/R$layout;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/nestedheader/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static final custom_dialog:I

.field public static final notification_action:I

.field public static final notification_action_tombstone:I

.field public static final notification_template_custom_big:I

.field public static final notification_template_icon_group:I

.field public static final notification_template_part_chronometer:I

.field public static final notification_template_part_time:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f042daa

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/nestedheader/R$layout;->custom_dialog:I

    const v0, 0x7f042c03

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/nestedheader/R$layout;->notification_action:I

    const v0, 0x7f042c00

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/nestedheader/R$layout;->notification_action_tombstone:I

    const v0, 0x7f042c01

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/nestedheader/R$layout;->notification_template_custom_big:I

    const v0, 0x7f042c0e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/nestedheader/R$layout;->notification_template_icon_group:I

    const v0, 0x7f042c0f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/nestedheader/R$layout;->notification_template_part_chronometer:I

    const v0, 0x7f042c0c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/nestedheader/R$layout;->notification_template_part_time:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
