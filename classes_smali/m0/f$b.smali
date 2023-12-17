.class public final Lm0/f$b;
.super Ljava/lang/Object;
.source "GestureDetectorCompat.java"

# interfaces
.implements Lm0/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/f$f;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/view/GestureDetector;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p1, p2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 10
    iput-object v0, p0, Lm0/f$b;->a:Landroid/view/GestureDetector;

    .line 12
    return-void
.end method


# virtual methods
.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm0/f$b;->a:Landroid/view/GestureDetector;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 6
    return-void
.end method
