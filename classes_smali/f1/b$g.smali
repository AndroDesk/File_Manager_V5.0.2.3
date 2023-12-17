.class public final Lf1/b$g;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf1/b;->createAnimator(Landroid/view/ViewGroup;Lf1/t;Lf1/t;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mViewBounds:Lf1/b$i;


# direct methods
.method public constructor <init>(Lf1/b$i;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    iput-object p1, p0, Lf1/b$g;->mViewBounds:Lf1/b$i;

    .line 6
    return-void
.end method
