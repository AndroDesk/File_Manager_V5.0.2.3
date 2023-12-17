.class public final Lf1/w;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field public static final a:Lf1/b0;

.field public static final b:Lf1/w$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_e

    new-instance v0, Lf1/c0;

    invoke-direct {v0}, Lf1/c0;-><init>()V

    sput-object v0, Lf1/w;->a:Lf1/b0;

    goto :goto_15

    :cond_e
    new-instance v0, Lf1/b0;

    invoke-direct {v0}, Lf1/b0;-><init>()V

    sput-object v0, Lf1/w;->a:Lf1/b0;

    :goto_15
    new-instance v0, Lf1/w$a;

    invoke-direct {v0}, Lf1/w$a;-><init>()V

    sput-object v0, Lf1/w;->b:Lf1/w$a;

    new-instance v0, Lf1/w$b;

    const-class v1, Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Lf1/w$b;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .registers 11

    sget-object v0, Lf1/w;->a:Lf1/b0;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lf1/a0;->k0(Landroid/view/View;IIII)V

    return-void
.end method
