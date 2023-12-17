.class public Lmiuix/navigator/draganddrop/DragOnTrigger;
.super Ljava/lang/Object;
.source "DragOnTrigger.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# instance fields
.field private final mDelay:J

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 4

    const-wide/16 v0, 0x1f4

    invoke-direct {p0, p1, v0, v1}, Lmiuix/navigator/draganddrop/DragOnTrigger;-><init>(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/navigator/draganddrop/DragOnTrigger;->mRunnable:Ljava/lang/Runnable;

    iput-wide p2, p0, Lmiuix/navigator/draganddrop/DragOnTrigger;->mDelay:J

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 6

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1c

    const/4 v1, 0x5

    if-eq p2, v1, :cond_15

    const/4 v1, 0x6

    if-eq p2, v1, :cond_f

    const/4 p1, 0x0

    return p1

    :cond_f
    iget-object p2, p0, Lmiuix/navigator/draganddrop/DragOnTrigger;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return v0

    :cond_15
    iget-object p2, p0, Lmiuix/navigator/draganddrop/DragOnTrigger;->mRunnable:Ljava/lang/Runnable;

    iget-wide v1, p0, Lmiuix/navigator/draganddrop/DragOnTrigger;->mDelay:J

    invoke-virtual {p1, p2, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1c
    return v0
.end method
