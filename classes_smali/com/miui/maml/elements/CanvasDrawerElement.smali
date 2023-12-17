.class public Lcom/miui/maml/elements/CanvasDrawerElement;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "CanvasDrawerElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "CanvasDrawer"


# instance fields
.field private mCanvasVar:Lcom/miui/maml/data/IndexedVariable;

.field private mDrawCommands:Lcom/miui/maml/CommandTrigger;

.field private mHVar:Lcom/miui/maml/data/IndexedVariable;

.field private mWVar:Lcom/miui/maml/data/IndexedVariable;

.field private mXVar:Lcom/miui/maml/data/IndexedVariable;

.field private mYVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 6
    if-eqz p1, :cond_f

    .line 8
    const-string p2, "draw"

    .line 10
    invoke-virtual {p1, p2}, Lcom/miui/maml/CommandTriggers;->find(Ljava/lang/String;)Lcom/miui/maml/CommandTrigger;

    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mDrawCommands:Lcom/miui/maml/CommandTrigger;

    .line 16
    :cond_f
    iget-object p1, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mDrawCommands:Lcom/miui/maml/CommandTrigger;

    .line 18
    if-nez p1, :cond_1a

    .line 20
    const-string p1, "CanvasDrawer"

    .line 22
    const-string p2, "no draw commands."

    .line 24
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_1a
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 30
    move-result-object p1

    .line 31
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 33
    const-string v0, "__x"

    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-direct {p2, v0, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 39
    iput-object p2, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mXVar:Lcom/miui/maml/data/IndexedVariable;

    .line 41
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 43
    const-string v0, "__y"

    .line 45
    invoke-direct {p2, v0, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 48
    iput-object p2, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mYVar:Lcom/miui/maml/data/IndexedVariable;

    .line 50
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 52
    const-string v0, "__w"

    .line 54
    invoke-direct {p2, v0, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 57
    iput-object p2, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mWVar:Lcom/miui/maml/data/IndexedVariable;

    .line 59
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 61
    const-string v0, "__h"

    .line 63
    invoke-direct {p2, v0, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 66
    iput-object p2, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mHVar:Lcom/miui/maml/data/IndexedVariable;

    .line 68
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 70
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 73
    move-result-object p2

    .line 74
    const/4 v0, 0x0

    .line 75
    const-string v1, "__objCanvas"

    .line 77
    invoke-direct {p1, v1, p2, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 80
    iput-object p1, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mCanvasVar:Lcom/miui/maml/data/IndexedVariable;

    .line 82
    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mDrawCommands:Lcom/miui/maml/CommandTrigger;

    .line 3
    if-eqz v0, :cond_3d

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidthRaw()F

    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeightRaw()F

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p0, v2, v0}, Lcom/miui/maml/elements/ScreenElement;->getLeft(FF)F

    .line 17
    move-result v3

    .line 18
    invoke-virtual {p0, v2, v1}, Lcom/miui/maml/elements/ScreenElement;->getTop(FF)F

    .line 21
    move-result v2

    .line 22
    iget-object v4, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mXVar:Lcom/miui/maml/data/IndexedVariable;

    .line 24
    float-to-double v5, v3

    .line 25
    invoke-virtual {v4, v5, v6}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 28
    iget-object v3, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mYVar:Lcom/miui/maml/data/IndexedVariable;

    .line 30
    float-to-double v4, v2

    .line 31
    invoke-virtual {v3, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 34
    iget-object v2, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mWVar:Lcom/miui/maml/data/IndexedVariable;

    .line 36
    float-to-double v3, v0

    .line 37
    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 40
    iget-object v0, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mHVar:Lcom/miui/maml/data/IndexedVariable;

    .line 42
    float-to-double v1, v1

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 46
    iget-object v0, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mCanvasVar:Lcom/miui/maml/data/IndexedVariable;

    .line 48
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 51
    iget-object p1, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mDrawCommands:Lcom/miui/maml/CommandTrigger;

    .line 53
    invoke-virtual {p1}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 56
    iget-object p1, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mCanvasVar:Lcom/miui/maml/data/IndexedVariable;

    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 62
    :cond_3d
    return-void
.end method
