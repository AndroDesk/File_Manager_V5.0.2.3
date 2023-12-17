.class public final Landroidx/constraintlayout/motion/widget/a$b;
.super Ljava/lang/Object;
.source "MotionScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/a$b$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:F

.field public final j:Landroidx/constraintlayout/motion/widget/a;

.field public k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ly/g;",
            ">;"
        }
    .end annotation
.end field

.field public l:Landroidx/constraintlayout/motion/widget/b;

.field public m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/a$b$a;",
            ">;"
        }
    .end annotation
.end field

.field public n:I

.field public o:Z

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>()V
    .registers 1

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Landroidx/constraintlayout/motion/widget/a;Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .registers 13

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Landroidx/constraintlayout/motion/widget/a$b;->a:I

    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/a$b;->b:Z

    .line 31
    iput v0, p0, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    .line 32
    iput v0, p0, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    .line 33
    iput v1, p0, Landroidx/constraintlayout/motion/widget/a$b;->e:I

    const/4 v2, 0x0

    .line 34
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/a$b;->f:Ljava/lang/String;

    .line 35
    iput v0, p0, Landroidx/constraintlayout/motion/widget/a$b;->g:I

    const/16 v3, 0x190

    .line 36
    iput v3, p0, Landroidx/constraintlayout/motion/widget/a$b;->h:I

    const/4 v3, 0x0

    .line 37
    iput v3, p0, Landroidx/constraintlayout/motion/widget/a$b;->i:F

    .line 38
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/a$b;->k:Ljava/util/ArrayList;

    .line 39
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/a$b;->m:Ljava/util/ArrayList;

    .line 41
    iput v1, p0, Landroidx/constraintlayout/motion/widget/a$b;->n:I

    .line 42
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/a$b;->o:Z

    .line 43
    iput v1, p0, Landroidx/constraintlayout/motion/widget/a$b;->p:I

    .line 44
    iput v1, p0, Landroidx/constraintlayout/motion/widget/a$b;->q:I

    .line 45
    iget v2, p1, Landroidx/constraintlayout/motion/widget/a;->j:I

    .line 46
    iput v2, p0, Landroidx/constraintlayout/motion/widget/a$b;->h:I

    .line 47
    iget v2, p1, Landroidx/constraintlayout/motion/widget/a;->k:I

    .line 48
    iput v2, p0, Landroidx/constraintlayout/motion/widget/a$b;->p:I

    .line 49
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/a$b;->j:Landroidx/constraintlayout/motion/widget/a;

    .line 50
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p3

    .line 51
    sget-object v2, Lz/d;->Transition:[I

    invoke-virtual {p2, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 52
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    move v3, v1

    :goto_4c
    const/4 v4, 0x1

    if-ge v3, v2, :cond_17e

    .line 53
    invoke-virtual {p3, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 54
    sget v6, Lz/d;->Transition_constraintSetEnd:I

    const-string v7, "xml"

    const-string v8, "layout"

    if-ne v5, v6, :cond_94

    .line 55
    invoke-virtual {p3, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    .line 56
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    .line 57
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 58
    new-instance v4, Landroidx/constraintlayout/widget/c;

    invoke-direct {v4}, Landroidx/constraintlayout/widget/c;-><init>()V

    .line 59
    iget v5, p0, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    invoke-virtual {v4, p2, v5}, Landroidx/constraintlayout/widget/c;->l(Landroid/content/Context;I)V

    .line 60
    iget-object v5, p1, Landroidx/constraintlayout/motion/widget/a;->g:Landroid/util/SparseArray;

    .line 61
    iget v6, p0, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/16 :goto_17a

    .line 62
    :cond_84
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17a

    .line 63
    iget v4, p0, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    .line 64
    invoke-virtual {p1, p2, v4}, Landroidx/constraintlayout/motion/widget/a;->g(Landroid/content/Context;I)I

    move-result v4

    .line 65
    iput v4, p0, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    goto/16 :goto_17a

    .line 66
    :cond_94
    sget v6, Lz/d;->Transition_constraintSetStart:I

    if-ne v5, v6, :cond_d3

    .line 67
    iget v4, p0, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    .line 68
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c3

    .line 70
    new-instance v4, Landroidx/constraintlayout/widget/c;

    invoke-direct {v4}, Landroidx/constraintlayout/widget/c;-><init>()V

    .line 71
    iget v5, p0, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    invoke-virtual {v4, p2, v5}, Landroidx/constraintlayout/widget/c;->l(Landroid/content/Context;I)V

    .line 72
    iget-object v5, p1, Landroidx/constraintlayout/motion/widget/a;->g:Landroid/util/SparseArray;

    .line 73
    iget v6, p0, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/16 :goto_17a

    .line 74
    :cond_c3
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17a

    .line 75
    iget v4, p0, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    .line 76
    invoke-virtual {p1, p2, v4}, Landroidx/constraintlayout/motion/widget/a;->g(Landroid/content/Context;I)I

    move-result v4

    .line 77
    iput v4, p0, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    goto/16 :goto_17a

    .line 78
    :cond_d3
    sget v6, Lz/d;->Transition_motionInterpolator:I

    if-ne v5, v6, :cond_116

    .line 79
    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 80
    iget v6, v6, Landroid/util/TypedValue;->type:I

    const/4 v7, -0x2

    if-ne v6, v4, :cond_ec

    .line 81
    invoke-virtual {p3, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/motion/widget/a$b;->g:I

    if-eq v4, v0, :cond_17a

    .line 82
    iput v7, p0, Landroidx/constraintlayout/motion/widget/a$b;->e:I

    goto/16 :goto_17a

    :cond_ec
    const/4 v4, 0x3

    if-ne v6, v4, :cond_10d

    .line 83
    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/a$b;->f:Ljava/lang/String;

    if-eqz v4, :cond_17a

    const-string v6, "/"

    .line 84
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_109

    .line 85
    invoke-virtual {p3, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/motion/widget/a$b;->g:I

    .line 86
    iput v7, p0, Landroidx/constraintlayout/motion/widget/a$b;->e:I

    goto/16 :goto_17a

    .line 87
    :cond_109
    iput v0, p0, Landroidx/constraintlayout/motion/widget/a$b;->e:I

    goto/16 :goto_17a

    .line 88
    :cond_10d
    iget v4, p0, Landroidx/constraintlayout/motion/widget/a$b;->e:I

    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/motion/widget/a$b;->e:I

    goto :goto_17a

    .line 89
    :cond_116
    sget v4, Lz/d;->Transition_duration:I

    if-ne v5, v4, :cond_129

    .line 90
    iget v4, p0, Landroidx/constraintlayout/motion/widget/a$b;->h:I

    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/motion/widget/a$b;->h:I

    const/16 v5, 0x8

    if-ge v4, v5, :cond_17a

    .line 91
    iput v5, p0, Landroidx/constraintlayout/motion/widget/a$b;->h:I

    goto :goto_17a

    .line 92
    :cond_129
    sget v4, Lz/d;->Transition_staggered:I

    if-ne v5, v4, :cond_136

    .line 93
    iget v4, p0, Landroidx/constraintlayout/motion/widget/a$b;->i:F

    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/motion/widget/a$b;->i:F

    goto :goto_17a

    .line 94
    :cond_136
    sget v4, Lz/d;->Transition_autoTransition:I

    if-ne v5, v4, :cond_143

    .line 95
    iget v4, p0, Landroidx/constraintlayout/motion/widget/a$b;->n:I

    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/motion/widget/a$b;->n:I

    goto :goto_17a

    .line 96
    :cond_143
    sget v4, Lz/d;->Transition_android_id:I

    if-ne v5, v4, :cond_150

    .line 97
    iget v4, p0, Landroidx/constraintlayout/motion/widget/a$b;->a:I

    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/motion/widget/a$b;->a:I

    goto :goto_17a

    .line 98
    :cond_150
    sget v4, Lz/d;->Transition_transitionDisable:I

    if-ne v5, v4, :cond_15d

    .line 99
    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/a$b;->o:Z

    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroidx/constraintlayout/motion/widget/a$b;->o:Z

    goto :goto_17a

    .line 100
    :cond_15d
    sget v4, Lz/d;->Transition_pathMotionArc:I

    if-ne v5, v4, :cond_165

    .line 101
    invoke-virtual {p3, v5, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    goto :goto_17a

    .line 102
    :cond_165
    sget v4, Lz/d;->Transition_layoutDuringTransition:I

    if-ne v5, v4, :cond_170

    .line 103
    invoke-virtual {p3, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/motion/widget/a$b;->p:I

    goto :goto_17a

    .line 104
    :cond_170
    sget v4, Lz/d;->Transition_transitionFlags:I

    if-ne v5, v4, :cond_17a

    .line 105
    invoke-virtual {p3, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/motion/widget/a$b;->q:I

    :cond_17a
    :goto_17a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4c

    .line 106
    :cond_17e
    iget p1, p0, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    if-ne p1, v0, :cond_184

    .line 107
    iput-boolean v4, p0, Landroidx/constraintlayout/motion/widget/a$b;->b:Z

    .line 108
    :cond_184
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/motion/widget/a;Landroidx/constraintlayout/motion/widget/a$b;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/constraintlayout/motion/widget/a$b;->a:I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/a$b;->b:Z

    .line 4
    iput v0, p0, Landroidx/constraintlayout/motion/widget/a$b;->c:I

    .line 5
    iput v0, p0, Landroidx/constraintlayout/motion/widget/a$b;->d:I

    .line 6
    iput v1, p0, Landroidx/constraintlayout/motion/widget/a$b;->e:I

    const/4 v2, 0x0

    .line 7
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/a$b;->f:Ljava/lang/String;

    .line 8
    iput v0, p0, Landroidx/constraintlayout/motion/widget/a$b;->g:I

    const/16 v0, 0x190

    .line 9
    iput v0, p0, Landroidx/constraintlayout/motion/widget/a$b;->h:I

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Landroidx/constraintlayout/motion/widget/a$b;->i:F

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/a$b;->k:Ljava/util/ArrayList;

    .line 12
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/a$b;->l:Landroidx/constraintlayout/motion/widget/b;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/a$b;->m:Ljava/util/ArrayList;

    .line 14
    iput v1, p0, Landroidx/constraintlayout/motion/widget/a$b;->n:I

    .line 15
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/a$b;->o:Z

    .line 16
    iput v1, p0, Landroidx/constraintlayout/motion/widget/a$b;->p:I

    .line 17
    iput v1, p0, Landroidx/constraintlayout/motion/widget/a$b;->q:I

    .line 18
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/a$b;->j:Landroidx/constraintlayout/motion/widget/a;

    .line 19
    iget p1, p1, Landroidx/constraintlayout/motion/widget/a;->j:I

    .line 20
    iput p1, p0, Landroidx/constraintlayout/motion/widget/a$b;->h:I

    if-eqz p2, :cond_57

    .line 21
    iget p1, p2, Landroidx/constraintlayout/motion/widget/a$b;->e:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/a$b;->e:I

    .line 22
    iget-object p1, p2, Landroidx/constraintlayout/motion/widget/a$b;->f:Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/a$b;->f:Ljava/lang/String;

    .line 23
    iget p1, p2, Landroidx/constraintlayout/motion/widget/a$b;->g:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/a$b;->g:I

    .line 24
    iget p1, p2, Landroidx/constraintlayout/motion/widget/a$b;->h:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/a$b;->h:I

    .line 25
    iget-object p1, p2, Landroidx/constraintlayout/motion/widget/a$b;->k:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/a$b;->k:Ljava/util/ArrayList;

    .line 26
    iget p1, p2, Landroidx/constraintlayout/motion/widget/a$b;->i:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/a$b;->i:F

    .line 27
    iget p1, p2, Landroidx/constraintlayout/motion/widget/a$b;->p:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/a$b;->p:I

    :cond_57
    return-void
.end method
