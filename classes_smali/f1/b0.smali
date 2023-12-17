.class public Lf1/b0;
.super Lf1/a0;
.source "ViewUtilsApi23.java"


# static fields
.field public static p:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lf1/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public a0(ILandroid/view/View;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_a

    invoke-super {p0, p1, p2}, La/b;->a0(ILandroid/view/View;)V

    goto :goto_15

    :cond_a
    sget-boolean v0, Lf1/b0;->p:Z

    if-eqz v0, :cond_15

    :try_start_e
    invoke-static {p1, p2}, Lf1/x;->i(ILandroid/view/View;)V
    :try_end_11
    .catch Ljava/lang/NoSuchMethodError; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_15

    :catch_12
    const/4 p1, 0x0

    sput-boolean p1, Lf1/b0;->p:Z

    :cond_15
    :goto_15
    return-void
.end method
