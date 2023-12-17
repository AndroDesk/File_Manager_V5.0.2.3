.class public abstract Lcom/miui/maml/elements/ScreenElement;
.super Ljava/lang/Object;
.source "ScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/ScreenElement$Align;,
        Lcom/miui/maml/elements/ScreenElement$AlignV;
    }
.end annotation


# static fields
.field public static final ACTUAL_H:Ljava/lang/String; = "actual_h"

.field public static final ACTUAL_W:Ljava/lang/String; = "actual_w"

.field public static final ACTUAL_X:Ljava/lang/String; = "actual_x"

.field public static final ACTUAL_Y:Ljava/lang/String; = "actual_y"

.field private static final LOG_TAG:Ljava/lang/String; = "MAML ScreenElement"

.field public static final VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final VISIBILITY_FALSE:I

.field public static final VISIBILITY_TRUE:I


# instance fields
.field private mActualHeightVar:Lcom/miui/maml/data/IndexedVariable;

.field private mActualWidthVar:Lcom/miui/maml/data/IndexedVariable;

.field public mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

.field public mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

.field public mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/animation/BaseAnimation;",
            ">;"
        }
    .end annotation
.end field

.field public mAvailableController:Lcom/miui/maml/RendererController;

.field public mCategory:Ljava/lang/String;

.field private mCurFramerate:F

.field private mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

.field public mHasName:Z

.field private mInitShow:Z

.field private mIsVisible:Z

.field public mName:Ljava/lang/String;

.field public mParent:Lcom/miui/maml/elements/ElementGroup;

.field public mResumed:Z

.field public mRoot:Lcom/miui/maml/ScreenElementRoot;

.field private mShow:Z

.field public mStyle:Lcom/miui/maml/StylesManager$Style;

.field public mTriggers:Lcom/miui/maml/CommandTriggers;

.field private mVisibilityExpression:Lcom/miui/maml/data/Expression;

