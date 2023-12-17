.class public final Lmiuix/haptic/R$style;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/haptic/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field public static final TextAppearance_Compat_Notification:I

.field public static final TextAppearance_Compat_Notification_Info:I

.field public static final TextAppearance_Compat_Notification_Line2:I

.field public static final TextAppearance_Compat_Notification_Time:I

.field public static final TextAppearance_Compat_Notification_Title:I

.field public static final Widget_Compat_NotificationActionContainer:I

.field public static final Widget_Compat_NotificationActionText:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f1b2ffb

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/haptic/R$style;->TextAppearance_Compat_Notification:I

    const v0, 0x7f1b2ff8

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/haptic/R$style;->TextAppearance_Compat_Notification_Info:I

    const v0, 0x7f1b2ff9

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/haptic/R$style;->TextAppearance_Compat_Notification_Line2:I

    const v0, 0x7f1b2fe6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/haptic/R$style;->TextAppearance_Compat_Notification_Time:I

    const v0, 0x7f1b2fe7

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/haptic/R$style;->TextAppearance_Compat_Notification_Title:I

    const v0, 0x7f1b298a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/haptic/R$style;->Widget_Compat_NotificationActionContainer:I

    const v0, 0x7f1b298b

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/haptic/R$style;->Widget_Compat_NotificationActionText:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
