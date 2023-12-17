.class public final Lz/a$a;
.super Ljava/lang/Object;
.source "ConstraintLayoutStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lz/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Landroidx/constraintlayout/widget/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lz/a$a;->b:Ljava/util/ArrayList;

    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lz/a$a;->c:I

    .line 14
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 17
    move-result-object p2

    .line 18
    sget-object v0, Lz/d;->State:[I

    .line 20
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    :goto_1c
    if-ge v1, v0, :cond_70

    .line 31
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 34
    move-result v2

    .line 35
    sget v3, Lz/d;->State_android_id:I

    .line 37
    if-ne v2, v3, :cond_2f

    .line 39
    iget v3, p0, Lz/a$a;->a:I

    .line 41
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 44
    move-result v2

    .line 45
    iput v2, p0, Lz/a$a;->a:I

    .line 47
    goto :goto_6d

    .line 48
    :cond_2f
    sget v3, Lz/d;->State_constraints:I

    .line 50
    if-ne v2, v3, :cond_6d

    .line 52
    iget v3, p0, Lz/a$a;->c:I

    .line 54
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 57
    move-result v2

    .line 58
    iput v2, p0, Lz/a$a;->c:I

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    move-result-object v2

    .line 64
    iget v3, p0, Lz/a$a;->c:I

    .line 66
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    move-result-object v3

    .line 74
    iget v4, p0, Lz/a$a;->c:I

    .line 76
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 79
    const-string v3, "layout"

    .line 81
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_6d

    .line 87
    new-instance v2, Landroidx/constraintlayout/widget/c;

    .line 89
    invoke-direct {v2}, Landroidx/constraintlayout/widget/c;-><init>()V

    .line 92
    iput-object v2, p0, Lz/a$a;->d:Landroidx/constraintlayout/widget/c;

    .line 94
    iget v3, p0, Lz/a$a;->c:I

    .line 96
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 99
    move-result-object v4

    .line 100
    const/4 v5, 0x0

    .line 101
    invoke-virtual {v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 107
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/c;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 110
    :cond_6d
    :goto_6d
    add-int/lit8 v1, v1, 0x1

    .line 112
    goto :goto_1c

    .line 113
    :cond_70
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    return-void
.end method


# virtual methods
.method public final a(FF)I
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lz/a$a;->b:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1b

    .line 10
    iget-object v1, p0, Lz/a$a;->b:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lz/a$b;

    .line 18
    invoke-virtual {v1, p1, p2}, Lz/a$b;->a(FF)Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_18

    .line 24
    return v0

    .line 25
    :cond_18
    add-int/lit8 v0, v0, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1b
    const/4 p1, -0x1

    .line 29
    return p1
.end method