.field private mVisibilityVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/miui/maml/elements/ScreenElement;->VISIBILITY_FALSE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/miui/maml/elements/ScreenElement;->VISIBILITY_TRUE:I

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mInitShow:Z

    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mShow:Z

    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mIsVisible:Z

    iput-object p2, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p1, :cond_1c

    if-eqz p2, :cond_1c

    const-string v0, "style"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/maml/ScreenElementRoot;->getStyle(Ljava/lang/String;)Lcom/miui/maml/StylesManager$Style;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/ScreenElement;->mStyle:Lcom/miui/maml/StylesManager$Style;

    :cond_1c
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public static isTagEnable([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    if-nez p0, :cond_a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11

    return v0

    :cond_a
    invoke-static {p0, p1}, Lcom/miui/maml/util/Utils;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    return v0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "category"

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mCategory:Ljava/lang/String;

    const-string v0, "name"

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    if-eqz v0, :cond_50

    const-string v0, "namesSuffix"

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    :cond_36
    const-string v0, "dontAddToMap"

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_50

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Lcom/miui/maml/ScreenElementRoot;->addElement(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    :cond_50
    const-string v0, "visibility"

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7d

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_68

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mInitShow:Z

    goto :goto_7d

    :cond_68
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    iput-boolean v1, p0, Lcom/miui/maml/elements/ScreenElement;->mInitShow:Z

    goto :goto_7d

    :cond_73
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mVisibilityExpression:Lcom/miui/maml/data/Expression;

    :cond_7d
    :goto_7d
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$Align;->LEFT:Lcom/miui/maml/elements/ScreenElement$Align;

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    const-string v1, "align"

    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_93

    const-string v1, "alignH"

    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_93
    const-string v2, "right"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "center"

    if-eqz v2, :cond_a2

    sget-object v0, Lcom/miui/maml/elements/ScreenElement$Align;->RIGHT:Lcom/miui/maml/elements/ScreenElement$Align;

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    goto :goto_b7

    :cond_a2
    const-string v2, "left"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ad

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    goto :goto_b7

    :cond_ad
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b7

    sget-object v0, Lcom/miui/maml/elements/ScreenElement$Align;->CENTER:Lcom/miui/maml/elements/ScreenElement$Align;

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    :cond_b7
    :goto_b7
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$AlignV;->TOP:Lcom/miui/maml/elements/ScreenElement$AlignV;

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    const-string v1, "alignV"

    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bottom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ce

    sget-object v0, Lcom/miui/maml/elements/ScreenElement$AlignV;->BOTTOM:Lcom/miui/maml/elements/ScreenElement$AlignV;

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    goto :goto_e3

    :cond_ce
    const-string v2, "top"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d9

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    goto :goto_e3

    :cond_d9
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e3

    sget-object v0, Lcom/miui/maml/elements/ScreenElement$AlignV;->CENTER:Lcom/miui/maml/elements/ScreenElement$AlignV;

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    :cond_e3
    :goto_e3
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->loadTriggers(Lorg/w3c/dom/Element;)V

    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->loadAnimations(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private loadAnimations(Lorg/w3c/dom/Element;)V
    .registers 4

    new-instance v0, Lcom/miui/maml/elements/ScreenElement$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/elements/ScreenElement$1;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    return-void
.end method

.method private setVisibilityVar(Z)V
    .registers 7

    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mVisibilityVar:Lcom/miui/maml/data/IndexedVariable;

    if-nez v0, :cond_25

    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v3, "."

    const-string v4, "visibility"

    invoke-static {v1, v2, v3, v4}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mVisibilityVar:Lcom/miui/maml/data/IndexedVariable;

    :cond_25
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mVisibilityVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p1, :cond_2c

    const-wide/high16 v1, 0x3ff0000000000000L  # 1.0

    goto :goto_2e

    :cond_2c
    const-wide/16 v1, 0x0

    :goto_2e
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_31
    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/miui/maml/elements/ScreenElementVisitor;->visit(Lcom/miui/maml/elements/ScreenElement;)V

    return-void
.end method

.method public createToken(Ljava/lang/String;)Lcom/miui/maml/FramerateTokenList$FramerateToken;
    .registers 3

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRendererController()Lcom/miui/maml/RendererController;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    invoke-virtual {v0, p1}, Lcom/miui/maml/RendererController;->createToken(Ljava/lang/String;)Lcom/miui/maml/FramerateTokenList$FramerateToken;

    move-result-object p1

    return-object p1
.end method

.method public final descale(D)D
    .registers 5

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result v0

    float-to-double v0, v0

    div-double/2addr p1, v0

    return-wide p1
.end method

.method public abstract doRender(Landroid/graphics/Canvas;)V
.end method

.method public doTick(J)V
    .registers 6

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/animation/BaseAnimation;->tick(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    return-void
.end method

.method public final evaluate(Lcom/miui/maml/data/Expression;)D
    .registers 4

    if-nez p1, :cond_5

    const-wide/16 v0, 0x0

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    :goto_9
    return-wide v0
.end method

.method public final evaluateStr(Lcom/miui/maml/data/Expression;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p1

    :goto_8
    return-object p1
.end method

.method public findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;
    .registers 3

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    move-object p1, p0

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return-object p1
.end method

.method public finish()V
    .registers 4

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->finish()V

    :cond_7
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_20

    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    invoke-virtual {v2}, Lcom/miui/maml/animation/BaseAnimation;->finish()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_20
    return-void
.end method

.method public getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mStyle:Lcom/miui/maml/StylesManager$Style;

    invoke-static {p1, p2, v0}, Lcom/miui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_f

    :try_start_a
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_f

    return p1

    :catch_f
    :cond_f
    return p3
.end method

.method public getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_f

    :try_start_a
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_f

    return p1

    :catch_f
    :cond_f
    return p3
.end method

.method public getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_f

    :try_start_a
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_f

    return-wide p1

    :catch_f
    :cond_f
    return-wide p3
.end method

.method public getContext()Lcom/miui/maml/ScreenContext;
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    return-object v0
.end method

.method public final getFramerate()F
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/miui/maml/FramerateTokenList$FramerateToken;->getFramerate()F

    move-result v0

    :goto_a
    return v0
.end method

.method public getLeft(FF)F
    .registers 5

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_6

    return p1

    :cond_6
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$2;->$SwitchMap$com$miui$maml$elements$ScreenElement$Align:[I

    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    goto :goto_1b

    :cond_17
    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p2, v0

    :cond_1a
    sub-float/2addr p1, p2

    :goto_1b
    return p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getNotifierManager()Lcom/miui/maml/NotifierManager;
    .registers 2

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/maml/NotifierManager;->getInstance(Landroid/content/Context;)Lcom/miui/maml/NotifierManager;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/miui/maml/elements/ElementGroup;
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    return-object v0
.end method

.method public getRendererController()Lcom/miui/maml/RendererController;
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getRendererController()Lcom/miui/maml/RendererController;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getRoot()Lcom/miui/maml/ScreenElementRoot;
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    return-object v0
.end method

.method public getTop(FF)F
    .registers 5

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_6

    return p1

    :cond_6
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$2;->$SwitchMap$com$miui$maml$elements$ScreenElement$AlignV:[I

    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    goto :goto_1b

    :cond_17
    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p2, v0

    :cond_1a
    sub-float/2addr p1, p2

    :goto_1b
    return p1
.end method

.method public final getVariables()Lcom/miui/maml/data/Variables;
    .registers 2

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    return-object v0
.end method

.method public init()V
    .registers 4

    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mInitShow:Z

    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mShow:Z

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

    if-eqz v0, :cond_b

    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->removeToken(Lcom/miui/maml/FramerateTokenList$FramerateToken;)V

    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/miui/maml/CommandTriggers;->init()V

    :cond_15
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_21
    if-ge v1, v0, :cond_31

    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    invoke-virtual {v2}, Lcom/miui/maml/animation/BaseAnimation;->init()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_31
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->updateVisibility()V

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->setVisibilityVar(Z)V

    const-string v0, "init"

    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    return-void
.end method

.method public isVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mIsVisible:Z

    return v0
.end method

.method public isVisibleInner()Z
    .registers 5

    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mShow:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mVisibilityExpression:Lcom/miui/maml/data/Expression;

    if-nez v0, :cond_9

    goto :goto_13

    :cond_9
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_20

    :goto_13
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    if-nez v0, :cond_18

    goto :goto_1e

    :cond_18
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_20

    :goto_1e
    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method public loadTriggers(Lorg/w3c/dom/Element;)V
    .registers 3

    const-string v0, "Triggers"

    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_f

    new-instance v0, Lcom/miui/maml/CommandTriggers;

    invoke-direct {v0, p1, p0}, Lcom/miui/maml/CommandTriggers;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    :cond_f
    return-void
.end method

.method public onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onSetAnimBefore()V
    .registers 1

    return-void
.end method

.method public onSetAnimEnable(Lcom/miui/maml/animation/BaseAnimation;)V
    .registers 2

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onVisibilityChange(Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->setVisibilityVar(Z)V

    if-nez p1, :cond_10

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getFramerate()F

    move-result p1

    iput p1, p0, Lcom/miui/maml/elements/ScreenElement;->mCurFramerate:F

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    goto :goto_15

    :cond_10
    iget p1, p0, Lcom/miui/maml/elements/ScreenElement;->mCurFramerate:F

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    :goto_15
    return-void
.end method

.method public pause()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mResumed:Z

    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/miui/maml/CommandTriggers;->pause()V

    :cond_a
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_12
    if-ge v0, v1, :cond_22

    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    invoke-virtual {v2}, Lcom/miui/maml/animation/BaseAnimation;->pause()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_22
    return-void
.end method

.method public final pauseAnim()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->pauseAnim(J)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    return-void
.end method

.method public pauseAnim(J)V
    .registers 6

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/animation/BaseAnimation;->pauseAnim(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    return-void
.end method

.method public performAction(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    invoke-virtual {v0, p1}, Lcom/miui/maml/CommandTriggers;->onAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    :cond_c
    return-void
.end method

.method public final playAnim()V
    .registers 8

    const-wide/16 v1, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJZZ)V

    return-void
.end method

.method public playAnim(JJJZZ)V
    .registers 22

    move-object v0, p0

    iget-object v1, v0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_24

    iget-object v3, v0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/miui/maml/animation/BaseAnimation;

    move-wide v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-virtual/range {v4 .. v12}, Lcom/miui/maml/animation/BaseAnimation;->playAnim(JJJZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_24
    return-void
.end method

.method public final playAnim(JJZZ)V
    .registers 18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    move-object v0, p0

    move-wide v1, v9

    move-wide v3, p1

    move-wide v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    invoke-virtual {p0, v9, v10}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    return-void
.end method

.method public final postInMainThread(Ljava/lang/Runnable;)V
    .registers 3

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getRendererController()Lcom/miui/maml/RendererController;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lcom/miui/maml/RendererController;->postRunnable(Ljava/lang/Runnable;)V

    :cond_b
    return-void
.end method

.method public postRunnableAtFrontOfQueue(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getRendererController()Lcom/miui/maml/RendererController;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lcom/miui/maml/RendererController;->postRunnableAtFrontOfQueue(Ljava/lang/Runnable;)V

    :cond_b
    return-void
.end method

.method public removeToken(Lcom/miui/maml/FramerateTokenList$FramerateToken;)V
    .registers 3

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRendererController()Lcom/miui/maml/RendererController;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/miui/maml/RendererController;->removeToken(Lcom/miui/maml/FramerateTokenList$FramerateToken;)V

    :cond_9
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->updateVisibility()V

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->doRender(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final requestFramerate(F)V
    .registers 5

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_6

    return-void

    :cond_6
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

    if-nez v1, :cond_19

    cmpl-float v0, p1, v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->createToken(Ljava/lang/String;)Lcom/miui/maml/FramerateTokenList$FramerateToken;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

    :cond_19
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getSystemFrameRate()F

    move-result v0

    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

    cmpg-float v2, p1, v0

    if-gtz v2, :cond_2a

    goto :goto_2b

    :cond_2a
    move p1, v0

    :goto_2b
    invoke-virtual {v1, p1}, Lcom/miui/maml/FramerateTokenList$FramerateToken;->requestFramerate(F)V

    :cond_2e
    return-void
.end method

.method public requestUpdate()V
    .registers 2

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRendererController()Lcom/miui/maml/RendererController;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/miui/maml/RendererController;->forceUpdate()V

    :cond_9
    return-void
.end method

.method public final reset()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->reset(J)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    return-void
.end method

.method public reset(J)V
    .registers 6

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/animation/BaseAnimation;->reset(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    return-void
.end method

.method public resume()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mResumed:Z

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->resume()V

    :cond_a
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_23

    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    invoke-virtual {v2}, Lcom/miui/maml/animation/BaseAnimation;->resume()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_23
    return-void
.end method

.method public final resumeAnim()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->resumeAnim(J)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    return-void
.end method

.method public resumeAnim(J)V
    .registers 6

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/animation/BaseAnimation;->resumeAnim(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    return-void
.end method

.method public final scale(D)F
    .registers 5

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr p1, v0

    double-to-float p1, p1

    return p1
.end method

.method public setActualHeight(D)V
    .registers 8

    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mActualHeightVar:Lcom/miui/maml/data/IndexedVariable;

    if-nez v0, :cond_24

    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v3, "."

    const-string v4, "actual_h"

    invoke-static {v1, v2, v3, v4}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mActualHeightVar:Lcom/miui/maml/data/IndexedVariable;

    :cond_24
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mActualHeightVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    return-void
.end method

.method public setActualWidth(D)V
    .registers 8

    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mActualWidthVar:Lcom/miui/maml/data/IndexedVariable;

    if-nez v0, :cond_24

    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v3, "."

    const-string v4, "actual_w"

    invoke-static {v1, v2, v3, v4}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mActualWidthVar:Lcom/miui/maml/data/IndexedVariable;

    :cond_24
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mActualWidthVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    return-void
.end method

.method public setAnim([Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->onSetAnimBefore()V

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_2d

    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    invoke-virtual {v2}, Lcom/miui/maml/animation/BaseAnimation;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/miui/maml/elements/ScreenElement;->isTagEnable([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v4}, Lcom/miui/maml/animation/BaseAnimation;->setDisable(Z)V

    if-eqz v3, :cond_2a

    invoke-virtual {p0, v2}, Lcom/miui/maml/elements/ScreenElement;->onSetAnimEnable(Lcom/miui/maml/animation/BaseAnimation;)V

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_2d
    return-void
.end method

.method public final setAnimations(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "."

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_16

    :cond_f
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p1, 0x0

    :goto_17
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->removeElement(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/maml/ScreenElementRoot;->addElement(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public setParent(Lcom/miui/maml/elements/ElementGroup;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    return-void
.end method

.method public show(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/maml/elements/ScreenElement;->mShow:Z

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->updateVisibility()V

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .registers 4

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mCategory:Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0, p2}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    :cond_d
    return-void
.end method

.method public tick(J)V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->updateVisibility()V

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    return-void
.end method

.method public updateVisibility()V
    .registers 3

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisibleInner()Z

    move-result v0

    iget-boolean v1, p0, Lcom/miui/maml/elements/ScreenElement;->mIsVisible:Z

    if-eq v1, v0, :cond_16

    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mIsVisible:Z

    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->onVisibilityChange(Z)V

    if-eqz v0, :cond_16

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    :cond_16
    return-void
.end method
