.class public final Landroidx/fragment/app/d0;
.super Landroid/transition/Transition$EpicenterCallback;
.source "FragmentTransitionCompat21.java"


# instance fields
.field public final synthetic a:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/d0;->a:Landroid/graphics/Rect;

    .line 3
    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/d0;->a:Landroid/graphics/Rect;

    .line 3
    return-object p1
.end method
