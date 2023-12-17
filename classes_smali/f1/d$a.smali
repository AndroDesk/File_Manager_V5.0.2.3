.class public final Lf1/d$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public b:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lf1/d$a;->b:Z

    .line 7
    iput-object p1, p0, Lf1/d$a;->a:Landroid/view/View;

    .line 9
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lf1/d$a;->a:Landroid/view/View;

    .line 3
    sget-object v0, Lf1/w;->a:Lf1/b0;

    .line 5
    const/high16 v1, 0x3f800000  # 1.0f

    .line 7
    invoke-virtual {v0, v1, p1}, Lf1/y;->h0(FLandroid/view/View;)V

    .line 10
    iget-boolean p1, p0, Lf1/d$a;->b:Z

    .line 12
    if-eqz p1, :cond_14

    .line 14
    iget-object p1, p0, Lf1/d$a;->a:Landroid/view/View;

    .line 16
    const/4 v0, 0x0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 21
    :cond_14
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lf1/d$a;->a:Landroid/view/View;

    .line 3
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-static {p1}, Lm0/g0$d;->h(Landroid/view/View;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_1c

    .line 11
    iget-object p1, p0, Lf1/d$a;->a:Landroid/view/View;

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_1c

    .line 19
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lf1/d$a;->b:Z

    .line 22
    iget-object p1, p0, Lf1/d$a;->a:Landroid/view/View;

    .line 24
    const/4 v0, 0x2

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 29
    :cond_1c
    return-void
.end method
