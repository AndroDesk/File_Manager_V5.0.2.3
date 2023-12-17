.class public final Landroidx/constraintlayout/widget/c$c;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static l:Landroid/util/SparseIntArray;


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:F

.field public f:F

.field public g:F

.field public h:I

.field public i:Ljava/lang/String;

.field public j:I

.field public k:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 6
    sput-object v0, Landroidx/constraintlayout/widget/c$c;->l:Landroid/util/SparseIntArray;

    .line 8
    sget v1, Lz/d;->Motion_motionPathRotate:I

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 14
    sget-object v0, Landroidx/constraintlayout/widget/c$c;->l:Landroid/util/SparseIntArray;

    .line 16
    sget v1, Lz/d;->Motion_pathMotionArc:I

    .line 18
    const/4 v2, 0x2

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 22
    sget-object v0, Landroidx/constraintlayout/widget/c$c;->l:Landroid/util/SparseIntArray;

    .line 24
    sget v1, Lz/d;->Motion_transitionEasing:I

    .line 26
    const/4 v2, 0x3

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 30
    sget-object v0, Landroidx/constraintlayout/widget/c$c;->l:Landroid/util/SparseIntArray;

    .line 32
    sget v1, Lz/d;->Motion_drawPath:I

    .line 34
    const/4 v2, 0x4

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 38
    sget-object v0, Landroidx/constraintlayout/widget/c$c;->l:Landroid/util/SparseIntArray;

    .line 40
    sget v1, Lz/d;->Motion_animateRelativeTo:I

    .line 42
    const/4 v2, 0x5

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 46
    sget-object v0, Landroidx/constraintlayout/widget/c$c;->l:Landroid/util/SparseIntArray;

    .line 48
    sget v1, Lz/d;->Motion_animateCircleAngleTo:I

    .line 50
    const/4 v2, 0x6

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 54
    sget-object v0, Landroidx/constraintlayout/widget/c$c;->l:Landroid/util/SparseIntArray;

    .line 56
    sget v1, Lz/d;->Motion_motionStagger:I

    .line 58
    const/4 v2, 0x7

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 62
    sget-object v0, Landroidx/constraintlayout/widget/c$c;->l:Landroid/util/SparseIntArray;

    .line 64
    sget v1, Lz/d;->Motion_quantizeMotionSteps:I

    .line 66
    const/16 v2, 0x8

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 71
    sget-object v0, Landroidx/constraintlayout/widget/c$c;->l:Landroid/util/SparseIntArray;

    .line 73
    sget v1, Lz/d;->Motion_quantizeMotionPhase:I

    .line 75
    const/16 v2, 0x9

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 80
    sget-object v0, Landroidx/constraintlayout/widget/c$c;->l:Landroid/util/SparseIntArray;

    .line 82
    sget v1, Lz/d;->Motion_quantizeMotionInterpolator:I

    .line 84
    const/16 v2, 0xa

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/c$c;->a:Z

    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, p0, Landroidx/constraintlayout/widget/c$c;->b:I

    .line 10
    iput v0, p0, Landroidx/constraintlayout/widget/c$c;->c:I

    .line 12
    iput v1, p0, Landroidx/constraintlayout/widget/c$c;->d:I

    .line 14
    const/high16 v0, 0x7fc00000  # Float.NaN

    .line 16
    iput v0, p0, Landroidx/constraintlayout/widget/c$c;->e:F

    .line 18
    iput v0, p0, Landroidx/constraintlayout/widget/c$c;->f:F

    .line 20
    iput v0, p0, Landroidx/constraintlayout/widget/c$c;->g:F

    .line 22
    iput v1, p0, Landroidx/constraintlayout/widget/c$c;->h:I

    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Landroidx/constraintlayout/widget/c$c;->i:Ljava/lang/String;

    .line 27
    const/4 v0, -0x3

    .line 28
    iput v0, p0, Landroidx/constraintlayout/widget/c$c;->j:I

    .line 30
    iput v1, p0, Landroidx/constraintlayout/widget/c$c;->k:I

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/widget/c$c;)V
    .registers 3

    .line 1
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/c$c;->a:Z

    .line 3
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/c$c;->a:Z

    .line 5
    iget v0, p1, Landroidx/constraintlayout/widget/c$c;->b:I

    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/c$c;->b:I

    .line 9
    iget v0, p1, Landroidx/constraintlayout/widget/c$c;->d:I

    .line 11
    iput v0, p0, Landroidx/constraintlayout/widget/c$c;->d:I

    .line 13
    iget v0, p1, Landroidx/constraintlayout/widget/c$c;->f:F

    .line 15
    iput v0, p0, Landroidx/constraintlayout/widget/c$c;->f:F

    .line 17
    iget p1, p1, Landroidx/constraintlayout/widget/c$c;->e:F

    .line 19
    iput p1, p0, Landroidx/constraintlayout/widget/c$c;->e:F

    .line 21
    return-void
.end method

