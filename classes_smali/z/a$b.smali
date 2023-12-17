.class public final Lz/a$b;
.super Ljava/lang/Object;
.source "ConstraintLayoutStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:I

.field public f:Landroidx/constraintlayout/widget/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Lz/a$b;->a:F

    iput v0, p0, Lz/a$b;->b:F

    iput v0, p0, Lz/a$b;->c:F

    iput v0, p0, Lz/a$b;->d:F

    const/4 v0, -0x1

    iput v0, p0, Lz/a$b;->e:I

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object v0, Lz/d;->Variant:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v0, :cond_a3

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    sget v3, Lz/d;->Variant_constraints:I

    if-ne v2, v3, :cond_64

    iget v3, p0, Lz/a$b;->e:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lz/a$b;->e:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lz/a$b;->e:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lz/a$b;->e:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    const-string v3, "layout"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9f

    new-instance v2, Landroidx/constraintlayout/widget/c;

    invoke-direct {v2}, Landroidx/constraintlayout/widget/c;-><init>()V

    iput-object v2, p0, Lz/a$b;->f:Landroidx/constraintlayout/widget/c;

    iget v3, p0, Lz/a$b;->e:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/c;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_9f

    :cond_64
    sget v3, Lz/d;->Variant_region_heightLessThan:I

    if-ne v2, v3, :cond_71

    iget v3, p0, Lz/a$b;->d:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lz/a$b;->d:F

    goto :goto_9f

    :cond_71
    sget v3, Lz/d;->Variant_region_heightMoreThan:I

    if-ne v2, v3, :cond_7e

    iget v3, p0, Lz/a$b;->b:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lz/a$b;->b:F

    goto :goto_9f

    :cond_7e
    sget v3, Lz/d;->Variant_region_widthLessThan:I

    if-ne v2, v3, :cond_8b

    iget v3, p0, Lz/a$b;->c:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lz/a$b;->c:F

    goto :goto_9f

    :cond_8b
    sget v3, Lz/d;->Variant_region_widthMoreThan:I

    if-ne v2, v3, :cond_98

    iget v3, p0, Lz/a$b;->a:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lz/a$b;->a:F

    goto :goto_9f

    :cond_98
    const-string v2, "ConstraintLayoutStates"

    const-string v3, "Unknown tag"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    :goto_9f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1f

    :cond_a3
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(FF)Z
    .registers 5

    iget v0, p0, Lz/a$b;->a:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    iget v0, p0, Lz/a$b;->a:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_10

    return v1

    :cond_10
    iget v0, p0, Lz/a$b;->b:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1f

    iget v0, p0, Lz/a$b;->b:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1f

    return v1

    :cond_1f
    iget v0, p0, Lz/a$b;->c:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2e

    iget v0, p0, Lz/a$b;->c:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2e

    return v1

    :cond_2e
    iget p1, p0, Lz/a$b;->d:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_3d

    iget p1, p0, Lz/a$b;->d:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3d

    return v1

    :cond_3d
    const/4 p1, 0x1

    return p1
.end method
