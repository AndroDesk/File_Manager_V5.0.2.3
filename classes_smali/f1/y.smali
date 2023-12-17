.class public Lf1/y;
.super La/b;
.source "ViewUtilsApi19.java"


# static fields
.field public static l:Z = true


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, La/b;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public g0(Landroid/view/View;)F
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lf1/y;->l:Z

    .line 3
    if-eqz v0, :cond_c

    .line 5
    :try_start_4
    invoke-static {p1}, Lf1/x;->a(Landroid/view/View;)F

    .line 8
    move-result p1
    :try_end_8
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_8} :catch_9

    .line 9
    return p1

    .line 10
    :catch_9
    const/4 v0, 0x0

    .line 11
    sput-boolean v0, Lf1/y;->l:Z

    .line 13
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public h0(FLandroid/view/View;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lf1/y;->l:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    :try_start_4
    invoke-static {p1, p2}, Lf1/x;->h(FLandroid/view/View;)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_7} :catch_8

    .line 8
    return-void

    .line 9
    :catch_8
    const/4 v0, 0x0

    .line 10
    sput-boolean v0, Lf1/y;->l:Z

    .line 12
    :cond_b
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 15
    return-void
.end method
