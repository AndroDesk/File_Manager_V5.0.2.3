.class public Lf1/z;
.super Lf1/y;
.source "ViewUtilsApi21.java"


# static fields
.field public static m:Z = true

.field public static n:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lf1/y;-><init>()V

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

    sget-boolean v0, Lf1/z;->m:Z

    if-eqz v0, :cond_b

    :try_start_4
    invoke-static {p1, p2}, Lf1/x;->v(Landroid/view/View;Landroid/graphics/Matrix;)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_b

    :catch_8
    const/4 p1, 0x0

    sput-boolean p1, Lf1/z;->m:Z

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

    sget-boolean v0, Lf1/z;->n:Z

    if-eqz v0, :cond_b

    :try_start_4
    invoke-static {p1, p2}, Lf1/x;->n(Landroid/view/View;Landroid/graphics/Matrix;)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_b

    :catch_8
    const/4 p1, 0x0

    sput-boolean p1, Lf1/z;->n:Z

    :cond_b
    :goto_b
    return-void
.end method
