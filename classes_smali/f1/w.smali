.class public final Lf1/w;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field public static final a:Lf1/b0;

.field public static final b:Lf1/w$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    if-lt v0, v1, :cond_e

    .line 7
    new-instance v0, Lf1/c0;

    .line 9
    invoke-direct {v0}, Lf1/c0;-><init>()V

    .line 12
    sput-object v0, Lf1/w;->a:Lf1/b0;

    .line 14
    goto :goto_15

    .line 15
    :cond_e
    new-instance v0, Lf1/b0;

    .line 17
    invoke-direct {v0}, Lf1/b0;-><init>()V

    .line 20
    sput-object v0, Lf1/w;->a:Lf1/b0;

    .line 22
    :goto_15
    new-instance v0, Lf1/w$a;

    .line 24
    invoke-direct {v0}, Lf1/w$a;-><init>()V

    .line 27
    sput-object v0, Lf1/w;->b:Lf1/w$a;

    .line 29
    new-instance v0, Lf1/w$b;

    .line 31
    const-class v1, Landroid/graphics/Rect;

    .line 33
    invoke-direct {v0, v1}, Lf1/w$b;-><init>(Ljava/lang/Class;)V

    .line 36
    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .registers 11

    .line 1
    sget-object v0, Lf1/w;->a:Lf1/b0;

    .line 3
    move-object v1, p0

    .line 4
    move v2, p1

    .line 5
    move v3, p2

    .line 6
    move v4, p3

    .line 7
    move v5, p4

    .line 8
    invoke-virtual/range {v0 .. v5}, Lf1/a0;->k0(Landroid/view/View;IIII)V

    .line 11
    return-void
.end method
