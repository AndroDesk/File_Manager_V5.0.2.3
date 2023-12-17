.class Lmiuix/navigation/NavigationLayout$WidthDescription;
.super Ljava/lang/Object;
.source "NavigationLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigation/NavigationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidthDescription"
.end annotation


# instance fields
.field public type:I

.field public value:F


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseValue(Landroid/util/TypedValue;Landroid/content/res/Resources;)Lmiuix/navigation/NavigationLayout$WidthDescription;
    .registers 7

    .line 1
    new-instance v0, Lmiuix/navigation/NavigationLayout$WidthDescription;

    .line 3
    invoke-direct {v0}, Lmiuix/navigation/NavigationLayout$WidthDescription;-><init>()V

    .line 6
    const v1, 0x3e99999a  # 0.3f

    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez p0, :cond_10

    .line 12
    iput v2, v0, Lmiuix/navigation/NavigationLayout$WidthDescription;->type:I

    .line 14
    iput v1, v0, Lmiuix/navigation/NavigationLayout$WidthDescription;->value:F

    .line 16
    goto :goto_40

    .line 17
    :cond_10
    iget v3, p0, Landroid/util/TypedValue;->type:I

    .line 19
    const/4 v4, 0x6

    .line 20
    if-ne v3, v4, :cond_20

    .line 22
    iput v2, v0, Lmiuix/navigation/NavigationLayout$WidthDescription;->type:I

    .line 24
    iget p0, p0, Landroid/util/TypedValue;->data:I

    .line 26
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    .line 29
    move-result p0

    .line 30
    iput p0, v0, Lmiuix/navigation/NavigationLayout$WidthDescription;->value:F

    .line 32
    return-object v0

    .line 33
    :cond_20
    const/4 v4, 0x4

    .line 34
    if-ne v3, v4, :cond_2c

    .line 36
    iput v2, v0, Lmiuix/navigation/NavigationLayout$WidthDescription;->type:I

    .line 38
    invoke-virtual {p0}, Landroid/util/TypedValue;->getFloat()F

    .line 41
    move-result p0

    .line 42
    iput p0, v0, Lmiuix/navigation/NavigationLayout$WidthDescription;->value:F

    .line 44
    return-object v0

    .line 45
    :cond_2c
    const/4 v4, 0x5

    .line 46
    if-ne v3, v4, :cond_40

    .line 48
    const/4 v1, 0x0

    .line 49
    iput v1, v0, Lmiuix/navigation/NavigationLayout$WidthDescription;->type:I

    .line 51
    iget p0, p0, Landroid/util/TypedValue;->data:I

    .line 53
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 56
    move-result-object p1

    .line 57
    invoke-static {p0, p1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    .line 60
    move-result p0

    .line 61
    int-to-float p0, p0

    .line 62
    iput p0, v0, Lmiuix/navigation/NavigationLayout$WidthDescription;->value:F

    .line 64
    return-object v0

    .line 65
    :cond_40
    :goto_40
    iput v2, v0, Lmiuix/navigation/NavigationLayout$WidthDescription;->type:I

    .line 67
    iput v1, v0, Lmiuix/navigation/NavigationLayout$WidthDescription;->value:F

    .line 69
    return-object v0
.end method
