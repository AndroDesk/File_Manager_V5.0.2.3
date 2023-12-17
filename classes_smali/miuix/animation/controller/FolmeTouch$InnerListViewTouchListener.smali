.class Lmiuix/animation/controller/FolmeTouch$InnerListViewTouchListener;
.super Ljava/lang/Object;
.source "FolmeTouch.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/controller/FolmeTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InnerListViewTouchListener"
.end annotation


# instance fields
.field private mConfigs:[Lmiuix/animation/base/AnimConfig;

.field private mFolmeTouchRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/animation/controller/FolmeTouch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lmiuix/animation/controller/FolmeTouch;[Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lmiuix/animation/controller/FolmeTouch$InnerListViewTouchListener;->mFolmeTouchRef:Ljava/lang/ref/WeakReference;

    .line 11
    iput-object p2, p0, Lmiuix/animation/controller/FolmeTouch$InnerListViewTouchListener;->mConfigs:[Lmiuix/animation/base/AnimConfig;

    .line 13
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch$InnerListViewTouchListener;->mFolmeTouchRef:Ljava/lang/ref/WeakReference;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_c

    .line 7
    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lmiuix/animation/controller/FolmeTouch;

    .line 13
    :goto_c
    if-eqz v0, :cond_1b

    .line 15
    if-nez p2, :cond_16

    .line 17
    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch$InnerListViewTouchListener;->mConfigs:[Lmiuix/animation/base/AnimConfig;

    .line 19
    invoke-static {v0, p1}, Lmiuix/animation/controller/FolmeTouch;->access$600(Lmiuix/animation/controller/FolmeTouch;[Lmiuix/animation/base/AnimConfig;)V

    .line 22
    goto :goto_1b

    .line 23
    :cond_16
    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch$InnerListViewTouchListener;->mConfigs:[Lmiuix/animation/base/AnimConfig;

    .line 25
    invoke-static {v0, p1, p2, v1}, Lmiuix/animation/controller/FolmeTouch;->access$700(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 28
    :cond_1b
    :goto_1b
    const/4 p1, 0x0

    .line 29
    return p1
.end method
