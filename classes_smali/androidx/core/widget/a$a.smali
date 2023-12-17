.class public final Landroidx/core/widget/a$a;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:F

.field public d:F

.field public e:J

.field public f:J

.field public g:J

.field public h:F

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroidx/core/widget/a$a;->e:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/core/widget/a$a;->g:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/core/widget/a$a;->f:J

    return-void
.end method


# virtual methods
.method public final a(J)F
    .registers 11

    iget-wide v0, p0, Landroidx/core/widget/a$a;->e:J

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-gez v2, :cond_8

    return v3

    :cond_8
    iget-wide v4, p0, Landroidx/core/widget/a$a;->g:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    const/high16 v6, 0x3f800000  # 1.0f

    if-ltz v2, :cond_28

    cmp-long v2, p1, v4

    if-gez v2, :cond_17

    goto :goto_28

    :cond_17
    sub-long/2addr p1, v4

    iget v0, p0, Landroidx/core/widget/a$a;->h:F

    sub-float v1, v6, v0

    long-to-float p1, p1

    iget p2, p0, Landroidx/core/widget/a$a;->i:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1, v3, v6}, Landroidx/core/widget/a;->b(FFF)F

    move-result p1

    mul-float/2addr p1, v0

    add-float/2addr p1, v1

    return p1

    :cond_28
    :goto_28
    sub-long/2addr p1, v0

    const/high16 v0, 0x3f000000  # 0.5f

    long-to-float p1, p1

    iget p2, p0, Landroidx/core/widget/a$a;->a:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1, v3, v6}, Landroidx/core/widget/a;->b(FFF)F

    move-result p1

    mul-float/2addr p1, v0

    return p1
.end method
