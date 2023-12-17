.class Lmiuix/navigation/SplitLayout$WidthDescription;
.super Ljava/lang/Object;
.source "SplitLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigation/SplitLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidthDescription"
.end annotation


# instance fields
.field public type:I

.field public useDefault:Z

.field public value:F


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseValue(Landroid/util/TypedValue;Landroid/content/res/Resources;F)Lmiuix/navigation/SplitLayout$WidthDescription;
    .registers 7

    .line 1
    new-instance v0, Lmiuix/navigation/SplitLayout$WidthDescription;

    .line 3
    invoke-direct {v0}, Lmiuix/navigation/SplitLayout$WidthDescription;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz p0, :cond_47

    .line 9
    iget v2, p0, Landroid/util/TypedValue;->type:I

    .line 11
    const/16 v3, 0x10

    .line 13
    if-lt v2, v3, :cond_13

    .line 15
    const/16 v3, 0x1f

    .line 17
    if-gt v2, v3, :cond_13

    .line 19
    goto :goto_47

    .line 20
    :cond_13
    const/4 p2, 0x6

    .line 21
    const/4 v3, 0x0

    .line 22
    if-ne v2, p2, :cond_24

    .line 24
    iput v1, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->type:I

    .line 26
    iget p0, p0, Landroid/util/TypedValue;->data:I

    .line 28
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    .line 31
    move-result p0

    .line 32
    iput p0, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->value:F

    .line 34
    iput-boolean v3, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->useDefault:Z

    .line 36
    return-object v0

    .line 37
    :cond_24
    const/4 p2, 0x4

    .line 38
    if-ne v2, p2, :cond_32

    .line 40
    iput v1, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->type:I

    .line 42
    invoke-virtual {p0}, Landroid/util/TypedValue;->getFloat()F

    .line 45
    move-result p0

    .line 46
    iput p0, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->value:F

    .line 48
    iput-boolean v3, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->useDefault:Z

    .line 50
    return-object v0

    .line 51
    :cond_32
    const/4 p2, 0x5

    .line 52
    if-ne v2, p2, :cond_4d

    .line 54
    iput v3, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->type:I

    .line 56
    iget p0, p0, Landroid/util/TypedValue;->data:I

    .line 58
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 61
    move-result-object p1

    .line 62
    invoke-static {p0, p1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    .line 65
    move-result p0

    .line 66
    int-to-float p0, p0

    .line 67
    iput p0, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->value:F

    .line 69
    iput-boolean v3, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->useDefault:Z

    .line 71
    return-object v0

    .line 72
    :cond_47
    :goto_47
    iput v1, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->type:I

    .line 74
    iput p2, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->value:F

    .line 76
    iput-boolean v1, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->useDefault:Z

    .line 78
    :cond_4d
    return-object v0
.end method
