.class public final Landroidx/constraintlayout/widget/c$b;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static q0:Landroid/util/SparseIntArray;


# instance fields
.field public A:I

.field public B:I

.field public C:F

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:F

.field public V:F

.field public W:I

.field public X:I

.field public Y:I

.field public Z:I

.field public a:Z

.field public a0:I

.field public b:Z

.field public b0:I

.field public c:I

.field public c0:I

.field public d:I

.field public d0:I

.field public e:I

.field public e0:F

.field public f:I

.field public f0:F

.field public g:F

.field public g0:I

.field public h:Z

.field public h0:I

.field public i:I

.field public i0:I

.field public j:I

.field public j0:[I

.field public k:I

.field public k0:Ljava/lang/String;

.field public l:I

.field public l0:Ljava/lang/String;

.field public m:I

.field public m0:Z

.field public n:I

.field public n0:Z

.field public o:I

.field public o0:Z

.field public p:I

.field public p0:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:F

.field public y:F

.field public z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintLeft_toLeftOf:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintLeft_toRightOf:I

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintRight_toLeftOf:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintRight_toRightOf:I

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintTop_toTopOf:I

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintTop_toBottomOf:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintBottom_toTopOf:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintBottom_toBottomOf:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintBaseline_toBaselineOf:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_editor_absoluteX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_editor_absoluteY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintGuide_begin:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintGuide_end:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintGuide_percent:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_guidelineUseRtl:I

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_android_orientation:I

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintStart_toEndOf:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintStart_toStartOf:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintEnd_toStartOf:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintEnd_toEndOf:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_goneMarginLeft:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_goneMarginTop:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_goneMarginRight:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_goneMarginBottom:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_goneMarginStart:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_goneMarginEnd:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintVertical_weight:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintHorizontal_weight:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintHorizontal_chainStyle:I

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintVertical_chainStyle:I

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintHorizontal_bias:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintVertical_bias:I

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintDimensionRatio:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintLeft_creator:I

    const/16 v2, 0x5b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintTop_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintRight_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintBottom_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintBaseline_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_android_layout_marginLeft:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_android_layout_marginRight:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_android_layout_marginStart:I

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_android_layout_marginEnd:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_android_layout_marginTop:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_android_layout_marginBottom:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_android_layout_width:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_android_layout_height:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintWidth:I

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintHeight:I

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constrainedWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constrainedHeight:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_wrapBehaviorInParent:I

    const/16 v2, 0x4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintCircle:I

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintCircleRadius:I

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintCircleAngle:I

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintWidth_percent:I

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_layout_constraintHeight_percent:I

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_chainUseRtl:I

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_barrierDirection:I

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_barrierMargin:I

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_constraint_referenced_ids:I

    const/16 v2, 0x4a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->Layout_barrierAllowsGoneWidgets:I

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/c$b;->a:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/c$b;->b:Z

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->e:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->f:I

    const/high16 v2, -0x40800000  # -1.0f

    iput v2, p0, Landroidx/constraintlayout/widget/c$b;->g:F

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroidx/constraintlayout/widget/c$b;->h:Z

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->i:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->j:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->k:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->l:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->m:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->n:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->o:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->p:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->q:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->r:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->s:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->t:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->u:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->v:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->w:I

    const/high16 v4, 0x3f000000  # 0.5f

    iput v4, p0, Landroidx/constraintlayout/widget/c$b;->x:F

    iput v4, p0, Landroidx/constraintlayout/widget/c$b;->y:F

    const/4 v4, 0x0

    iput-object v4, p0, Landroidx/constraintlayout/widget/c$b;->z:Ljava/lang/String;

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->A:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->B:I

    const/4 v4, 0x0

    iput v4, p0, Landroidx/constraintlayout/widget/c$b;->C:F

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->D:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->E:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->F:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->G:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->H:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->I:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->J:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->K:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->L:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->M:I

    const/high16 v4, -0x80000000

    iput v4, p0, Landroidx/constraintlayout/widget/c$b;->N:I

    iput v4, p0, Landroidx/constraintlayout/widget/c$b;->O:I

    iput v4, p0, Landroidx/constraintlayout/widget/c$b;->P:I

    iput v4, p0, Landroidx/constraintlayout/widget/c$b;->Q:I

    iput v4, p0, Landroidx/constraintlayout/widget/c$b;->R:I

    iput v4, p0, Landroidx/constraintlayout/widget/c$b;->S:I

    iput v4, p0, Landroidx/constraintlayout/widget/c$b;->T:I

    iput v2, p0, Landroidx/constraintlayout/widget/c$b;->U:F

    iput v2, p0, Landroidx/constraintlayout/widget/c$b;->V:F

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->W:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->X:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->Y:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->Z:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->a0:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->b0:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->c0:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->d0:I

    const/high16 v2, 0x3f800000  # 1.0f

    iput v2, p0, Landroidx/constraintlayout/widget/c$b;->e0:F

    iput v2, p0, Landroidx/constraintlayout/widget/c$b;->f0:F

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->g0:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->h0:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->i0:I

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/c$b;->m0:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/c$b;->n0:Z

    iput-boolean v3, p0, Landroidx/constraintlayout/widget/c$b;->o0:Z

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->p0:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/widget/c$b;)V
    .registers 4

    iget-boolean v0, p1, Landroidx/constraintlayout/widget/c$b;->a:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/c$b;->a:Z

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->c:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->c:I

    iget-boolean v0, p1, Landroidx/constraintlayout/widget/c$b;->b:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/c$b;->b:Z

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->d:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->d:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->e:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->e:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->f:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->f:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->g:F

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->g:F

    iget-boolean v0, p1, Landroidx/constraintlayout/widget/c$b;->h:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/c$b;->h:Z

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->i:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->i:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->j:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->j:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->k:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->k:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->l:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->l:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->m:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->m:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->n:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->n:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->o:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->o:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->p:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->p:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->q:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->q:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->r:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->r:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->s:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->s:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->t:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->t:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->u:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->u:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->v:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->v:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->w:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->w:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->x:F

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->x:F

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->y:F

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->y:F

    iget-object v0, p1, Landroidx/constraintlayout/widget/c$b;->z:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/widget/c$b;->z:Ljava/lang/String;

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->A:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->A:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->B:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->B:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->C:F

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->C:F

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->D:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->D:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->E:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->E:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->F:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->F:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->G:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->G:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->H:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->H:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->I:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->I:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->J:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->J:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->K:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->K:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->L:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->L:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->M:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->M:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->N:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->N:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->O:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->O:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->P:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->P:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->Q:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->Q:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->R:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->R:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->S:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->S:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->T:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->T:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->U:F

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->U:F

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->V:F

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->V:F

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->W:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->W:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->X:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->X:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->Y:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->Y:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->Z:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->Z:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->a0:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->a0:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->b0:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->b0:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->c0:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->c0:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->d0:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->d0:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->e0:F

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->e0:F

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->f0:F

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->f0:F

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->g0:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->g0:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->h0:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->h0:I

    iget v0, p1, Landroidx/constraintlayout/widget/c$b;->i0:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->i0:I

    iget-object v0, p1, Landroidx/constraintlayout/widget/c$b;->l0:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/widget/c$b;->l0:Ljava/lang/String;

    iget-object v0, p1, Landroidx/constraintlayout/widget/c$b;->j0:[I

    if-eqz v0, :cond_108

    iget-object v1, p1, Landroidx/constraintlayout/widget/c$b;->k0:Ljava/lang/String;

    if-nez v1, :cond_108

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/widget/c$b;->j0:[I

    goto :goto_10b

    :cond_108
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/c$b;->j0:[I

    :goto_10b
    iget-object v0, p1, Landroidx/constraintlayout/widget/c$b;->k0:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/widget/c$b;->k0:Ljava/lang/String;

    iget-boolean v0, p1, Landroidx/constraintlayout/widget/c$b;->m0:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/c$b;->m0:Z

    iget-boolean v0, p1, Landroidx/constraintlayout/widget/c$b;->n0:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/c$b;->n0:Z

    iget-boolean v0, p1, Landroidx/constraintlayout/widget/c$b;->o0:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/c$b;->o0:Z

    iget p1, p1, Landroidx/constraintlayout/widget/c$b;->p0:I

    iput p1, p0, Landroidx/constraintlayout/widget/c$b;->p0:I

    return-void
.end method

.method public final b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    sget-object v0, Lz/d;->Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/constraintlayout/widget/c$b;->b:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_f
    if-ge v2, v0, :cond_2eb

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    sget-object v4, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    packed-switch v4, :pswitch_data_2f0

    packed-switch v4, :pswitch_data_348

    const/high16 v5, 0x3f800000  # 1.0f

    const-string v6, "   "

    const-string v7, "ConstraintSet"

    packed-switch v4, :pswitch_data_352

    const-string v4, "Unknown attribute 0x"

    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e7

    :pswitch_4c  #0x2a
    invoke-static {p0, p1, v3, p2}, Landroidx/constraintlayout/widget/c;->o(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_2e7

    :pswitch_51  #0x29
    invoke-static {p0, p1, v3, v1}, Landroidx/constraintlayout/widget/c;->o(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_2e7

    :pswitch_56  #0x28
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->X:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->X:I

    goto/16 :goto_2e7

    :pswitch_60  #0x27
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->W:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->W:I

    goto/16 :goto_2e7

    :pswitch_6a  #0x26
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->U:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->U:F

    goto/16 :goto_2e7

    :pswitch_74  #0x25
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->V:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->V:F

    goto/16 :goto_2e7

    :pswitch_7e  #0x24
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->y:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->y:F

    goto/16 :goto_2e7

    :pswitch_88  #0x23
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->m:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/c;->n(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->m:I

    goto/16 :goto_2e7

    :pswitch_92  #0x22
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->n:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/c;->n(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->n:I

    goto/16 :goto_2e7

    :pswitch_9c  #0x21
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->I:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->I:I

    goto/16 :goto_2e7

    :pswitch_a6  #0x20
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->u:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/c;->n(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->u:I

    goto/16 :goto_2e7

    :pswitch_b0  #0x1f
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->t:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/c;->n(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->t:I

    goto/16 :goto_2e7

    :pswitch_ba  #0x1e
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->L:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->L:I

    goto/16 :goto_2e7

    :pswitch_c4  #0x1d
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->l:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/c;->n(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->l:I

    goto/16 :goto_2e7

    :pswitch_ce  #0x1c
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->k:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/c;->n(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->k:I

    goto/16 :goto_2e7

    :pswitch_d8  #0x1b
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->H:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->H:I

    goto/16 :goto_2e7

    :pswitch_e2  #0x1a
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->F:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->F:I

    goto/16 :goto_2e7

    :pswitch_ec  #0x19
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->j:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/c;->n(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->j:I

    goto/16 :goto_2e7

    :pswitch_f6  #0x18
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->i:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/c;->n(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->i:I

    goto/16 :goto_2e7

    :pswitch_100  #0x17
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->G:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->G:I

    goto/16 :goto_2e7

    :pswitch_10a  #0x16
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->c:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->c:I

    goto/16 :goto_2e7

    :pswitch_114  #0x15
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->d:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->d:I

    goto/16 :goto_2e7

    :pswitch_11e  #0x14
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->x:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->x:F

    goto/16 :goto_2e7

    :pswitch_128  #0x13
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->g:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->g:F

    goto/16 :goto_2e7

    :pswitch_132  #0x12
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->f:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->f:I

    goto/16 :goto_2e7

    :pswitch_13c  #0x11
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->e:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->e:I

    goto/16 :goto_2e7

    :pswitch_146  #0x10
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->O:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->O:I

    goto/16 :goto_2e7

    :pswitch_150  #0xf
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->S:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->S:I

    goto/16 :goto_2e7

    :pswitch_15a  #0xe
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->P:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->P:I

    goto/16 :goto_2e7

    :pswitch_164  #0xd
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->N:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->N:I

    goto/16 :goto_2e7

    :pswitch_16e  #0xc
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->R:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->R:I

    goto/16 :goto_2e7

    :pswitch_178  #0xb
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->Q:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->Q:I

    goto/16 :goto_2e7

    :pswitch_182  #0xa
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->v:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/c;->n(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->v:I

    goto/16 :goto_2e7

    :pswitch_18c  #0x9
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->w:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/c;->n(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->w:I

    goto/16 :goto_2e7

    :pswitch_196  #0x8
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->K:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->K:I

    goto/16 :goto_2e7

    :pswitch_1a0  #0x7
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->E:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->E:I

    goto/16 :goto_2e7

    :pswitch_1aa  #0x6
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->D:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->D:I

    goto/16 :goto_2e7

    :pswitch_1b4  #0x5
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/widget/c$b;->z:Ljava/lang/String;

    goto/16 :goto_2e7

    :pswitch_1bc  #0x4
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->o:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/c;->n(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->o:I

    goto/16 :goto_2e7

    :pswitch_1c6  #0x3
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->p:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/c;->n(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->p:I

    goto/16 :goto_2e7

    :pswitch_1d0  #0x2
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->J:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->J:I

    goto/16 :goto_2e7

    :pswitch_1da  #0x1
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->q:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/c;->n(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->q:I

    goto/16 :goto_2e7

    :pswitch_1e4  #0x3f
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->C:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->C:F

    goto/16 :goto_2e7

    :pswitch_1ee  #0x3e
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->B:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->B:I

    goto/16 :goto_2e7

    :pswitch_1f8  #0x3d
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->A:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/c;->n(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->A:I

    goto/16 :goto_2e7

    :pswitch_202  #0x5b
    const-string v4, "unused attribute 0x"

    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroidx/constraintlayout/widget/c$b;->q0:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e7

    :pswitch_224  #0x5a
    iget-boolean v4, p0, Landroidx/constraintlayout/widget/c$b;->h:Z

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/constraintlayout/widget/c$b;->h:Z

    goto/16 :goto_2e7

    :pswitch_22e  #0x59
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/widget/c$b;->l0:Ljava/lang/String;

    goto/16 :goto_2e7

    :pswitch_236  #0x58
    iget-boolean v4, p0, Landroidx/constraintlayout/widget/c$b;->n0:Z

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/constraintlayout/widget/c$b;->n0:Z

    goto/16 :goto_2e7

    :pswitch_240  #0x57
    iget-boolean v4, p0, Landroidx/constraintlayout/widget/c$b;->m0:Z

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/constraintlayout/widget/c$b;->m0:Z

    goto/16 :goto_2e7

    :pswitch_24a  #0x56
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->c0:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->c0:I

    goto/16 :goto_2e7

    :pswitch_254  #0x55
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->d0:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->d0:I

    goto/16 :goto_2e7

    :pswitch_25e  #0x54
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->a0:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->a0:I

    goto/16 :goto_2e7

    :pswitch_268  #0x53
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->b0:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->b0:I

    goto/16 :goto_2e7

    :pswitch_272  #0x52
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->Z:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->Z:I

    goto/16 :goto_2e7

    :pswitch_27c  #0x51
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->Y:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->Y:I

    goto :goto_2e7

    :pswitch_285  #0x50
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->M:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->M:I

    goto :goto_2e7

    :pswitch_28e  #0x4f
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->T:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->T:I

    goto :goto_2e7

    :pswitch_297  #0x4e
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->s:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/c;->n(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->s:I

    goto :goto_2e7

    :pswitch_2a0  #0x4d
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->r:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/c;->n(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->r:I

    goto :goto_2e7

    :pswitch_2a9  #0x4c
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->p0:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->p0:I

    goto :goto_2e7

    :pswitch_2b2  #0x4b
    iget-boolean v4, p0, Landroidx/constraintlayout/widget/c$b;->o0:Z

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/constraintlayout/widget/c$b;->o0:Z

    goto :goto_2e7

    :pswitch_2bb  #0x4a
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/widget/c$b;->k0:Ljava/lang/String;

    goto :goto_2e7

    :pswitch_2c2  #0x49
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->h0:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->h0:I

    goto :goto_2e7

    :pswitch_2cb  #0x48
    iget v4, p0, Landroidx/constraintlayout/widget/c$b;->g0:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->g0:I

    goto :goto_2e7

    :pswitch_2d4  #0x47
    const-string v3, "CURRENTLY UNSUPPORTED"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e7

    :pswitch_2da  #0x46
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->f0:F

    goto :goto_2e7

    :pswitch_2e1  #0x45
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/c$b;->e0:F

    :goto_2e7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    :cond_2eb
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :pswitch_data_2f0
    .packed-switch 0x1
        :pswitch_1da  #00000001
        :pswitch_1d0  #00000002
        :pswitch_1c6  #00000003
        :pswitch_1bc  #00000004
        :pswitch_1b4  #00000005
        :pswitch_1aa  #00000006
        :pswitch_1a0  #00000007
        :pswitch_196  #00000008
        :pswitch_18c  #00000009
        :pswitch_182  #0000000a
        :pswitch_178  #0000000b
        :pswitch_16e  #0000000c
        :pswitch_164  #0000000d
        :pswitch_15a  #0000000e
        :pswitch_150  #0000000f
        :pswitch_146  #00000010
        :pswitch_13c  #00000011
        :pswitch_132  #00000012
        :pswitch_128  #00000013
        :pswitch_11e  #00000014
        :pswitch_114  #00000015
        :pswitch_10a  #00000016
        :pswitch_100  #00000017
        :pswitch_f6  #00000018
        :pswitch_ec  #00000019
        :pswitch_e2  #0000001a
        :pswitch_d8  #0000001b
        :pswitch_ce  #0000001c
        :pswitch_c4  #0000001d
        :pswitch_ba  #0000001e
        :pswitch_b0  #0000001f
        :pswitch_a6  #00000020
        :pswitch_9c  #00000021
        :pswitch_92  #00000022
        :pswitch_88  #00000023
        :pswitch_7e  #00000024
        :pswitch_74  #00000025
        :pswitch_6a  #00000026
        :pswitch_60  #00000027
        :pswitch_56  #00000028
        :pswitch_51  #00000029
        :pswitch_4c  #0000002a
    .end packed-switch

    :pswitch_data_348
    .packed-switch 0x3d
        :pswitch_1f8  #0000003d
        :pswitch_1ee  #0000003e
        :pswitch_1e4  #0000003f
    .end packed-switch

    :pswitch_data_352
    .packed-switch 0x45
        :pswitch_2e1  #00000045
        :pswitch_2da  #00000046
        :pswitch_2d4  #00000047
        :pswitch_2cb  #00000048
        :pswitch_2c2  #00000049
        :pswitch_2bb  #0000004a
        :pswitch_2b2  #0000004b
        :pswitch_2a9  #0000004c
        :pswitch_2a0  #0000004d
        :pswitch_297  #0000004e
        :pswitch_28e  #0000004f
        :pswitch_285  #00000050
        :pswitch_27c  #00000051
        :pswitch_272  #00000052
        :pswitch_268  #00000053
        :pswitch_25e  #00000054
        :pswitch_254  #00000055
        :pswitch_24a  #00000056
        :pswitch_240  #00000057
        :pswitch_236  #00000058
        :pswitch_22e  #00000059
        :pswitch_224  #0000005a
        :pswitch_202  #0000005b
    .end packed-switch
.end method
