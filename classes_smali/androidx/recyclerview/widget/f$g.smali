.class public Landroidx/recyclerview/widget/f$g;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:Landroidx/recyclerview/widget/RecyclerView$b0;

.field public final f:I

.field public final g:Landroid/animation/ValueAnimator;

.field public h:Z

.field public i:F

.field public j:F

.field public k:Z

.field public l:Z

.field public m:F


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$b0;IFFFF)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/recyclerview/widget/f$g;->k:Z

    .line 7
    iput-boolean v0, p0, Landroidx/recyclerview/widget/f$g;->l:Z

    .line 9
    iput p2, p0, Landroidx/recyclerview/widget/f$g;->f:I

    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/f$g;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 13
    iput p3, p0, Landroidx/recyclerview/widget/f$g;->a:F

    .line 15
    iput p4, p0, Landroidx/recyclerview/widget/f$g;->b:F

    .line 17
    iput p5, p0, Landroidx/recyclerview/widget/f$g;->c:F

    .line 19
    iput p6, p0, Landroidx/recyclerview/widget/f$g;->d:F

    .line 21
    const/4 p2, 0x2

    .line 22
    new-array p2, p2, [F

    .line 24
    fill-array-data p2, :array_34

    .line 27
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 30
    move-result-object p2

    .line 31
    iput-object p2, p0, Landroidx/recyclerview/widget/f$g;->g:Landroid/animation/ValueAnimator;

    .line 33
    new-instance p3, Landroidx/recyclerview/widget/g;

    .line 35
    invoke-direct {p3, p0}, Landroidx/recyclerview/widget/g;-><init>(Landroidx/recyclerview/widget/f$g;)V

    .line 38
    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 41
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 43
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p2, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 49
    const/4 p1, 0x0

    .line 50
    iput p1, p0, Landroidx/recyclerview/widget/f$g;->m:F

    .line 52
    return-void

    .line 53
    :array_34
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 1
    const/high16 p1, 0x3f800000  # 1.0f

    .line 3
    iput p1, p0, Landroidx/recyclerview/widget/f$g;->m:F

    .line 5
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-boolean p1, p0, Landroidx/recyclerview/widget/f$g;->l:Z

    .line 3
    const/4 v0, 0x1

    .line 4
    if-nez p1, :cond_a

    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/f$g;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 8
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->setIsRecyclable(Z)V

    .line 11
    :cond_a
    iput-boolean v0, p0, Landroidx/recyclerview/widget/f$g;->l:Z

    .line 13
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
