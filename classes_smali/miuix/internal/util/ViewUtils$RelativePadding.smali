.class public Lmiuix/internal/util/ViewUtils$RelativePadding;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/util/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelativePadding"
.end annotation


# instance fields
.field public bottom:I

.field public clipToPadding:Z

.field public end:I

.field public start:I

.field public top:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 6

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->clipToPadding:Z

    .line 12
    iput p1, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    .line 13
    iput p2, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    .line 14
    iput p3, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    .line 15
    iput p4, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->bottom:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->clipToPadding:Z

    .line 3
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 4
    invoke-static {p1}, Lm0/g0$e;->f(Landroid/view/View;)I

    move-result v0

    .line 5
    iput v0, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    .line 7
    invoke-static {p1}, Lm0/g0$e;->e(Landroid/view/View;)I

    move-result v0

    .line 8
    iput v0, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->bottom:I

    return-void
.end method

.method public constructor <init>(Lmiuix/internal/util/ViewUtils$RelativePadding;)V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->clipToPadding:Z

    .line 18
    iget v0, p1, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    iput v0, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    .line 19
    iget v0, p1, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    iput v0, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    .line 20
    iget v0, p1, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    iput v0, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    .line 21
    iget p1, p1, Lmiuix/internal/util/ViewUtils$RelativePadding;->bottom:I

    iput p1, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->bottom:I

    return-void
.end method


# virtual methods
.method public applyToScrollingView(Landroid/view/ViewGroup;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/internal/util/ViewUtils$RelativePadding;->applyToView(Landroid/view/View;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 8
    return-void
.end method

.method public applyToView(Landroid/view/View;)V
    .registers 7

    .line 1
    iget v0, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    .line 3
    iget v1, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    .line 5
    iget v2, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    .line 7
    iget v3, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->bottom:I

    .line 9
    sget-object v4, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 11
    invoke-static {p1, v0, v1, v2, v3}, Lm0/g0$e;->k(Landroid/view/View;IIII)V

    .line 14
    return-void
.end method
