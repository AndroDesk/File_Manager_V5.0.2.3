.class public final Lf1/c;
.super Lf1/o;
.source "Fade.java"


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lf1/c;->a:Landroid/view/View;

    invoke-direct {p0}, Lf1/o;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionEnd(Lf1/n;)V
    .registers 5

    iget-object v0, p0, Lf1/c;->a:Landroid/view/View;

    sget-object v1, Lf1/w;->a:Lf1/b0;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v1, v2, v0}, Lf1/y;->h0(FLandroid/view/View;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p0}, Lf1/n;->removeListener(Lf1/n$g;)Lf1/n;

    return-void
.end method
