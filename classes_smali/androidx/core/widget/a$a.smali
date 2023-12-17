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
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/high16 v0, -0x8000000000000000L

    .line 6
    iput-wide v0, p0, Landroidx/core/widget/a$a;->e:J

    .line 8
    const-wide/16 v0, -0x1

    .line 10
    iput-wide v0, p0, Landroidx/core/widget/a$a;->g:J

    .line 12
    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Landroidx/core/widget/a$a;->f:J

    .line 16
    return-void
.end method


# virtual methods
.method public final a(J)F
    .registers 11

    .line 1
    iget-wide v0, p0, Landroidx/core/widget/a$a;->e:J

    .line 3
    cmp-long v2, p1, v0

    .line 5
    const/4 v3, 0x0

    .line 6
    if-gez v2, :cond_8

    .line 8
    return v3

    .line 9
    :cond_8
    iget-wide v4, p0, Landroidx/core/widget/a$a;->g:J

    .line 11
    const-wide/16 v6, 0x0

    .line 13
    cmp-long v2, v4, v6

    .line 15
    const/high16 v6, 0x3f800000  # 1.0f

    .line 17
    if-ltz v2, :cond_28

    .line 19
    cmp-long v2, p1, v4

    .line 21
    if-gez v2, :cond_17

    .line 23
    goto :goto_28

    .line 24
    :cond_17
    sub-long/2addr p1, v4

    .line 25
    iget v0, p0, Landroidx/core/widget/a$a;->h:F

    .line 27
    sub-float v1, v6, v0

    .line 29
    long-to-float p1, p1

    .line 30
    iget p2, p0, Landroidx/core/widget/a$a;->i:I

    .line 32
    int-to-float p2, p2

    .line 33
    div-float/2addr p1, p2

    .line 34
    invoke-static {p1, v3, v6}, Landroidx/core/widget/a;->b(FFF)F

    .line 37
    move-result p1

    .line 38
    mul-float/2addr p1, v0

    .line 39
    add-float/2addr p1, v1

    .line 40
    return p1

    .line 41
    :cond_28
    :goto_28
    sub-long/2addr p1, v0

    .line 42
    const/high16 v0, 0x3f000000  # 0.5f

    .line 44
    long-to-float p1, p1

    .line 45
    iget p2, p0, Landroidx/core/widget/a$a;->a:I

    .line 47
    int-to-float p2, p2

    .line 48
    div-float/2addr p1, p2

    .line 49
    invoke-static {p1, v3, v6}, Landroidx/core/widget/a;->b(FFF)F

    .line 52
    move-result p1

    .line 53
    mul-float/2addr p1, v0

    .line 54
    return p1
.end method
