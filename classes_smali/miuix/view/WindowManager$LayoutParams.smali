.class public Lmiuix/view/WindowManager$LayoutParams;
.super Landroid/view/WindowManager$LayoutParams;
.source "WindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/view/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final FLAG_WINDOW_LAYOUT_MODE_BOTTOM:I

.field public static final FLAG_WINDOW_LAYOUT_MODE_NORMAL:I

.field public static final FLAG_WINDOW_TRANSLUCENT_STATUS_DARK:I

.field public static final FLAG_WINDOW_TRANSLUCENT_STATUS_LIGHT:I

.field public static final FLAG_WINDOW_TRANSLUCENT_STATUS_NONE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/view/WindowManager$LayoutParams;->FLAG_WINDOW_LAYOUT_MODE_BOTTOM:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/view/WindowManager$LayoutParams;->FLAG_WINDOW_LAYOUT_MODE_NORMAL:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/view/WindowManager$LayoutParams;->FLAG_WINDOW_TRANSLUCENT_STATUS_DARK:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/view/WindowManager$LayoutParams;->FLAG_WINDOW_TRANSLUCENT_STATUS_LIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    return-void
.end method
