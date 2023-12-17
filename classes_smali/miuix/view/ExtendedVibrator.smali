.class Lmiuix/view/ExtendedVibrator;
.super Ljava/lang/Object;
.source "ExtendedVibrator.java"

# interfaces
.implements Lmiuix/view/HapticFeedbackProvider;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtendedVibrator"


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    .line 1
    invoke-static {}, Lmiuix/view/ExtendedVibrator;->initialize()V

    .line 4
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static initialize()V
    .registers 2

    .line 1
    sget v0, Lmiuix/view/PlatformConstants;->VERSION:I

    .line 3
    const-string v1, "ExtendedVibrator"

    .line 5
    if-gez v0, :cond_c

    .line 7
    const-string v0, "MiuiHapticFeedbackConstants not found."

    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void

    .line 13
    :cond_c
    new-instance v0, Lmiuix/view/ExtendedVibrator;

    .line 15
    invoke-direct {v0}, Lmiuix/view/ExtendedVibrator;-><init>()V

    .line 18
    invoke-static {v0}, Lmiuix/view/HapticCompat;->registerProvider(Lmiuix/view/HapticFeedbackProvider;)V

    .line 21
    const-string v0, "setup ExtendedVibrator success."

    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method


# virtual methods
.method public performHapticFeedback(Landroid/view/View;I)Z
    .registers 4

    .line 1
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_VIRTUAL_RELEASE:I

    .line 3
    if-ne p2, v0, :cond_a

    .line 5
    const/4 p2, 0x2

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :cond_a
    const/4 p1, 0x0

    .line 12
    return p1
.end method
