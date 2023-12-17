.class public Lmiuix/navigator/draganddrop/DragOnTrigger;
.super Ljava/lang/Object;
.source "DragOnTrigger.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# instance fields
.field private final mDelay:J

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 4

    const-wide/16 v0, 0x1f4

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lmiuix/navigator/draganddrop/DragOnTrigger;-><init>(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;J)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lmiuix/navigator/draganddrop/DragOnTrigger;->mRunnable:Ljava/lang/Runnable;

    .line 4
    iput-wide p2, p0, Lmiuix/navigator/draganddrop/DragOnTrigger;->mDelay:J

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 6

    .line 1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p2, v0, :cond_1c

    .line 8
    const/4 v1, 0x5

    .line 9
    if-eq p2, v1, :cond_15

    .line 11
    const/4 v1, 0x6

    .line 12
    if-eq p2, v1, :cond_f

    .line 14
    const/4 p1, 0x0

    .line 15
    return p1

    .line 16
    :cond_f
    iget-object p2, p0, Lmiuix/navigator/draganddrop/DragOnTrigger;->mRunnable:Ljava/lang/Runnable;

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 21
    return v0

    .line 22
    :cond_15
    iget-object p2, p0, Lmiuix/navigator/draganddrop/DragOnTrigger;->mRunnable:Ljava/lang/Runnable;

    .line 24
    iget-wide v1, p0, Lmiuix/navigator/draganddrop/DragOnTrigger;->mDelay:J

    .line 26
    invoke-virtual {p1, p2, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    :cond_1c
    return v0
.end method
