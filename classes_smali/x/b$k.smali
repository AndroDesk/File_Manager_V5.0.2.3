.class public final Lx/b$k;
.super Lx/b;
.source "ViewOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lx/b;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final d(FLandroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lu/e;->a(F)F

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 8
    return-void
.end method
