.class public final Landroidx/constraintlayout/motion/widget/MotionLayout$a;
.super Ljava/lang/Object;
.source "MotionLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/motion/widget/MotionLayout;->loadLayoutDescription(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/constraintlayout/motion/widget/MotionLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$a;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$a;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 3
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 5
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a()V

    .line 8
    return-void
.end method
