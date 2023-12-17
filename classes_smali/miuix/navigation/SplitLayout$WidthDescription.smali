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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseValue(Landroid/util/TypedValue;Landroid/content/res/Resources;F)Lmiuix/navigation/SplitLayout$WidthDescription;
    .registers 7

    new-instance v0, Lmiuix/navigation/SplitLayout$WidthDescription;

    invoke-direct {v0}, Lmiuix/navigation/SplitLayout$WidthDescription;-><init>()V

    const/4 v1, 0x1

    if-eqz p0, :cond_47

    iget v2, p0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_13

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_13

    goto :goto_47

    :cond_13
    const/4 p2, 0x6

    const/4 v3, 0x0

    if-ne v2, p2, :cond_24

    iput v1, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->type:I

    iget p0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p0

    iput p0, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->value:F

    iput-boolean v3, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->useDefault:Z

    return-object v0

    :cond_24
    const/4 p2, 0x4

    if-ne v2, p2, :cond_32

    iput v1, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->type:I

    invoke-virtual {p0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    iput p0, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->value:F

    iput-boolean v3, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->useDefault:Z

    return-object v0

    :cond_32
    const/4 p2, 0x5

    if-ne v2, p2, :cond_4d

    iput v3, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->type:I

    iget p0, p0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    iput p0, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->value:F

    iput-boolean v3, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->useDefault:Z

    return-object v0

    :cond_47
    :goto_47
    iput v1, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->type:I

    iput p2, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->value:F

    iput-boolean v1, v0, Lmiuix/navigation/SplitLayout$WidthDescription;->useDefault:Z

    :cond_4d
    return-object v0
.end method
