.class public final Lx/b$c;
.super Lx/b;
.source "ViewOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lx/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(FLandroid/view/View;)V
    .registers 3

    invoke-virtual {p0, p1}, Lu/e;->a(F)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setElevation(F)V

    return-void
.end method
