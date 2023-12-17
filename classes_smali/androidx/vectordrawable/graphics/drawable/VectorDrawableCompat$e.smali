.class public abstract Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;
.super Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation


# instance fields
.field public a:[Lf0/h$a;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->a:[Lf0/h$a;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->c:I

    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;)V
    .registers 3

    .line 4
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->a:[Lf0/h$a;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->c:I

    .line 7
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->b:Ljava/lang/String;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->b:Ljava/lang/String;

    .line 8
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->d:I

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->d:I

    .line 9
    iget-object p1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->a:[Lf0/h$a;

    invoke-static {p1}, Lf0/h;->d([Lf0/h$a;)[Lf0/h$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->a:[Lf0/h$a;

    return-void
.end method


# virtual methods
.method public getPathData()[Lf0/h$a;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->a:[Lf0/h$a;

    .line 3
    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->b:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setPathData([Lf0/h$a;)V
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->a:[Lf0/h$a;

    .line 3
    invoke-static {v0, p1}, Lf0/h;->a([Lf0/h$a;[Lf0/h$a;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_f

    .line 9
    invoke-static {p1}, Lf0/h;->d([Lf0/h$a;)[Lf0/h$a;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->a:[Lf0/h$a;

    .line 15
    goto :goto_34

    .line 16
    :cond_f
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->a:[Lf0/h$a;

    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    :goto_13
    array-length v3, p1

    .line 21
    if-ge v2, v3, :cond_34

    .line 23
    aget-object v3, v0, v2

    .line 25
    aget-object v4, p1, v2

    .line 27
    iget-char v4, v4, Lf0/h$a;->a:C

    .line 29
    iput-char v4, v3, Lf0/h$a;->a:C

    .line 31
    move v3, v1

    .line 32
    :goto_1f
    aget-object v4, p1, v2

    .line 34
    iget-object v4, v4, Lf0/h$a;->b:[F

    .line 36
    array-length v5, v4

    .line 37
    if-ge v3, v5, :cond_31

    .line 39
    aget-object v5, v0, v2

    .line 41
    iget-object v5, v5, Lf0/h$a;->b:[F

    .line 43
    aget v4, v4, v3

    .line 45
    aput v4, v5, v3

    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 49
    goto :goto_1f

    .line 50
    :cond_31
    add-int/lit8 v2, v2, 0x1

    .line 52
    goto :goto_13

    .line 53
    :cond_34
    :goto_34
    return-void
.end method
