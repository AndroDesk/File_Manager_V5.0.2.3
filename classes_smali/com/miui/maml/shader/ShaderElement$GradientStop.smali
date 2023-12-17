.class public final Lcom/miui/maml/shader/ShaderElement$GradientStop;
.super Ljava/lang/Object;
.source "ShaderElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/shader/ShaderElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GradientStop"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "GradientStop"


# instance fields
.field private mColorParser:Lcom/miui/maml/util/ColorParser;

.field private mPositionExp:Lcom/miui/maml/data/Expression;

.field public final synthetic this$0:Lcom/miui/maml/shader/ShaderElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/shader/ShaderElement;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/miui/maml/shader/ShaderElement$GradientStop;->this$0:Lcom/miui/maml/shader/ShaderElement;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget-object p3, p1, Lcom/miui/maml/shader/ShaderElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 8
    invoke-virtual {p3}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 11
    move-result-object p3

    .line 12
    invoke-static {p3, p2}, Lcom/miui/maml/util/ColorParser;->fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;)Lcom/miui/maml/util/ColorParser;

    .line 15
    move-result-object p3

    .line 16
    iput-object p3, p0, Lcom/miui/maml/shader/ShaderElement$GradientStop;->mColorParser:Lcom/miui/maml/util/ColorParser;

    .line 18
    iget-object p1, p1, Lcom/miui/maml/shader/ShaderElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 20
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 23
    move-result-object p1

    .line 24
    const-string p3, "position"

    .line 26
    invoke-interface {p2, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p2

    .line 30
    invoke-static {p1, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/miui/maml/shader/ShaderElement$GradientStop;->mPositionExp:Lcom/miui/maml/data/Expression;

    .line 36
    if-nez p1, :cond_2c

    .line 38
    const-string p1, "GradientStop"

    .line 40
    const-string p2, "lost position attribute."

    .line 42
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_2c
    return-void
.end method


# virtual methods
.method public getColor()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStop;->mColorParser:Lcom/miui/maml/util/ColorParser;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/util/ColorParser;->getColor()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getPosition()F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStop;->mPositionExp:Lcom/miui/maml/data/Expression;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 6
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    return v0
.end method
