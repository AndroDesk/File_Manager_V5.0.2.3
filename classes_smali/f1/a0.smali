.class public Lf1/a0;
.super Lf1/z;
.source "ViewUtilsApi22.java"


# static fields
.field public static o:Z = true


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lf1/z;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public k0(Landroid/view/View;IIII)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lf1/a0;->o:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    :try_start_4
    invoke-static {p1, p2, p3, p4, p5}, Lf1/x;->l(Landroid/view/View;IIII)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_7} :catch_8

    .line 8
    goto :goto_b

    .line 9
    :catch_8
    const/4 p1, 0x0

    .line 10
    sput-boolean p1, Lf1/a0;->o:Z

    .line 12
    :cond_b
    :goto_b
    return-void
.end method
