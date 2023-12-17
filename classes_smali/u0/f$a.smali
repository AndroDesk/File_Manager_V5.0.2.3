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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 3

    invoke-direct {p0}, Lu0/f$b;-><init>()V

    iput-object p1, p0, Lu0/f$a;->a:Landroid/widget/TextView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu0/f$a;->c:Z

    new-instance v0, Lu0/d;

    invoke-direct {v0, p1}, Lu0/d;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lu0/f$a;->b:Lu0/d;

    return-void
.end method


# virtual methods
.method public final a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .registers 8

    iget-boolean v0, p0, Lu0/f$a;->c:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3f

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    move v2, v1

    :goto_c
    array-length v3, p1

    if-ge v2, v3, :cond_1b

    aget-object v3, p1, v2

    instance-of v4, v3, Lu0/d;

    if-eqz v4, :cond_18

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1b
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_22

    goto :goto_3e

    :cond_22
    array-length v2, p1

    array-length v3, p1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v3, v4

    new-array v3, v3, [Landroid/text/InputFilter;

    move v4, v1

    :goto_2c
    if-ge v1, v2, :cond_3d

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_3a

    aget-object v5, p1, v1

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_3d
    move-object p1, v3

    :goto_3e
    return-object p1

    :cond_3f
    array-length v0, p1

    move v3, v1

    :goto_41
    if-ge v3, v0, :cond_4d

    aget-object v4, p1, v3

    iget-object v5, p0, Lu0/f$a;->b:Lu0/d;

    if-ne v4, v5, :cond_4a

    goto :goto_59

    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    :cond_4d
    array-length v3, p1

    add-int/2addr v3, v2

    new-array v2, v3, [Landroid/text/InputFilter;

    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lu0/f$a;->b:Lu0/d;

    aput-object p1, v2, v0

    move-object p1, v2

    :goto_59
    return-object p1
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lu0/f$a;->c:Z

    return v0
.end method

.method public final c(Z)V
    .registers 3

    if-eqz p1, :cond_11

    iget-object p1, p0, Lu0/f$a;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu0/f$a;->e(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    move-result-object p1

    iget-object v0, p0, Lu0/f$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_11
    return-void
.end method

.method public final d(Z)V
    .registers 3

    iput-boolean p1, p0, Lu0/f$a;->c:Z

    iget-object p1, p0, Lu0/f$a;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu0/f$a;->e(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    move-result-object p1

    iget-object v0, p0, Lu0/f$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object p1, p0, Lu0/f$a;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object p1

    iget-object v0, p0, Lu0/f$a;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lu0/f$a;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public final e(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .registers 3

    iget-boolean v0, p0, Lu0/f$a;->c:Z

    if-eqz v0, :cond_15

    instance-of v0, p1, Lu0/h;

    if-eqz v0, :cond_9

    goto :goto_14

    :cond_9
    instance-of v0, p1, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_e

    goto :goto_14

    :cond_e
    new-instance v0, Lu0/h;

    invoke-direct {v0, p1}, Lu0/h;-><init>(Landroid/text/method/TransformationMethod;)V

    move-object p1, v0

    :goto_14
    return-object p1

    :cond_15
    instance-of v0, p1, Lu0/h;

    if-eqz v0, :cond_1d

    check-cast p1, Lu0/h;

    iget-object p1, p1, Lu0/h;->a:Landroid/text/method/TransformationMethod;

    :cond_1d
    return-object p1
.end method
