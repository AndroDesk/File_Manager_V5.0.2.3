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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/p0;->a:I

    iput v0, p0, Landroidx/appcompat/widget/p0;->b:I

    const/high16 v1, -0x80000000

    iput v1, p0, Landroidx/appcompat/widget/p0;->c:I

    iput v1, p0, Landroidx/appcompat/widget/p0;->d:I

    iput v0, p0, Landroidx/appcompat/widget/p0;->e:I

    iput v0, p0, Landroidx/appcompat/widget/p0;->f:I

    iput-boolean v0, p0, Landroidx/appcompat/widget/p0;->g:Z

    iput-boolean v0, p0, Landroidx/appcompat/widget/p0;->h:Z

    return-void
.end method


# virtual methods
.method public final a(II)V
    .registers 5

    iput p1, p0, Landroidx/appcompat/widget/p0;->c:I

    iput p2, p0, Landroidx/appcompat/widget/p0;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/p0;->h:Z

    iget-boolean v0, p0, Landroidx/appcompat/widget/p0;->g:Z

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_16

    if-eq p2, v1, :cond_11

    iput p2, p0, Landroidx/appcompat/widget/p0;->a:I

    :cond_11
    if-eq p1, v1, :cond_1e

    iput p1, p0, Landroidx/appcompat/widget/p0;->b:I

    goto :goto_1e

    :cond_16
    if-eq p1, v1, :cond_1a

    iput p1, p0, Landroidx/appcompat/widget/p0;->a:I

    :cond_1a
    if-eq p2, v1, :cond_1e

    iput p2, p0, Landroidx/appcompat/widget/p0;->b:I

    :cond_1e
    :goto_1e
    return-void
.end method
