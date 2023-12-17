.class public Lf1/y;
.super La/b;
.source "ViewUtilsApi19.java"


# static fields
.field public static l:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b;-><init>()V

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

    sget-boolean v0, Lf1/y;->l:Z

    if-eqz v0, :cond_c

    :try_start_4
    invoke-static {p1}, Lf1/x;->a(Landroid/view/View;)F

    move-result p1
    :try_end_8
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_8} :catch_9

    return p1

    :catch_9
    const/4 v0, 0x0

    sput-boolean v0, Lf1/y;->l:Z

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    return p1
.end method

.method public h0(FLandroid/view/View;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget-boolean v0, Lf1/y;->l:Z

    if-eqz v0, :cond_b

    :try_start_4
    invoke-static {p1, p2}, Lf1/x;->h(FLandroid/view/View;)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    const/4 v0, 0x0

    sput-boolean v0, Lf1/y;->l:Z

    :cond_b
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
