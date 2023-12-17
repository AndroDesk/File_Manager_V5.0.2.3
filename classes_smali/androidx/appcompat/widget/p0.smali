.class public final Landroidx/appcompat/widget/p0;
.super Ljava/lang/Object;
.source "RtlSpacingHelper.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/p0;->a:I

    .line 7
    iput v0, p0, Landroidx/appcompat/widget/p0;->b:I

    .line 9
    const/high16 v1, -0x80000000

    .line 11
    iput v1, p0, Landroidx/appcompat/widget/p0;->c:I

    .line 13
    iput v1, p0, Landroidx/appcompat/widget/p0;->d:I

    .line 15
    iput v0, p0, Landroidx/appcompat/widget/p0;->e:I

    .line 17
    iput v0, p0, Landroidx/appcompat/widget/p0;->f:I

    .line 19
    iput-boolean v0, p0, Landroidx/appcompat/widget/p0;->g:Z

    .line 21
    iput-boolean v0, p0, Landroidx/appcompat/widget/p0;->h:Z

    .line 23
    return-void
.end method


# virtual methods
.method public final a(II)V
    .registers 5

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/p0;->c:I

    .line 3
    iput p2, p0, Landroidx/appcompat/widget/p0;->d:I

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/appcompat/widget/p0;->h:Z

    .line 8
    iget-boolean v0, p0, Landroidx/appcompat/widget/p0;->g:Z

    .line 10
    const/high16 v1, -0x80000000

    .line 12
    if-eqz v0, :cond_16

    .line 14
    if-eq p2, v1, :cond_11

    .line 16
    iput p2, p0, Landroidx/appcompat/widget/p0;->a:I

    .line 18
    :cond_11
    if-eq p1, v1, :cond_1e

    .line 20
    iput p1, p0, Landroidx/appcompat/widget/p0;->b:I

    .line 22
    goto :goto_1e

    .line 23
    :cond_16
    if-eq p1, v1, :cond_1a

    .line 25
    iput p1, p0, Landroidx/appcompat/widget/p0;->a:I

    .line 27
    :cond_1a
    if-eq p2, v1, :cond_1e

    .line 29
    iput p2, p0, Landroidx/appcompat/widget/p0;->b:I

    .line 31
    :cond_1e
    :goto_1e
    return-void
.end method
