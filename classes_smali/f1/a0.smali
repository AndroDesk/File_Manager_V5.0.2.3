.class public Lf1/a0;
.super Lf1/z;
.source "ViewUtilsApi22.java"


# static fields
.field public static o:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lf1/z;-><init>()V

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

    sget-boolean v0, Lf1/a0;->o:Z

    if-eqz v0, :cond_b

    :try_start_4
    invoke-static {p1, p2, p3, p4, p5}, Lf1/x;->l(Landroid/view/View;IIII)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_b

    :catch_8
    const/4 p1, 0x0

    sput-boolean p1, Lf1/a0;->o:Z

    :cond_b
    :goto_b
    return-void
.end method
