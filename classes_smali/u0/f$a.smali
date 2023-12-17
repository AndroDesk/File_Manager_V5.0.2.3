.class public final Lu0/f$a;
.super Lu0/f$b;
.source "EmojiTextViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Lu0/d;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lu0/f$b;-><init>()V

    .line 4
    iput-object p1, p0, Lu0/f$a;->a:Landroid/widget/TextView;

    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lu0/f$a;->c:Z

    .line 9
    new-instance v0, Lu0/d;

    .line 11
    invoke-direct {v0, p1}, Lu0/d;-><init>(Landroid/widget/TextView;)V

    .line 14
    iput-object v0, p0, Lu0/f$a;->b:Lu0/d;

    .line 16
    return-void
.end method


# virtual methods
.method public final a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .registers 8

    .line 1
    iget-boolean v0, p0, Lu0/f$a;->c:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_3f

    .line 7
    new-instance v0, Landroid/util/SparseArray;

    .line 9
    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 12
    move v2, v1

    .line 13
    :goto_c
    array-length v3, p1

    .line 14
    if-ge v2, v3, :cond_1b

    .line 16
    aget-object v3, p1, v2

    .line 18
    instance-of v4, v3, Lu0/d;

    .line 20
    if-eqz v4, :cond_18

    .line 22
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    :cond_18
    add-int/lit8 v2, v2, 0x1

    .line 27
    goto :goto_c

    .line 28
    :cond_1b
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_22

    .line 34
    goto :goto_3e

    .line 35
    :cond_22
    array-length v2, p1

    .line 36
    array-length v3, p1

    .line 37
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 40
    move-result v4

    .line 41
    sub-int/2addr v3, v4

    .line 42
    new-array v3, v3, [Landroid/text/InputFilter;

    .line 44
    move v4, v1

    .line 45
    :goto_2c
    if-ge v1, v2, :cond_3d

    .line 47
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 50
    move-result v5

    .line 51
    if-gez v5, :cond_3a

    .line 53
    aget-object v5, p1, v1

    .line 55
    aput-object v5, v3, v4

    .line 57
    add-int/lit8 v4, v4, 0x1

    .line 59
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    .line 61
    goto :goto_2c

    .line 62
    :cond_3d
    move-object p1, v3

    .line 63
    :goto_3e
    return-object p1

    .line 64
    :cond_3f
    array-length v0, p1

    .line 65
    move v3, v1

    .line 66
    :goto_41
    if-ge v3, v0, :cond_4d

    .line 68
    aget-object v4, p1, v3

    .line 70
    iget-object v5, p0, Lu0/f$a;->b:Lu0/d;

    .line 72
    if-ne v4, v5, :cond_4a

    .line 74
    goto :goto_59

    .line 75
    :cond_4a
    add-int/lit8 v3, v3, 0x1

    .line 77
    goto :goto_41

    .line 78
    :cond_4d
    array-length v3, p1

    .line 79
    add-int/2addr v3, v2

    .line 80
    new-array v2, v3, [Landroid/text/InputFilter;

    .line 82
    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iget-object p1, p0, Lu0/f$a;->b:Lu0/d;

    .line 87
    aput-object p1, v2, v0

    .line 89
    move-object p1, v2

    .line 90
    :goto_59
    return-object p1
.end method

.method public final b()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lu0/f$a;->c:Z

    .line 3
    return v0
.end method

.method public final c(Z)V
    .registers 3

    .line 1
    if-eqz p1, :cond_11

    .line 3
    iget-object p1, p0, Lu0/f$a;->a:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lu0/f$a;->e(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lu0/f$a;->a:Landroid/widget/TextView;

    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 18
    :cond_11
    return-void
.end method

.method public final d(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lu0/f$a;->c:Z

    .line 3
    iget-object p1, p0, Lu0/f$a;->a:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lu0/f$a;->e(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lu0/f$a;->a:Landroid/widget/TextView;

    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 18
    iget-object p1, p0, Lu0/f$a;->a:Landroid/widget/TextView;

    .line 20
    invoke-virtual {p1}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Lu0/f$a;->a:Landroid/widget/TextView;

    .line 26
    invoke-virtual {p0, p1}, Lu0/f$a;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 33
    return-void
.end method

.method public final e(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lu0/f$a;->c:Z

    .line 3
    if-eqz v0, :cond_15

    .line 5
    instance-of v0, p1, Lu0/h;

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_14

    .line 10
    :cond_9
    instance-of v0, p1, Landroid/text/method/PasswordTransformationMethod;

    .line 12
    if-eqz v0, :cond_e

    .line 14
    goto :goto_14

    .line 15
    :cond_e
    new-instance v0, Lu0/h;

    .line 17
    invoke-direct {v0, p1}, Lu0/h;-><init>(Landroid/text/method/TransformationMethod;)V

    .line 20
    move-object p1, v0

    .line 21
    :goto_14
    return-object p1

    .line 22
    :cond_15
    instance-of v0, p1, Lu0/h;

    .line 24
    if-eqz v0, :cond_1d

    .line 26
    check-cast p1, Lu0/h;

    .line 28
    iget-object p1, p1, Lu0/h;->a:Landroid/text/method/TransformationMethod;

    .line 30
    :cond_1d
    return-object p1
.end method
