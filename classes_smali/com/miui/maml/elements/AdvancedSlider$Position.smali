.class Lcom/miui/maml/elements/AdvancedSlider$Position;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Position"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Position"


# instance fields
.field private mBaseX:Lcom/miui/maml/data/Expression;

.field private mBaseY:Lcom/miui/maml/data/Expression;

.field private mX:Lcom/miui/maml/data/Expression;

.field private mY:Lcom/miui/maml/data/Expression;

.field public final synthetic this$0:Lcom/miui/maml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$Position;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p4, p0, Lcom/miui/maml/elements/AdvancedSlider$Position;->mBaseX:Lcom/miui/maml/data/Expression;

    .line 8
    iput-object p5, p0, Lcom/miui/maml/elements/AdvancedSlider$Position;->mBaseY:Lcom/miui/maml/data/Expression;

    .line 10
    const-string p4, "x"

    .line 12
    invoke-virtual {p1, p3, p4}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p4

    .line 16
    invoke-static {p2, p4}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 19
    move-result-object p4

    .line 20
    iput-object p4, p0, Lcom/miui/maml/elements/AdvancedSlider$Position;->mX:Lcom/miui/maml/data/Expression;

    .line 22
    const-string p4, "y"

    .line 24
    invoke-virtual {p1, p3, p4}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$Position;->mY:Lcom/miui/maml/data/Expression;

    .line 34
    return-void
.end method


# virtual methods
.method public getX()F
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$Position;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 3
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$Position;->mX:Lcom/miui/maml/data/Expression;

    .line 5
    const-wide/16 v2, 0x0

    .line 7
    if-nez v1, :cond_a

    .line 9
    move-wide v4, v2

    .line 10
    goto :goto_e

    .line 11
    :cond_a
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 14
    move-result-wide v4

    .line 15
    :goto_e
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$Position;->mBaseX:Lcom/miui/maml/data/Expression;

    .line 17
    if-nez v1, :cond_13

    .line 19
    goto :goto_17

    .line 20
    :cond_13
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 23
    move-result-wide v2

    .line 24
    :goto_17
    add-double/2addr v4, v2

    .line 25
    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 28
    move-result v0

    .line 29
    return v0
.end method

.method public getY()F
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$Position;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 3
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$Position;->mY:Lcom/miui/maml/data/Expression;

    .line 5
    const-wide/16 v2, 0x0

    .line 7
    if-nez v1, :cond_a

    .line 9
    move-wide v4, v2

    .line 10
    goto :goto_e

    .line 11
    :cond_a
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 14
    move-result-wide v4

    .line 15
    :goto_e
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$Position;->mBaseY:Lcom/miui/maml/data/Expression;

    .line 17
    if-nez v1, :cond_13

    .line 19
    goto :goto_17

    .line 20
    :cond_13
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 23
    move-result-wide v2

    .line 24
    :goto_17
    add-double/2addr v4, v2

    .line 25
    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 28
    move-result v0

    .line 29
    return v0
.end method
