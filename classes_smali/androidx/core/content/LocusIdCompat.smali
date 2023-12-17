.class public final Landroidx/core/content/LocusIdCompat;
.super Ljava/lang/Object;
.source "LocusIdCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/LocusIdCompat$Api29Impl;
    }
.end annotation


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mWrapped:Landroid/content/LocusId;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1c

    .line 10
    iput-object p1, p0, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    const/16 v1, 0x1d

    .line 16
    if-lt v0, v1, :cond_18

    .line 18
    invoke-static {p1}, Landroidx/core/content/LocusIdCompat$Api29Impl;->create(Ljava/lang/String;)Landroid/content/LocusId;

    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Landroidx/core/content/LocusIdCompat;->mWrapped:Landroid/content/LocusId;

    .line 24
    goto :goto_1b

    .line 25
    :cond_18
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Landroidx/core/content/LocusIdCompat;->mWrapped:Landroid/content/LocusId;

    .line 28
    :goto_1b
    return-void

    .line 29
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    const-string v0, "id cannot be empty"

    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p1
.end method

.method private getSanitizedId()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string v0, "_chars"

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public static toLocusIdCompat(Landroid/content/LocusId;)Landroidx/core/content/LocusIdCompat;
    .registers 3

    .line 1
    if-eqz p0, :cond_1a

    .line 3
    new-instance v0, Landroidx/core/content/LocusIdCompat;

    .line 5
    invoke-static {p0}, Landroidx/core/content/LocusIdCompat$Api29Impl;->getId(Landroid/content/LocusId;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_12

    .line 15
    invoke-direct {v0, p0}, Landroidx/core/content/LocusIdCompat;-><init>(Ljava/lang/String;)V

    .line 18
    return-object v0

    .line 19
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 21
    const-string v0, "id cannot be empty"

    .line 23
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p0

    .line 27
    :cond_1a
    new-instance p0, Ljava/lang/NullPointerException;

    .line 29
    const-string v0, "locusId cannot be null"

    .line 31
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    const-class v2, Landroidx/core/content/LocusIdCompat;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object v3

    .line 15
    if-eq v2, v3, :cond_11

    .line 17
    return v1

    .line 18
    :cond_11
    check-cast p1, Landroidx/core/content/LocusIdCompat;

    .line 20
    iget-object v2, p0, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    .line 22
    if-nez v2, :cond_1e

    .line 24
    iget-object p1, p1, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    .line 26
    if-nez p1, :cond_1c

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move v0, v1

    .line 30
    :goto_1d
    return v0

    .line 31
    :cond_1e
    iget-object p1, p1, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 10
    move-result v0

    .line 11
    :goto_a
    const/16 v1, 0x1f

    .line 13
    add-int/2addr v1, v0

    .line 14
    return v1
.end method

.method public toLocusId()Landroid/content/LocusId;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/content/LocusIdCompat;->mWrapped:Landroid/content/LocusId;

    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "LocusIdCompat["

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0}, Landroidx/core/content/LocusIdCompat;->getSanitizedId()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    const-string v2, "]"

    .line 13
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method
