.class public final Lmiuix/androidbasewidget/R$animator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/androidbasewidget/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "animator"
.end annotation


# static fields
.field public static final fragment_close_enter:I

.field public static final fragment_close_exit:I

.field public static final fragment_fade_enter:I

.field public static final fragment_fade_exit:I

.field public static final fragment_open_enter:I

.field public static final fragment_open_exit:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f0b2d92  # 1.849993E38f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/androidbasewidget/R$animator;->fragment_close_enter:I

    const v0, 0x7f0b2d93  # 1.8499933E38f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/androidbasewidget/R$animator;->fragment_close_exit:I

    const v0, 0x7f0b2d90  # 1.8499927E38f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/androidbasewidget/R$animator;->fragment_fade_enter:I

    const v0, 0x7f0b2d91  # 1.8499929E38f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/androidbasewidget/R$animator;->fragment_fade_exit:I

    const v0, 0x7f0b2d9e  # 1.8499955E38f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/androidbasewidget/R$animator;->fragment_open_enter:I

    const v0, 0x7f0b2d9f  # 1.8499957E38f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/androidbasewidget/R$animator;->fragment_open_exit:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
