.class Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;
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
    name = "InnerViewTouchListener"
.end annotation


# instance fields
.field private mTouchMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lmiuix/animation/controller/FolmeTouch;",
            "[",
            "Lmiuix/animation/base/AnimConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;->mTouchMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/animation/controller/FolmeTouch$1;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs addTouch(Lmiuix/animation/controller/FolmeTouch;[Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;->mTouchMap:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;->mTouchMap:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_26

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lmiuix/animation/controller/FolmeTouch;

    .line 29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, [Lmiuix/animation/base/AnimConfig;

    .line 35
    invoke-static {v2, p1, p2, v1}, Lmiuix/animation/controller/FolmeTouch;->access$700(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 38
    goto :goto_a

    .line 39
    :cond_26
    const/4 p1, 0x0

    .line 40
    return p1
.end method

.method public removeTouch(Lmiuix/animation/controller/FolmeTouch;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;->mTouchMap:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;->mTouchMap:Ljava/util/WeakHashMap;

    .line 8
    invoke-virtual {p1}, Ljava/util/WeakHashMap;->isEmpty()Z

    .line 11
    move-result p1

    .line 12
    return p1
.end method
