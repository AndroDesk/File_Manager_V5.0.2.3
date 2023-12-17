.class public final Lx/d$l;
.super Lx/d;
.source "ViewTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lx/d;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final e(FJLandroid/view/View;Landroidx/appcompat/app/u;)Z
    .registers 6

    .line 1
    invoke-virtual/range {p0 .. p5}, Lx/d;->d(FJLandroid/view/View;Landroidx/appcompat/app/u;)F

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p4, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 8
    iget-boolean p1, p0, Lu/l;->h:Z

    .line 10
    return p1
.end method
