.class public final Lf1/c;
.super Lf1/o;
.source "Fade.java"


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lf1/c;->a:Landroid/view/View;

    .line 3
    invoke-direct {p0}, Lf1/o;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onTransitionEnd(Lf1/n;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lf1/c;->a:Landroid/view/View;

    .line 3
    sget-object v1, Lf1/w;->a:Lf1/b0;

    .line 5
    const/high16 v2, 0x3f800000  # 1.0f

    .line 7
    invoke-virtual {v1, v2, v0}, Lf1/y;->h0(FLandroid/view/View;)V

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-virtual {p1, p0}, Lf1/n;->removeListener(Lf1/n$g;)Lf1/n;

    .line 16
    return-void
.end method
