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
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/high16 v0, 0x7fc00000  # Float.NaN

    .line 6
    iput v0, p0, Lz/a$b;->a:F

    .line 8
    iput v0, p0, Lz/a$b;->b:F

    .line 10
    iput v0, p0, Lz/a$b;->c:F

    .line 12
    iput v0, p0, Lz/a$b;->d:F

    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lz/a$b;->e:I

    .line 17
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 20
    move-result-object p2

    .line 21
    sget-object v0, Lz/d;->Variant:[I

    .line 23
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x0

    .line 32
    :goto_1f
    if-ge v1, v0, :cond_a3

    .line 34
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 37
    move-result v2

    .line 38
    sget v3, Lz/d;->Variant_constraints:I

    .line 40
    if-ne v2, v3, :cond_64

    .line 42
    iget v3, p0, Lz/a$b;->e:I

    .line 44
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 47
    move-result v2

    .line 48
    iput v2, p0, Lz/a$b;->e:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object v2

    .line 54
    iget v3, p0, Lz/a$b;->e:I

    .line 56
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    move-result-object v3

    .line 64
    iget v4, p0, Lz/a$b;->e:I

    .line 66
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 69
    const-string v3, "layout"

    .line 71
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_9f

    .line 77
    new-instance v2, Landroidx/constraintlayout/widget/c;

    .line 79
    invoke-direct {v2}, Landroidx/constraintlayout/widget/c;-><init>()V

    .line 82
    iput-object v2, p0, Lz/a$b;->f:Landroidx/constraintlayout/widget/c;

    .line 84
    iget v3, p0, Lz/a$b;->e:I

    .line 86
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 89
    move-result-object v4

    .line 90
    const/4 v5, 0x0

    .line 91
    invoke-virtual {v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 94
    move-result-object v3

    .line 95
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 97
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/c;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 100
    goto :goto_9f

    .line 101
    :cond_64
    sget v3, Lz/d;->Variant_region_heightLessThan:I

    .line 103
    if-ne v2, v3, :cond_71

    .line 105
    iget v3, p0, Lz/a$b;->d:F

    .line 107
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 110
    move-result v2

    .line 111
    iput v2, p0, Lz/a$b;->d:F

    .line 113
    goto :goto_9f

    .line 114
    :cond_71
    sget v3, Lz/d;->Variant_region_heightMoreThan:I

    .line 116
    if-ne v2, v3, :cond_7e

    .line 118
    iget v3, p0, Lz/a$b;->b:F

    .line 120
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 123
    move-result v2

    .line 124
    iput v2, p0, Lz/a$b;->b:F

    .line 126
    goto :goto_9f

    .line 127
    :cond_7e
    sget v3, Lz/d;->Variant_region_widthLessThan:I

    .line 129
    if-ne v2, v3, :cond_8b

    .line 131
    iget v3, p0, Lz/a$b;->c:F

    .line 133
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 136
    move-result v2

    .line 137
    iput v2, p0, Lz/a$b;->c:F

    .line 139
    goto :goto_9f

    .line 140
    :cond_8b
    sget v3, Lz/d;->Variant_region_widthMoreThan:I

    .line 142
    if-ne v2, v3, :cond_98

    .line 144
    iget v3, p0, Lz/a$b;->a:F

    .line 146
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 149
    move-result v2

    .line 150
    iput v2, p0, Lz/a$b;->a:F

    .line 152
    goto :goto_9f

    .line 153
    :cond_98
    const-string v2, "ConstraintLayoutStates"

    .line 155
    const-string v3, "Unknown tag"

    .line 157
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_9f
    :goto_9f
    add-int/lit8 v1, v1, 0x1

    .line 162
    goto/16 :goto_1f

    .line 164
    :cond_a3
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 167
    return-void
.end method


# virtual methods
.method public final a(FF)Z
    .registers 5

    .line 1
    iget v0, p0, Lz/a$b;->a:F

    .line 3
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_10

    .line 10
    iget v0, p0, Lz/a$b;->a:F

    .line 12
    cmpg-float v0, p1, v0

    .line 14
    if-gez v0, :cond_10

    .line 16
    return v1

    .line 17
    :cond_10
    iget v0, p0, Lz/a$b;->b:F

    .line 19
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1f

    .line 25
    iget v0, p0, Lz/a$b;->b:F

    .line 27
    cmpg-float v0, p2, v0

    .line 29
    if-gez v0, :cond_1f

    .line 31
    return v1

    .line 32
    :cond_1f
    iget v0, p0, Lz/a$b;->c:F

    .line 34
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_2e

    .line 40
    iget v0, p0, Lz/a$b;->c:F

    .line 42
    cmpl-float p1, p1, v0

    .line 44
    if-lez p1, :cond_2e

    .line 46
    return v1

    .line 47
    :cond_2e
    iget p1, p0, Lz/a$b;->d:F

    .line 49
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_3d

    .line 55
    iget p1, p0, Lz/a$b;->d:F

    .line 57
    cmpl-float p1, p2, p1

    .line 59
    if-lez p1, :cond_3d

    .line 61
    return v1

    .line 62
    :cond_3d
    const/4 p1, 0x1

    .line 63
    return p1
.end method
