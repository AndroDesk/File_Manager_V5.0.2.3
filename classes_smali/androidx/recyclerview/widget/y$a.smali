.class public final Landroidx/recyclerview/widget/y$a;
.super Ljava/lang/Object;
.source "ViewBoundsCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/y$a;->a:I

    .line 7
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 8

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/y$a;->a:I

    .line 3
    and-int/lit8 v1, v0, 0x7

    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x4

    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    if-eqz v1, :cond_1c

    .line 11
    iget v1, p0, Landroidx/recyclerview/widget/y$a;->d:I

    .line 13
    iget v6, p0, Landroidx/recyclerview/widget/y$a;->b:I

    .line 15
    if-le v1, v6, :cond_12

    .line 17
    move v1, v4

    .line 18
    goto :goto_17

    .line 19
    :cond_12
    if-ne v1, v6, :cond_16

    .line 21
    move v1, v2

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v1, v3

    .line 24
    :goto_17
    shl-int/2addr v1, v5

    .line 25
    and-int/2addr v1, v0

    .line 26
    if-nez v1, :cond_1c

    .line 28
    return v5

    .line 29
    :cond_1c
    and-int/lit8 v1, v0, 0x70

    .line 31
    if-eqz v1, :cond_32

    .line 33
    iget v1, p0, Landroidx/recyclerview/widget/y$a;->d:I

    .line 35
    iget v6, p0, Landroidx/recyclerview/widget/y$a;->c:I

    .line 37
    if-le v1, v6, :cond_28

    .line 39
    move v1, v4

    .line 40
    goto :goto_2d

    .line 41
    :cond_28
    if-ne v1, v6, :cond_2c

    .line 43
    move v1, v2

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    move v1, v3

    .line 46
    :goto_2d
    shl-int/2addr v1, v3

    .line 47
    and-int/2addr v1, v0

    .line 48
    if-nez v1, :cond_32

    .line 50
    return v5

    .line 51
    :cond_32
    and-int/lit16 v1, v0, 0x700

    .line 53
    if-eqz v1, :cond_49

    .line 55
    iget v1, p0, Landroidx/recyclerview/widget/y$a;->e:I

    .line 57
    iget v6, p0, Landroidx/recyclerview/widget/y$a;->b:I

    .line 59
    if-le v1, v6, :cond_3e

    .line 61
    move v1, v4

    .line 62
    goto :goto_43

    .line 63
    :cond_3e
    if-ne v1, v6, :cond_42

    .line 65
    move v1, v2

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    move v1, v3

    .line 68
    :goto_43
    shl-int/lit8 v1, v1, 0x8

    .line 70
    and-int/2addr v1, v0

    .line 71
    if-nez v1, :cond_49

    .line 73
    return v5

    .line 74
    :cond_49
    and-int/lit16 v1, v0, 0x7000

    .line 76
    if-eqz v1, :cond_5f

    .line 78
    iget v1, p0, Landroidx/recyclerview/widget/y$a;->e:I

    .line 80
    iget v6, p0, Landroidx/recyclerview/widget/y$a;->c:I

    .line 82
    if-le v1, v6, :cond_55

    .line 84
    move v2, v4

    .line 85
    goto :goto_59

    .line 86
    :cond_55
    if-ne v1, v6, :cond_58

    .line 88
    goto :goto_59

    .line 89
    :cond_58
    move v2, v3

    .line 90
    :goto_59
    shl-int/lit8 v1, v2, 0xc

    .line 92
    and-int/2addr v0, v1

    .line 93
    if-nez v0, :cond_5f

    .line 95
    return v5

    .line 96
    :cond_5f
    return v4
.end method
