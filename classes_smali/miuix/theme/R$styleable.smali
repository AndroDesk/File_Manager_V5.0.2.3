.class public final Lmiuix/theme/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/theme/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ActionIconDrawable:[I

.field public static final ActionIconDrawable_actionIconDisabledAlpha:I = 0x0

.field public static final ActionIconDrawable_actionIconHeight:I = 0x1

.field public static final ActionIconDrawable_actionIconNormalAlpha:I = 0x2

.field public static final ActionIconDrawable_actionIconPressedAlpha:I = 0x3

.field public static final ActionIconDrawable_actionIconWidth:I = 0x4


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lmiuix/theme/R$styleable;->ActionIconDrawable:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x7f04004c
        0x7f04004d
        0x7f04004e
        0x7f04004f
        0x7f040050
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
