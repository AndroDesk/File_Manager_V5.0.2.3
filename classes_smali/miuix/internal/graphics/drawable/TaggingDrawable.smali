.class public Lmiuix/internal/graphics/drawable/TaggingDrawable;
.super Lmiuix/internal/graphics/drawable/DrawableWrapperCompat;
.source "TaggingDrawable.java"


# instance fields
.field private mRawState:[I

.field private mTaggingState:[I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmiuix/internal/graphics/drawable/TaggingDrawable;-><init>(Landroid/graphics/drawable/Drawable;[I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;[I)V
    .registers 4

    .line 2
    invoke-direct {p0, p1}, Lmiuix/internal/graphics/drawable/DrawableWrapperCompat;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    new-array v0, p1, [I

    .line 3
    iput-object v0, p0, Lmiuix/internal/graphics/drawable/TaggingDrawable;->mTaggingState:[I

    new-array p1, p1, [I

    .line 4
    iput-object p1, p0, Lmiuix/internal/graphics/drawable/TaggingDrawable;->mRawState:[I

    .line 5
    invoke-virtual {p0, p2}, Lmiuix/internal/graphics/drawable/TaggingDrawable;->setTaggingState([I)Z

    return-void
.end method

.method public static containsTagState(Landroid/graphics/drawable/StateListDrawable;[I)Z
    .registers 9

    .line 1
    invoke-static {p0}, Lmiuix/internal/graphics/drawable/StateListDrawableReflect;->getStateCount(Landroid/graphics/drawable/StateListDrawable;)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_6
    if-ge v2, v0, :cond_20

    .line 9
    invoke-static {p0, v2}, Lmiuix/internal/graphics/drawable/StateListDrawableReflect;->getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I

    .line 12
    move-result-object v3

    .line 13
    array-length v4, v3

    .line 14
    move v5, v1

    .line 15
    :goto_e
    if-ge v5, v4, :cond_1d

    .line 17
    aget v6, v3, v5

    .line 19
    invoke-static {p1, v6}, Ljava/util/Arrays;->binarySearch([II)I

    .line 22
    move-result v6

    .line 23
    if-ltz v6, :cond_1a

    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_1a
    add-int/lit8 v5, v5, 0x1

    .line 29
    goto :goto_e

    .line 30
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    .line 32
    goto :goto_6

    .line 33
    :cond_20
    return v1
.end method

.method public static mergeSortTaggingState([I[I)[I
    .registers 5

    .line 1
    array-length v0, p1

    .line 2
    array-length v1, p0

    .line 3
    add-int/2addr v0, v1

    .line 4
    new-array v0, v0, [I

    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    array-length p0, p0

    .line 12
    array-length v1, p1

    .line 13
    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 19
    return-object v0
.end method

.method private static mergeTaggingState([I[I)[I
    .registers 5

    .line 1
    array-length v0, p1

    .line 2
    array-length v1, p0

    .line 3
    add-int/2addr v0, v1

    .line 4
    new-array v0, v0, [I

    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    array-length p0, p0

    .line 12
    array-length v1, p1

    .line 13
    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    return-object v0
.end method


# virtual methods
.method public setState([I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/graphics/drawable/TaggingDrawable;->mRawState:[I

    .line 3
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_15

    .line 9
    iput-object p1, p0, Lmiuix/internal/graphics/drawable/TaggingDrawable;->mRawState:[I

    .line 11
    iget-object v0, p0, Lmiuix/internal/graphics/drawable/TaggingDrawable;->mTaggingState:[I

    .line 13
    invoke-static {v0, p1}, Lmiuix/internal/graphics/drawable/TaggingDrawable;->mergeTaggingState([I[I)[I

    .line 16
    move-result-object p1

    .line 17
    invoke-super {p0, p1}, Lmiuix/internal/graphics/drawable/DrawableWrapperCompat;->setState([I)Z

    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_15
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method public setTaggingState([I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/graphics/drawable/TaggingDrawable;->mTaggingState:[I

    .line 3
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_15

    .line 9
    iput-object p1, p0, Lmiuix/internal/graphics/drawable/TaggingDrawable;->mTaggingState:[I

    .line 11
    iget-object v0, p0, Lmiuix/internal/graphics/drawable/TaggingDrawable;->mRawState:[I

    .line 13
    invoke-static {p1, v0}, Lmiuix/internal/graphics/drawable/TaggingDrawable;->mergeTaggingState([I[I)[I

    .line 16
    move-result-object p1

    .line 17
    invoke-super {p0, p1}, Lmiuix/internal/graphics/drawable/DrawableWrapperCompat;->setState([I)Z

    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_15
    const/4 p1, 0x0

    .line 23
    return p1
.end method
