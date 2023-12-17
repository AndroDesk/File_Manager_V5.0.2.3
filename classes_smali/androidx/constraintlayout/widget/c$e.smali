.class public final Landroidx/constraintlayout/widget/c$e;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field public static o:Landroid/util/SparseIntArray;


# instance fields
.field public a:Z

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:I

.field public j:F

.field public k:F

.field public l:F

.field public m:Z

.field public n:F


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/constraintlayout/widget/c$e;->o:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Transform_android_rotation:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$e;->o:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Transform_android_rotationX:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$e;->o:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Transform_android_rotationY:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$e;->o:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Transform_android_scaleX:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$e;->o:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Transform_android_scaleY:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$e;->o:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Transform_android_transformPivotX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$e;->o:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Transform_android_transformPivotY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$e;->o:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Transform_android_translationX:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$e;->o:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Transform_android_translationY:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$e;->o:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Transform_android_translationZ:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$e;->o:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Transform_android_elevation:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$e;->o:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Transform_transformPivotTarget:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/c$e;->a:Z

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/widget/c$e;->b:F

    iput v1, p0, Landroidx/constraintlayout/widget/c$e;->c:F

    iput v1, p0, Landroidx/constraintlayout/widget/c$e;->d:F

    const/high16 v2, 0x3f800000  # 1.0f

    iput v2, p0, Landroidx/constraintlayout/widget/c$e;->e:F

    iput v2, p0, Landroidx/constraintlayout/widget/c$e;->f:F

    const/high16 v2, 0x7fc00000  # Float.NaN

    iput v2, p0, Landroidx/constraintlayout/widget/c$e;->g:F

    iput v2, p0, Landroidx/constraintlayout/widget/c$e;->h:F

    const/4 v2, -0x1

    iput v2, p0, Landroidx/constraintlayout/widget/c$e;->i:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$e;->j:F

    iput v1, p0, Landroidx/constraintlayout/widget/c$e;->k:F

    iput v1, p0, Landroidx/constraintlayout/widget/c$e;->l:F

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/c$e;->m:Z

    iput v1, p0, Landroidx/constraintlayout/widget/c$e;->n:F

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/widget/c$e;)V
    .registers 3

    iget-boolean v0, p1, Landroidx/constraintlayout/widget/c$e;->a:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/c$e;->a:Z

    iget v0, p1, Landroidx/constraintlayout/widget/c$e;->b:F

    iput v0, p0, Landroidx/constraintlayout/widget/c$e;->b:F

    iget v0, p1, Landroidx/constraintlayout/widget/c$e;->c:F

    iput v0, p0, Landroidx/constraintlayout/widget/c$e;->c:F

    iget v0, p1, Landroidx/constraintlayout/widget/c$e;->d:F

    iput v0, p0, Landroidx/constraintlayout/widget/c$e;->d:F

    iget v0, p1, Landroidx/constraintlayout/widget/c$e;->e:F

    iput v0, p0, Landroidx/constraintlayout/widget/c$e;->e:F

    iget v0, p1, Landroidx/constraintlayout/widget/c$e;->f:F

    iput v0, p0, Landroidx/constraintlayout/widget/c$e;->f:F

    iget v0, p1, Landroidx/constraintlayout/widget/c$e;->g:F

    iput v0, p0, Landroidx/constraintlayout/widget/c$e;->g:F

    iget v0, p1, Landroidx/constraintlayout/widget/c$e;->h:F

    iput v0, p0, Landroidx/constraintlayout/widget/c$e;->h:F

    iget v0, p1, Landroidx/constraintlayout/widget/c$e;->i:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$e;->i:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$e;->j:F

    iput v0, p0, Landroidx/constraintlayout/widget/c$e;->j:F

    iget v0, p1, Landroidx/constraintlayout/widget/c$e;->k:F

    iput v0, p0, Landroidx/constraintlayout/widget/c$e;->k:F

    iget v0, p1, Landroidx/constraintlayout/widget/c$e;->l:F

    iput v0, p0, Landroidx/constraintlayout/widget/c$e;->l:F

    iget-boolean v0, p1, Landroidx/constraintlayout/widget/c$e;->m:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/c$e;->m:Z

    iget p1, p1, Landroidx/constraintlayout/widget/c$e;->n:F

    iput p1, p0, Landroidx/constraintlayout/widget/c$e;->n:F

    return-void
.end method

.method public final b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    sget-object v0, Lz/d;->Transform:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/constraintlayout/widget/c$e;->a:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_90

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    sget-object v3, Landroidx/constraintlayout/widget/c$e;->o:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    packed-switch v3, :pswitch_data_94

    goto/16 :goto_8c

    :pswitch_1f  #0xc
    iget v3, p0, Landroidx/constraintlayout/widget/c$e;->i:I

    invoke-static {p1, v2, v3}, Landroidx/constraintlayout/widget/c;->n(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/c$e;->i:I

    goto :goto_8c

    :pswitch_28  #0xb
    iput-boolean p2, p0, Landroidx/constraintlayout/widget/c$e;->m:Z

    iget v3, p0, Landroidx/constraintlayout/widget/c$e;->n:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/c$e;->n:F

    goto :goto_8c

    :pswitch_33  #0xa
    iget v3, p0, Landroidx/constraintlayout/widget/c$e;->l:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/c$e;->l:F

    goto :goto_8c

    :pswitch_3c  #0x9
    iget v3, p0, Landroidx/constraintlayout/widget/c$e;->k:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/c$e;->k:F

    goto :goto_8c

    :pswitch_45  #0x8
    iget v3, p0, Landroidx/constraintlayout/widget/c$e;->j:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/c$e;->j:F

    goto :goto_8c

    :pswitch_4e  #0x7
    iget v3, p0, Landroidx/constraintlayout/widget/c$e;->h:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/c$e;->h:F

    goto :goto_8c

    :pswitch_57  #0x6
    iget v3, p0, Landroidx/constraintlayout/widget/c$e;->g:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/c$e;->g:F

    goto :goto_8c

    :pswitch_60  #0x5
    iget v3, p0, Landroidx/constraintlayout/widget/c$e;->f:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/c$e;->f:F

    goto :goto_8c

    :pswitch_69  #0x4
    iget v3, p0, Landroidx/constraintlayout/widget/c$e;->e:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/c$e;->e:F

    goto :goto_8c

    :pswitch_72  #0x3
    iget v3, p0, Landroidx/constraintlayout/widget/c$e;->d:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/c$e;->d:F

    goto :goto_8c

    :pswitch_7b  #0x2
    iget v3, p0, Landroidx/constraintlayout/widget/c$e;->c:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/c$e;->c:F

    goto :goto_8c

    :pswitch_84  #0x1
    iget v3, p0, Landroidx/constraintlayout/widget/c$e;->b:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/c$e;->b:F

    :goto_8c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_e

    :cond_90
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_84  #00000001
        :pswitch_7b  #00000002
        :pswitch_72  #00000003
        :pswitch_69  #00000004
        :pswitch_60  #00000005
        :pswitch_57  #00000006
        :pswitch_4e  #00000007
        :pswitch_45  #00000008
        :pswitch_3c  #00000009
        :pswitch_33  #0000000a
        :pswitch_28  #0000000b
        :pswitch_1f  #0000000c
    .end packed-switch
.end method
