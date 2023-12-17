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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->a:[Lf0/h$a;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->c:I

    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;)V
    .registers 3

    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$d;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->a:[Lf0/h$a;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->c:I

    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->b:Ljava/lang/String;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->b:Ljava/lang/String;

    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->d:I

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->d:I

    iget-object p1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->a:[Lf0/h$a;

    invoke-static {p1}, Lf0/h;->d([Lf0/h$a;)[Lf0/h$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->a:[Lf0/h$a;

    return-void
.end method


# virtual methods
.method public getPathData()[Lf0/h$a;
    .registers 2

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->a:[Lf0/h$a;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Lf0/h$a;)V
    .registers 8

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->a:[Lf0/h$a;

    invoke-static {v0, p1}, Lf0/h;->a([Lf0/h$a;[Lf0/h$a;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p1}, Lf0/h;->d([Lf0/h$a;)[Lf0/h$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->a:[Lf0/h$a;

    goto :goto_34

    :cond_f
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$e;->a:[Lf0/h$a;

    const/4 v1, 0x0

    move v2, v1

    :goto_13
    array-length v3, p1

    if-ge v2, v3, :cond_34

    aget-object v3, v0, v2

    aget-object v4, p1, v2

    iget-char v4, v4, Lf0/h$a;->a:C

    iput-char v4, v3, Lf0/h$a;->a:C

    move v3, v1

    :goto_1f
    aget-object v4, p1, v2

    iget-object v4, v4, Lf0/h$a;->b:[F

    array-length v5, v4

    if-ge v3, v5, :cond_31

    aget-object v5, v0, v2

    iget-object v5, v5, Lf0/h$a;->b:[F

    aget v4, v4, v3

    aput v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_34
    :goto_34
    return-void
.end method