.method public final b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    .line 1
    sget-object v0, Lz/d;->Motion:[I

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Landroidx/constraintlayout/widget/c$c;->a:Z

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :goto_f
    if-ge v2, v0, :cond_b7

    .line 18
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 21
    move-result v3

    .line 22
    sget-object v4, Landroidx/constraintlayout/widget/c$c;->l:Landroid/util/SparseIntArray;

    .line 24
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 27
    move-result v4

    .line 28
    const/4 v5, 0x3

    .line 29
    packed-switch v4, :pswitch_data_bc

    .line 32
    goto/16 :goto_b3

    .line 34
    :pswitch_21  #0xa
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 37
    move-result-object v4

    .line 38
    iget v4, v4, Landroid/util/TypedValue;->type:I

    .line 40
    const/4 v6, -0x2

    .line 41
    const/4 v7, -0x1

    .line 42
    if-ne v4, p2, :cond_37

    .line 44
    invoke-virtual {p1, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 47
    move-result v3

    .line 48
    iput v3, p0, Landroidx/constraintlayout/widget/c$c;->k:I

    .line 50
    if-eq v3, v7, :cond_b3

    .line 52
    iput v6, p0, Landroidx/constraintlayout/widget/c$c;->j:I

    .line 54
    goto/16 :goto_b3

    .line 56
    :cond_37
    if-ne v4, v5, :cond_53

    .line 58
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 61
    move-result-object v4

    .line 62
    iput-object v4, p0, Landroidx/constraintlayout/widget/c$c;->i:Ljava/lang/String;

    .line 64
    const-string v5, "/"

    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 69
    move-result v4

    .line 70
    if-lez v4, :cond_50

    .line 72
    invoke-virtual {p1, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 75
    move-result v3

    .line 76
    iput v3, p0, Landroidx/constraintlayout/widget/c$c;->k:I

    .line 78
    iput v6, p0, Landroidx/constraintlayout/widget/c$c;->j:I

    .line 80
    goto :goto_b3

    .line 81
    :cond_50
    iput v7, p0, Landroidx/constraintlayout/widget/c$c;->j:I

    .line 83
    goto :goto_b3

    .line 84
    :cond_53
    iget v4, p0, Landroidx/constraintlayout/widget/c$c;->k:I

    .line 86
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 89
    move-result v3

    .line 90
    iput v3, p0, Landroidx/constraintlayout/widget/c$c;->j:I

    .line 92
    goto :goto_b3

    .line 93
    :pswitch_5c  #0x9
    iget v4, p0, Landroidx/constraintlayout/widget/c$c;->g:F

    .line 95
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 98
    move-result v3

    .line 99
    iput v3, p0, Landroidx/constraintlayout/widget/c$c;->g:F

    .line 101
    goto :goto_b3

    .line 102
    :pswitch_65  #0x8
    iget v4, p0, Landroidx/constraintlayout/widget/c$c;->h:I

    .line 104
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 107
    move-result v3

    .line 108
    iput v3, p0, Landroidx/constraintlayout/widget/c$c;->h:I

    .line 110
    goto :goto_b3

    .line 111
    :pswitch_6e  #0x7
    iget v4, p0, Landroidx/constraintlayout/widget/c$c;->e:F

    .line 113
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 116
    move-result v3

    .line 117
    iput v3, p0, Landroidx/constraintlayout/widget/c$c;->e:F

    .line 119
    goto :goto_b3

    .line 120
    :pswitch_77  #0x6
    iget v4, p0, Landroidx/constraintlayout/widget/c$c;->c:I

    .line 122
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 125
    move-result v3

    .line 126
    iput v3, p0, Landroidx/constraintlayout/widget/c$c;->c:I

    .line 128
    goto :goto_b3

    .line 129
    :pswitch_80  #0x5
    iget v4, p0, Landroidx/constraintlayout/widget/c$c;->b:I

    .line 131
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/c;->n(Landroid/content/res/TypedArray;II)I

    .line 134
    move-result v3

    .line 135
    iput v3, p0, Landroidx/constraintlayout/widget/c$c;->b:I

    .line 137
    goto :goto_b3

    .line 138
    :pswitch_89  #0x4
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 141
    goto :goto_b3

    .line 142
    :pswitch_8d  #0x3
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 145
    move-result-object v4

    .line 146
    iget v4, v4, Landroid/util/TypedValue;->type:I

    .line 148
    if-ne v4, v5, :cond_99

    .line 150
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 153
    goto :goto_b3

    .line 154
    :cond_99
    sget-object v4, Lu/c;->c:[Ljava/lang/String;

    .line 156
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 159
    move-result v3

    .line 160
    aget-object v3, v4, v3

    .line 162
    goto :goto_b3

    .line 163
    :pswitch_a2  #0x2
    iget v4, p0, Landroidx/constraintlayout/widget/c$c;->d:I

    .line 165
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 168
    move-result v3

    .line 169
    iput v3, p0, Landroidx/constraintlayout/widget/c$c;->d:I

    .line 171
    goto :goto_b3

    .line 172
    :pswitch_ab  #0x1
    iget v4, p0, Landroidx/constraintlayout/widget/c$c;->f:F

    .line 174
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 177
    move-result v3

    .line 178
    iput v3, p0, Landroidx/constraintlayout/widget/c$c;->f:F

    .line 180
    :cond_b3
    :goto_b3
    add-int/lit8 v2, v2, 0x1

    .line 182
    goto/16 :goto_f

    .line 184
    :cond_b7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    return-void

    .line 188
    nop

    .line 189
    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_ab  #00000001
        :pswitch_a2  #00000002
        :pswitch_8d  #00000003
        :pswitch_89  #00000004
        :pswitch_80  #00000005
        :pswitch_77  #00000006
        :pswitch_6e  #00000007
        :pswitch_65  #00000008
        :pswitch_5c  #00000009
        :pswitch_21  #0000000a
    .end packed-switch
.end method
