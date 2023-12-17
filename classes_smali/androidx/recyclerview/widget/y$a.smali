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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/y$a;->a:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 8

    iget v0, p0, Landroidx/recyclerview/widget/y$a;->a:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1c

    iget v1, p0, Landroidx/recyclerview/widget/y$a;->d:I

    iget v6, p0, Landroidx/recyclerview/widget/y$a;->b:I

    if-le v1, v6, :cond_12

    move v1, v4

    goto :goto_17

    :cond_12
    if-ne v1, v6, :cond_16

    move v1, v2

    goto :goto_17

    :cond_16
    move v1, v3

    :goto_17
    shl-int/2addr v1, v5

    and-int/2addr v1, v0

    if-nez v1, :cond_1c

    return v5

    :cond_1c
    and-int/lit8 v1, v0, 0x70

    if-eqz v1, :cond_32

    iget v1, p0, Landroidx/recyclerview/widget/y$a;->d:I

    iget v6, p0, Landroidx/recyclerview/widget/y$a;->c:I

    if-le v1, v6, :cond_28

    move v1, v4

    goto :goto_2d

    :cond_28
    if-ne v1, v6, :cond_2c

    move v1, v2

    goto :goto_2d

    :cond_2c
    move v1, v3

    :goto_2d
    shl-int/2addr v1, v3

    and-int/2addr v1, v0

    if-nez v1, :cond_32

    return v5

    :cond_32
    and-int/lit16 v1, v0, 0x700

    if-eqz v1, :cond_49

    iget v1, p0, Landroidx/recyclerview/widget/y$a;->e:I

    iget v6, p0, Landroidx/recyclerview/widget/y$a;->b:I

    if-le v1, v6, :cond_3e

    move v1, v4

    goto :goto_43

    :cond_3e
    if-ne v1, v6, :cond_42

    move v1, v2

    goto :goto_43

    :cond_42
    move v1, v3

    :goto_43
    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v0

    if-nez v1, :cond_49

    return v5

    :cond_49
    and-int/lit16 v1, v0, 0x7000

    if-eqz v1, :cond_5f

    iget v1, p0, Landroidx/recyclerview/widget/y$a;->e:I

    iget v6, p0, Landroidx/recyclerview/widget/y$a;->c:I

    if-le v1, v6, :cond_55

    move v2, v4

    goto :goto_59

    :cond_55
    if-ne v1, v6, :cond_58

    goto :goto_59

    :cond_58
    move v2, v3

    :goto_59
    shl-int/lit8 v1, v2, 0xc

    and-int/2addr v0, v1

    if-nez v0, :cond_5f

    return v5

    :cond_5f
    return v4
.end method
