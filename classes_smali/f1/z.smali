.class public Lf1/z;
.super Lf1/y;
.source "ViewUtilsApi21.java"


# static fields
.field public static m:Z = true

.field public static n:Z = true


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lf1/y;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public i0(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lf1/z;->m:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    :try_start_4
    invoke-static {p1, p2}, Lf1/x;->v(Landroid/view/View;Landroid/graphics/Matrix;)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_7} :catch_8

    .line 8
    goto :goto_b

    .line 9
    :catch_8
    const/4 p1, 0x0

    .line 10
    sput-boolean p1, Lf1/z;->m:Z

    .line 12
    :cond_b
    :goto_b
    return-void
.end method

.method public j0(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lf1/z;->n:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    :try_start_4
    invoke-static {p1, p2}, Lf1/x;->n(Landroid/view/View;Landroid/graphics/Matrix;)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_7} :catch_8

    .line 8
    goto :goto_b

    .line 9
    :catch_8
    const/4 p1, 0x0

    .line 10
    sput-boolean p1, Lf1/z;->n:Z

    .line 12
    :cond_b
    :goto_b
    return-void
.end method
