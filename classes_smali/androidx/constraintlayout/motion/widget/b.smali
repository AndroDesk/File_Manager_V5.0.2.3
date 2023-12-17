.class public final Landroidx/constraintlayout/motion/widget/b;
.super Ljava/lang/Object;
.source "TouchResponse.java"


# static fields
.field public static final C:[[F

.field public static final D:[[F


# instance fields
.field public A:I

.field public B:I

.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:F

.field public j:F

.field public k:Z

.field public l:[F

.field public m:[I

.field public n:F

.field public o:F

.field public final p:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public q:F

.field public r:F

.field public s:Z

.field public t:F

.field public u:I

.field public v:F

.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    const/4 v0, 0x7

    new-array v0, v0, [[F

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_6c

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_74

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_7c

    aput-object v2, v0, v1

    new-array v2, v1, [F

    fill-array-data v2, :array_84

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [F

    fill-array-data v2, :array_8c

    const/4 v6, 0x4

    aput-object v2, v0, v6

    new-array v2, v1, [F

    fill-array-data v2, :array_94

    const/4 v7, 0x5

    aput-object v2, v0, v7

    new-array v2, v1, [F

    fill-array-data v2, :array_9c

    const/4 v8, 0x6

    aput-object v2, v0, v8

    sput-object v0, Landroidx/constraintlayout/motion/widget/b;->C:[[F

    new-array v0, v8, [[F

    new-array v2, v1, [F

    fill-array-data v2, :array_a4

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_ac

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_b4

    aput-object v2, v0, v1

    new-array v2, v1, [F

    fill-array-data v2, :array_bc

    aput-object v2, v0, v5

    new-array v2, v1, [F

    fill-array-data v2, :array_c4

    aput-object v2, v0, v6

    new-array v1, v1, [F

    fill-array-data v1, :array_cc

    aput-object v1, v0, v7

    sput-object v0, Landroidx/constraintlayout/motion/widget/b;->D:[[F

    return-void

    :array_6c
    .array-data 4
        0x3f000000  # 0.5f
        0x0
    .end array-data

    :array_74
    .array-data 4
        0x0
        0x3f000000  # 0.5f
    .end array-data

    :array_7c
    .array-data 4
        0x3f800000  # 1.0f
        0x3f000000  # 0.5f
    .end array-data

    :array_84
    .array-data 4
        0x3f000000  # 0.5f
        0x3f800000  # 1.0f
    .end array-data

    :array_8c
    .array-data 4
        0x3f000000  # 0.5f
        0x3f000000  # 0.5f
    .end array-data

    :array_94
    .array-data 4
        0x0
        0x3f000000  # 0.5f
    .end array-data

    :array_9c
    .array-data 4
        0x3f800000  # 1.0f
        0x3f000000  # 0.5f
    .end array-data

    :array_a4
    .array-data 4
        0x0
        -0x40800000  # -1.0f
    .end array-data

    :array_ac
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_b4
    .array-data 4
        -0x40800000  # -1.0f
        0x0
    .end array-data

    :array_bc
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_c4
    .array-data 4
        -0x40800000  # -1.0f
        0x0
    .end array-data

    :array_cc
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/content/res/XmlResourceParser;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/b;->a:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/b;->b:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/b;->c:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/b;->d:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/b;->e:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/b;->f:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/b;->g:I

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/b;->h:Z

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/motion/widget/b;->i:F

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Landroidx/constraintlayout/motion/widget/b;->j:F

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/b;->k:Z

    const/4 v2, 0x2

    new-array v3, v2, [F

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/b;->l:[F

    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/b;->m:[I

    const/high16 v2, 0x40800000  # 4.0f

    iput v2, p0, Landroidx/constraintlayout/motion/widget/b;->q:F

    const v2, 0x3f99999a  # 1.2f

    iput v2, p0, Landroidx/constraintlayout/motion/widget/b;->r:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/b;->s:Z

    iput v1, p0, Landroidx/constraintlayout/motion/widget/b;->t:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/b;->u:I

    const/high16 v3, 0x41200000  # 10.0f

    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->v:F

    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->w:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/b;->x:F

    const/high16 v1, 0x7fc00000  # Float.NaN

    iput v1, p0, Landroidx/constraintlayout/motion/widget/b;->y:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/b;->z:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/b;->A:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/b;->B:I

    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/b;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object p3, Lz/d;->OnSwipe:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move p3, v0

    :goto_5a
    if-ge p3, p2, :cond_17f

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    sget v4, Lz/d;->OnSwipe_touchAnchorId:I

    if-ne v3, v4, :cond_6e

    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->d:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->d:I

    goto/16 :goto_17b

    :cond_6e
    sget v4, Lz/d;->OnSwipe_touchAnchorSide:I

    if-ne v3, v4, :cond_84

    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->a:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->a:I

    sget-object v4, Landroidx/constraintlayout/motion/widget/b;->C:[[F

    aget-object v3, v4, v3

    aget v4, v3, v0

    aget v3, v3, v2

    goto/16 :goto_17b

    :cond_84
    sget v4, Lz/d;->OnSwipe_dragDirection:I

    if-ne v3, v4, :cond_a9

    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->b:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->b:I

    sget-object v4, Landroidx/constraintlayout/motion/widget/b;->D:[[F

    const/4 v5, 0x6

    if-ge v3, v5, :cond_a1

    aget-object v3, v4, v3

    aget v4, v3, v0

    iput v4, p0, Landroidx/constraintlayout/motion/widget/b;->i:F

    aget v3, v3, v2

    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->j:F

    goto/16 :goto_17b

    :cond_a1
    iput v1, p0, Landroidx/constraintlayout/motion/widget/b;->j:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/b;->i:F

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/b;->h:Z

    goto/16 :goto_17b

    :cond_a9
    sget v4, Lz/d;->OnSwipe_maxVelocity:I

    if-ne v3, v4, :cond_b7

    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->q:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->q:F

    goto/16 :goto_17b

    :cond_b7
    sget v4, Lz/d;->OnSwipe_maxAcceleration:I

    if-ne v3, v4, :cond_c5

    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->r:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->r:F

    goto/16 :goto_17b

    :cond_c5
    sget v4, Lz/d;->OnSwipe_moveWhenScrollAtTop:I

    if-ne v3, v4, :cond_d3

    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/b;->s:Z

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/b;->s:Z

    goto/16 :goto_17b

    :cond_d3
    sget v4, Lz/d;->OnSwipe_dragScale:I

    if-ne v3, v4, :cond_e1

    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->t:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->t:F

    goto/16 :goto_17b

    :cond_e1
    sget v4, Lz/d;->OnSwipe_dragThreshold:I

    if-ne v3, v4, :cond_ef

    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->v:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->v:F

    goto/16 :goto_17b

    :cond_ef
    sget v4, Lz/d;->OnSwipe_touchRegionId:I

    if-ne v3, v4, :cond_fd

    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->e:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->e:I

    goto/16 :goto_17b

    :cond_fd
    sget v4, Lz/d;->OnSwipe_onTouchUp:I

    if-ne v3, v4, :cond_10b

    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->c:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->c:I

    goto/16 :goto_17b

    :cond_10b
    sget v4, Lz/d;->OnSwipe_nestedScrollFlags:I

    if-ne v3, v4, :cond_116

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->u:I

    goto :goto_17b

    :cond_116
    sget v4, Lz/d;->OnSwipe_limitBoundsTo:I

    if-ne v3, v4, :cond_121

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->f:I

    goto :goto_17b

    :cond_121
    sget v4, Lz/d;->OnSwipe_rotationCenterId:I

    if-ne v3, v4, :cond_12e

    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->g:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->g:I

    goto :goto_17b

    :cond_12e
    sget v4, Lz/d;->OnSwipe_springDamping:I

    if-ne v3, v4, :cond_13b

    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->w:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->w:F

    goto :goto_17b

    :cond_13b
    sget v4, Lz/d;->OnSwipe_springMass:I

    if-ne v3, v4, :cond_148

    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->x:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->x:F

    goto :goto_17b

    :cond_148
    sget v4, Lz/d;->OnSwipe_springStiffness:I

    if-ne v3, v4, :cond_155

    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->y:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->y:F

    goto :goto_17b

    :cond_155
    sget v4, Lz/d;->OnSwipe_springStopThreshold:I

    if-ne v3, v4, :cond_162

    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->z:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->z:F

    goto :goto_17b

    :cond_162
    sget v4, Lz/d;->OnSwipe_springBoundary:I

    if-ne v3, v4, :cond_16f

    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->A:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->A:I

    goto :goto_17b

    :cond_16f
    sget v4, Lz/d;->OnSwipe_autoCompleteMode:I

    if-ne v3, v4, :cond_17b

    iget v4, p0, Landroidx/constraintlayout/motion/widget/b;->B:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/b;->B:I

    :cond_17b
    :goto_17b
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_5a

    :cond_17f
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .registers 6

    iget v0, p0, Landroidx/constraintlayout/motion/widget/b;->f:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    return-object v1

    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_e

    return-object v1

    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-object p2
.end method

.method public final b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .registers 6

    iget v0, p0, Landroidx/constraintlayout/motion/widget/b;->e:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    return-object v1

    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_e

    return-object v1

    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-object p2
.end method

.method public final c(Z)V
    .registers 9

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x2

    if-eqz p1, :cond_1d

    sget-object p1, Landroidx/constraintlayout/motion/widget/b;->D:[[F

    aget-object v0, p1, v0

    aput-object v0, p1, v1

    aget-object v0, p1, v5

    aput-object v0, p1, v4

    sget-object p1, Landroidx/constraintlayout/motion/widget/b;->C:[[F

    aget-object v0, p1, v5

    aput-object v0, p1, v4

    aget-object v0, p1, v3

    aput-object v0, p1, v2

    goto :goto_31

    :cond_1d
    sget-object p1, Landroidx/constraintlayout/motion/widget/b;->D:[[F

    aget-object v6, p1, v5

    aput-object v6, p1, v1

    aget-object v0, p1, v0

    aput-object v0, p1, v4

    sget-object p1, Landroidx/constraintlayout/motion/widget/b;->C:[[F

    aget-object v0, p1, v3

    aput-object v0, p1, v4

    aget-object v0, p1, v5

    aput-object v0, p1, v2

    :goto_31
    sget-object p1, Landroidx/constraintlayout/motion/widget/b;->C:[[F

    iget v0, p0, Landroidx/constraintlayout/motion/widget/b;->a:I

    aget-object p1, p1, v0

    const/4 v0, 0x0

    aget v1, p1, v0

    aget p1, p1, v3

    iget p1, p0, Landroidx/constraintlayout/motion/widget/b;->b:I

    sget-object v1, Landroidx/constraintlayout/motion/widget/b;->D:[[F

    if-lt p1, v2, :cond_43

    return-void

    :cond_43
    aget-object p1, v1, p1

    aget v0, p1, v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/b;->i:F

    aget p1, p1, v3

    iput p1, p0, Landroidx/constraintlayout/motion/widget/b;->j:F

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Landroidx/constraintlayout/motion/widget/b;->i:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "rotation"

    goto :goto_23

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroidx/constraintlayout/motion/widget/b;->i:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/b;->j:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_23
    return-object v0
.end method
