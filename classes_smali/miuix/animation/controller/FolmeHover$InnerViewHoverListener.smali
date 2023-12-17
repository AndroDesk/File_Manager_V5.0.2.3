.class Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;
.super Ljava/lang/Object;
.source "FolmeHover.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/controller/FolmeHover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InnerViewHoverListener"
.end annotation


# instance fields
.field private mHoverMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lmiuix/animation/controller/FolmeHover;",
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

    iput-object v0, p0, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;->mHoverMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/animation/controller/FolmeHover$1;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;-><init>()V

    return-void
.end method

.method private getHoverTranslationXTag(Landroid/view/View;)F
    .registers 4

    .line 1
    sget v0, Lmiuix/folme/R$id;->miuix_animation_tag_hover_set_translation_x:I

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    instance-of v1, v1, Ljava/lang/Float;

    .line 9
    if-eqz v1, :cond_15

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Float;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_15
    const/4 p1, 0x0

    .line 23
    return p1
.end method


# virtual methods
.method public varargs addHover(Lmiuix/animation/controller/FolmeHover;[Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;->mHoverMap:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;->mHoverMap:Ljava/util/WeakHashMap;

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
    if-eqz v1, :cond_41

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
    check-cast v2, Lmiuix/animation/controller/FolmeHover;

    .line 29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, [Lmiuix/animation/base/AnimConfig;

    .line 35
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 38
    move-result v3

    .line 39
    const/16 v4, 0x9

    .line 41
    if-ne v3, v4, :cond_3d

    .line 43
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;->getHoverTranslationXTag(Landroid/view/View;)F

    .line 46
    move-result v3

    .line 47
    invoke-static {v2}, Lmiuix/animation/controller/FolmeHover;->access$100(Lmiuix/animation/controller/FolmeHover;)F

    .line 50
    move-result v4

    .line 51
    cmpl-float v3, v3, v4

    .line 53
    if-eqz v3, :cond_3d

    .line 55
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;->getHoverTranslationXTag(Landroid/view/View;)F

    .line 58
    move-result v3

    .line 59
    invoke-static {v2, v3}, Lmiuix/animation/controller/FolmeHover;->access$102(Lmiuix/animation/controller/FolmeHover;F)F

    .line 62
    :cond_3d
    invoke-static {v2, p1, p2, v1}, Lmiuix/animation/controller/FolmeHover;->access$200(Lmiuix/animation/controller/FolmeHover;Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 65
    goto :goto_a

    .line 66
    :cond_41
    const/4 p1, 0x0

    .line 67
    return p1
.end method

.method public removeHover(Lmiuix/animation/controller/FolmeHover;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;->mHoverMap:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;->mHoverMap:Ljava/util/WeakHashMap;

    .line 8
    invoke-virtual {p1}, Ljava/util/WeakHashMap;->isEmpty()Z

    .line 11
    move-result p1

    .line 12
    return p1
.end method
