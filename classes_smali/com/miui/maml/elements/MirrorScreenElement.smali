.class public Lcom/miui/maml/elements/MirrorScreenElement;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "MirrorScreenElement.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MirrorScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Mirror"


# instance fields
.field private mMirrorTranslation:Z

.field private mTarget:Lcom/miui/maml/elements/ScreenElement;

.field private mTargetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    const-string p2, "target"

    .line 6
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p2

    .line 10
    iput-object p2, p0, Lcom/miui/maml/elements/MirrorScreenElement;->mTargetName:Ljava/lang/String;

    .line 12
    const-string p2, "mirrorTranslation"

    .line 14
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 21
    move-result p1

    .line 22
    iput-boolean p1, p0, Lcom/miui/maml/elements/MirrorScreenElement;->mMirrorTranslation:Z

    .line 24
    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MirrorScreenElement;->mTarget:Lcom/miui/maml/elements/ScreenElement;

    .line 3
    if-eqz v0, :cond_15

    .line 5
    iget-boolean v1, p0, Lcom/miui/maml/elements/MirrorScreenElement;->mMirrorTranslation:Z

    .line 7
    if-eqz v1, :cond_12

    .line 9
    instance-of v1, v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 11
    if-eqz v1, :cond_12

    .line 13
    check-cast v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 15
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->doRenderWithTranslation(Landroid/graphics/Canvas;)V

    .line 18
    goto :goto_15

    .line 19
    :cond_12
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/ScreenElement;->doRender(Landroid/graphics/Canvas;)V

    .line 22
    :cond_15
    :goto_15
    return-void
.end method

.method public init()V
    .registers 4

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->init()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 6
    iget-object v1, p0, Lcom/miui/maml/elements/MirrorScreenElement;->mTargetName:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/miui/maml/elements/MirrorScreenElement;->mTarget:Lcom/miui/maml/elements/ScreenElement;

    .line 14
    if-nez v0, :cond_1c

    .line 16
    const-string v0, "the target does not exist: "

    .line 18
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/miui/maml/elements/MirrorScreenElement;->mTargetName:Ljava/lang/String;

    .line 24
    const-string v2, "MirrorScreenElement"

    .line 26
    invoke-static {v0, v1, v2}, La/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_1c
    return-void
.end method
